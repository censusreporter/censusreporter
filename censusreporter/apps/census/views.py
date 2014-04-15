from __future__ import division
import requests
from collections import OrderedDict
from urllib2 import unquote

from django.conf import settings
from django.db.models import Q
from django.http import HttpResponse, Http404, HttpResponseBadRequest
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.views.generic import View, TemplateView

from api import LocationNotFound
from api.controller import (get_census_profile, get_geography, get_locations,
                            get_elections_profile)

from .models import Geography, Table, Column
from .utils import (LazyEncoder, get_ratio, SUMMARY_LEVEL_DICT, NLTK_STOPWORDS,
                    TOPIC_FILTERS, SUMLEV_CHOICES)

import logging
logger = logging.getLogger(__name__)


### UTILS ###

def render_json_to_response(context):
    '''
    Utility method for rendering a view's data to JSON response.
    '''
    result = simplejson.dumps(context, sort_keys=False, indent=4)
    return HttpResponse(result, mimetype='application/javascript')

def find_key(dictionary, searchkey):
    stack = [dictionary]
    while stack:
        d = stack.pop()
        if searchkey in d:
            return d[searchkey]
        for key, value in d.iteritems():
            if isinstance(value, dict) or isinstance(value, OrderedDict):
                stack.append(value)

def find_keys(dictionary, searchkey):
    stack = [dictionary]
    values_list = []
    while stack:
        d = stack.pop()
        if searchkey in d:
            values_list.append(d[searchkey])
        for key, value in d.iteritems():
            if isinstance(value, dict) or isinstance(value, OrderedDict):
                stack.append(value)

    return values_list

def find_dicts_with_key(dictionary, searchkey):
    stack = [dictionary]
    dict_list = []
    while stack:
        d = stack.pop()
        if searchkey in d:
            dict_list.append(d)
        for key, value in d.iteritems():
            if isinstance(value, dict) or isinstance(value, OrderedDict):
                stack.append(value)

    return dict_list


### DETAIL ###

class GeographyDetailView(TemplateView):
    template_name = 'profile/profile.html'

    def enhance_api_data(self, api_data):
        dict_list = find_dicts_with_key(api_data, 'values')
        
        for d in dict_list:
            values = d['values']
            geo_value = values['this']

            # add the context value to `values` dict
            for sumlevel in ['province', 'country']:
                if sumlevel in values:
                    values[sumlevel+'_index'] = get_ratio(geo_value, values[sumlevel])

        return api_data

    def get_context_data(self, *args, **kwargs):
        geography_id = kwargs['geography_id']

        page_context = {
            'state_fips_code': None,
            'geography_fips_code': None
        }

        if 'US' in geography_id:
            geoIDcomponents = geography_id.split('US')

            sumlev = geoIDcomponents[0][:3]
            page_context['sumlev'] = sumlev

            fips_code = geoIDcomponents[1]
            if len(fips_code) >= 2:
                state_fips = fips_code[:2]
                page_context['state_fips_code'] = state_fips
                page_context['state_geoid'] = '04000US%s' % state_fips

            if sumlev == '050' and len(fips_code) == 5:
                page_context['county_fips_code'] = fips_code

        # hit our API
        #acs_endpoint = settings.API_URL + '/1.0/%s/%s/profile' % (acs_release, kwargs['geography_id'])
        #acs_endpoint = settings.API_URL + '/1.0/latest/%s/profile' % kwargs['geography_id']
        #r = requests.get(acs_endpoint)

        #if r.status_code == 200:
        try:
            geo_level, geo_code = geography_id.split('-')

            geo = get_geography(geo_code, geo_level)
            profile_data = get_census_profile(geo_code, geo_level)
            profile_data['elections'] = get_elections_profile(geo_code, geo_level)
        except (ValueError, LocationNotFound):
            raise Http404
        #profile_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        profile_data = self.enhance_api_data(profile_data)
        page_context['geography'] = geo
        page_context.update(profile_data)
        page_context.update({
            'profile_data_json': SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))
        })
        #else:
        #    raise Http404

        # Put this down here to make sure geoid is valid before using it
        page_context['geoid'] = geography_id

        #tiger_release = 'tiger2012'
        #geo_endpoint = settings.API_URL + '/1.0/geo/%s/%s' % (tiger_release, kwargs['geography_id'])
        #r = requests.get(geo_endpoint)

        #if r.status_code == 200:
        #    geo_metadata = simplejson.loads(r.text)['properties']
        #    page_context['geo_metadata'] = geo_metadata

            # add a few last things
            # make square miles http://www.census.gov/geo/www/geo_defn.html#AreaMeasurement
        #    square_miles = round(float(geo_metadata['aland']) / float(2589988), 1)
        #    total_pop = page_context['geography']['this']['total_population']
        #    page_context['geo_metadata']['square_miles'] = square_miles
        #    page_context['geo_metadata']['population_density'] = round(float(total_pop) / float(square_miles), 1)

        return page_context


class HomepageView(TemplateView):
    template_name = 'homepage.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'topic_demographic_filters': TOPIC_FILTERS['Demographics'],
            'topic_economic_filters': TOPIC_FILTERS['Economics'],
            'topic_family_filters': TOPIC_FILTERS['Families'],
            'topic_housing_filters': TOPIC_FILTERS['Housing'],
            'topic_social_filters': TOPIC_FILTERS['Social'],
            'sumlev_choices': SUMLEV_CHOICES,
            'sumlev_standard_choices': SUMLEV_CHOICES['Standard'],
            'sumlev_legislative_choices': SUMLEV_CHOICES['Legislative'],
            'sumlev_school_choices': SUMLEV_CHOICES['Schools'],
        }

        return page_context


class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        if 'q' in request.GET:
            search_term = request.GET['q']
            geo_level = request.GET.get('geolevel', None)
            return render_json_to_response(
                {'results': get_locations(search_term, geo_level)}
            )

        return HttpResponseBadRequest('"q" parameter is required')


## LOCAL DEV VERSION OF API ##


class TableSearchJson(View):
    def format_result(self, obj, obj_type):
        table_id = obj.get('table_id', None) or obj.get('parent_table_id', None)
        table_name = obj.get('table_name', None) or obj.get('table__table_name', None)
        table_topics = obj.get('topics', None) or obj.get('table__topics', None)
        table_universe = obj.get('table_universe', None) or obj.get('table__table_universe', None)

        result = OrderedDict()
        result['type'] = obj_type
        result['table_id'] = table_id
        result['table_name'] = table_name
        result['topics'] = table_topics
        result['universe'] = table_name
        result['unique_key'] = table_id
        #result['tokens'] = [word.lower().strip("() ") for word in table_name.split(' ') if word.lower() not in NLTK_STOPWORDS]

        if obj_type == 'column':
            result['column_id'] = obj['column_id']
            result['column_name'] = obj['column_name']
            result['unique_key'] = '%s|%s' % (table_id, obj['column_id'])

        return result

    def get(self, request, *args, **kwargs):
        results = []
        # allow choice of release, default to 2011 1-year
        release = self.request.GET.get('release', 'ACS 2011 1-Year')

        # comparison query builder throws a search term here,
        # so force it to look at just one release
        q = self.request.GET.get('q', None)
        topics = self.request.GET.get('topics', None)
        tables = Table.objects.filter(release = release)
        columns = Column.objects.filter(table__release = release)

        if q:
            q = q.strip()
            if q == '*':
                columns = None
            else:
                tables = tables.filter(Q(table_name__icontains = q) | Q(table_id__icontains = q))
                columns = columns.filter(Q(column_name__icontains = q) | Q(column_id = q) | Q(table__table_id = q))
        else:
            # only fetch tables on unfiltered query
            columns = None

        if topics:
            topic_list = unquote(topics).split(',')
            for topic in topic_list:
                tables = tables.filter(topics__contains = topic)
                if columns:
                    columns = columns.filter(table__topics__contains = topics)

        # short-circuit if just requesting a count
        count = self.request.GET.get('count', None)
        if count == 'tables':
            return render_json_to_response({'count': tables.count()})

        tables = tables.extra(select={'length':'Length(table_id)'}).extra(order_by=['length', 'table_id'])
        tables = tables.values('table_id','table_name','topics','length')
        tables_list = [self.format_result(table, 'table') for table in list(tables)]
        results.extend(tables_list)

        if columns:
            columns = columns.values('parent_table_id','table__table_name','table__topics','column_id','column_name')
            columns_list = [self.format_result(column, 'column') for column in list(columns)]
            results.extend(columns_list)

        table = self.request.GET.get('table', None)
        if table:
            tables = tables.filter(table_name__icontains=table).values()
            results['tables'] = list(tables)

        column = self.request.GET.get('column', None)
        if column:
            columns = columns.filter(column_name__icontains=column).values()
            columns = columns.only('table', 'parent_table_id', 'column_name', 'column_id')
            results['columns'] = list(columns)

        return render_json_to_response(results)

class TableSearch(TemplateView):
    template_name = 'search/table_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2011 1-Year', 'ACS 2011 3-Year', 'ACS 2011 5-Year']
        }
        tables = None
        columns = None

        q = self.request.GET.get('q', None)
        if q:
            page_context['q'] = q
            tables = Table.objects.filter(Q(table_name__icontains = q) | Q(table_id__icontains = q))
            columns = Column.objects.filter(Q(column_name__icontains = q) | Q(column_id = q) | Q(table__table_id = q))

        table = self.request.GET.get('table', None)
        if table:
            page_context['q'] = table
            tables = Table.objects.filter(table_id = table)
            columns = Column.objects.filter(table__table_id = table)

        column = self.request.GET.get('column', None)
        if column:
            page_context['q'] = column
            columns = Column.objects.filter(column_id = column)

        release = self.request.GET.get('release', None)
        if release:
            page_context['release'] = release
            tables = tables.filter(release = release)
            columns = columns.filter(table__release = release)

        page_context['tables'] = tables
        page_context['columns'] = columns

        return page_context

class GeoSearch(TemplateView):
    template_name = 'search/geo_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2011 1-Year', 'ACS 2011 3-Year', 'ACS 2011 5-Year']
        }
        tables = None
        columns = None

class LocateView(TemplateView):
    template_name = 'locate/locate.html'

    def get_api_data(self, lat, lon):
        '''
        Retrieves data from the comparison endpoint at api.censusreporter.org.
        '''
        API_ENDPOINT = settings.API_URL + '/1.0/geo/search'
        API_PARAMS = {
            'lat': lat,
            'lon': lon,
            'sumlevs': '010,020,030,040,050,060,140,160,250,310,400,500,610,620,860,950,960,970'
        }

        r = requests.get(API_ENDPOINT, params=API_PARAMS)

        if r.status_code == 200:
            data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        else:
            raise Http404

        return data['results']

    def get_context_data(self, *args, **kwargs):
        page_context = {}
        lat = self.request.GET.get('lat', None)
        lon = self.request.GET.get('lon', None)

        if lat and lon:
            places = self.get_api_data(lat, lon)
            for place in places:
                place['sumlev_name'] = SUMMARY_LEVEL_DICT[place['sumlevel']]['name']

            page_context.update({
                'location': {
                    'lat': lat,
                    'lon': lon
                },
                'places': places
            })

        return page_context
