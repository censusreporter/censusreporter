from __future__ import division
import requests
import json
from collections import OrderedDict
from numpy import median
from urllib2 import unquote

from django.db.models import Q
from django.http import HttpResponse, Http404
from django.shortcuts import get_object_or_404
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.views.generic import View, TemplateView

from .models import Geography, Table, Column, SummaryLevel
from .utils import LazyEncoder, get_max_value, get_ratio, get_object_or_none, SUMMARY_LEVEL_DICT, NLTK_STOPWORDS

import logging
logger = logging.getLogger(__name__)

### DETAIL ###

class GeographyDetailView(TemplateView):
    template_name = 'profile.html'

    def calculate_indexes(self, api_data):
        for category, groupings in api_data.items():
            if category != 'geography':
                for group, group_values in groupings.items():
                    for data, data_values in group_values.items():
                        values = data_values['values']
                        geo_value = values['this']
                        if values['county']:
                            values['county_index'] = get_ratio(geo_value, values['county'])
                        if values['state']:
                            values['state_index'] = get_ratio(geo_value, values['state'])
                        if values['nation']:
                            values['nation_index'] = get_ratio(geo_value, values['nation'])

        return api_data

    def get_context_data(self, *args, **kwargs):
        geography_id = kwargs['geography_id']

        page_context = {
            'state_fips_code': None,
            'geography_fips_code': None
        }

        acs_release = 'acs2011_5yr'

        if 'US' in geography_id:
            geoIDcomponents = geography_id.split('US')

            sumlev = geoIDcomponents[0][:3]
            page_context['sumlev'] = sumlev

            fips_code = geoIDcomponents[1]
            if len(fips_code) >= 2:
                state_fips = fips_code[:2]
                page_context['state_fips_code'] = state_fips
                page_context['state_geoid'] = '04000US%s' % state_fips

            if sumlev in ['010', '020', '030', '040']:
                acs_release = 'acs2011_1yr'

            if sumlev == '050' and len(fips_code) == 5:
                page_context['county_fips_code'] = fips_code

        # hit our API (force to 5-year data for now)
        #acs_endpoint = 'http://api.censusreporter.org/1.0/latest/%s/profile' % kwargs['geography_id']
        acs_endpoint = 'http://api.censusreporter.org/1.0/%s/%s/profile' % (acs_release, kwargs['geography_id'])
        r = requests.get(acs_endpoint)

        if r.status_code == 200:
            profile_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
            profile_data = self.calculate_indexes(profile_data)
            page_context.update(profile_data)
        else:
            raise Http404

        tiger_release = 'tiger2012'
        geo_endpoint = 'http://api.censusreporter.org/1.0/geo/%s/%s?geom=true' % (tiger_release, kwargs['geography_id'])
        r = requests.get(geo_endpoint)

        if r.status_code == 200:
            geo_metadata = simplejson.loads(r.text)
            page_context['geo_metadata'] = geo_metadata
            # Since the template expects GeoJSON as a string, lets give it what it wants
            # TODO: The template should really request GeoJSON from the API directly so we don't have to do this.
            page_context['geo_metadata']['geom'] = json.dumps(page_context['geo_metadata']['geom'])

            if sumlev == '160':
                page_context['point_lon_lat'] = (geo_metadata.get('intptlon'), geo_metadata.get('intptlat'))

        # add a few last things
        # make square miles http://www.census.gov/geo/www/geo_defn.html#AreaMeasurement
        square_miles = round(float(geo_metadata['aland']) / float(2589988), 1)
        total_pop = page_context['geography']['total_population']
        page_context['geo_metadata']['square_miles'] = square_miles
        page_context['geo_metadata']['population_density'] = round(float(total_pop) / float(square_miles), 1)

        return page_context



### COMPARISONS ###

class ComparisonView(TemplateView):
    template_name = 'comparison.html'
    
    def get_total_number(self, parent_data):
        return parent_data.values()[0]

    def get_context_data(self, *args, **kwargs):
        parent_id = self.kwargs['parent_id']
        parent_fips_code = parent_id.split('US')[1]
        descendant_sumlev = self.kwargs['descendant_sumlev']

        comparison_type = self.kwargs.get('comparison_type', None)
        if comparison_type:
            self.template_name = 'comparison_%s.html' % comparison_type

        page_context = {
            'parent_id': parent_id,
            'parent_fips_code': parent_fips_code,
            'descendant_sumlev': descendant_sumlev,
            'comparison_type': comparison_type,
        }

        # hit our API (force to 5-year data for now)
        acs_release = 'acs2011_5yr'
        table_id = 'B01001'
        API_ENDPOINT = 'http://api.censusreporter.org/1.0/data/compare/%s/%s' % (acs_release, table_id)
        r = requests.get(API_ENDPOINT, params={"within": kwargs['parent_id'], "sumlevel": kwargs['descendant_sumlev']})

        if r.status_code == 200:
            comparison_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        else:
            raise Http404

        # start building some data about the comparison
        comparison_metadata = comparison_data['comparison']

        # info on the parent
        try:
            parent_geography = get_object_or_404(Geography, full_geoid = parent_id)
            comparison_metadata['parent_geography'] = parent_geography
        except:
            pass
        comparison_metadata['descendant_type'] = SUMMARY_LEVEL_DICT[descendant_sumlev]

        # all the descendants being compared
        descendant_list = sorted([(geoid, child['geography']['name']) for (geoid, child) in comparison_data['child_geographies'].iteritems()])
        
        self.parent_data = comparison_data['parent_geography']['data']

        page_context.update({
            'descendant_list': descendant_list,
            'comparison_metadata': comparison_metadata,
        })

        if comparison_type == 'table':
            self.add_table_values(page_context, comparison_data['child_geographies'])

        elif comparison_type == 'distribution':
            self.add_distribution_values(page_context, comparison_data['child_geographies'])

        elif comparison_type == 'map':
            self.add_map_values(page_context, comparison_data['child_geographies'])

        return page_context

    def get_total_and_pct(self, value, total):
        if value is not None and total is not None:
            percentage = round((value / total)*100, 1)
        else:
            percentage = 'n/a'
            if not value:
                value = 'n/a'

        return value, percentage

    def add_map_values(self, page_context, data):
        data_groups = OrderedDict()

        for (geoid, child) in data.iteritems():
            name = child['geography']['name']
            geoID = geoid.split('US')[1]

            # TODO: Figure out how to identify tables where first column
            # is not our total
            # TODO: Encapsulate in a function so other methods can repeat
            total_population_key = child['data'].keys()[0]
            total_population = child['data'].pop(total_population_key)

            for table_id, value in child['data'].iteritems():
                if not table_id in data_groups:
                    data_groups[table_id] = {}

                # TODO This will need MOE, etc.
                total, percentage = self.get_total_and_pct(value, total_population)

                data_groups[table_id].update({
                    geoID: {
                        'name': name,
                        'percentage': percentage,
                        'number': total,
                    }
                })

        page_context.update({
            'map_data': SafeString(simplejson.dumps(data_groups, cls=LazyEncoder)),
        })

    def add_table_values(self, page_context, data):
        geo_values = []
        for (geoid, child) in data.iteritems():
            name = child['geography']['name']
            # FIXME This is a hack
            total_population = child['data'].pop('b01001001')
            geo_item = {
                'name': name,
                'geoID': geoid,
                'total_population': total_population,
                'values': OrderedDict(),
            }

            for table_id, value in child['data'].iteritems():
                total, total_pct = self.get_total_and_pct(value, total_population)

                geo_item['values'].update({
                    table_id: {
                        'total': total,
                        'total_pct': total_pct,
                    }
                })
            geo_values.append(geo_item)

        page_context.update({
            'geo_values': geo_values,
        })

    def add_distribution_values(self, page_context, data):
        distribution_groups = OrderedDict()
        for (geoid, child) in data.iteritems():
            name = child['geography']['name']
            # FIXME This is a hack
            total_population = child['data'].pop('b01001001')

            for table_id, value in child['data'].iteritems():
                if not table_id in distribution_groups:
                    distribution_groups[table_id] = {
                        'group_baselines': {},
                        'group_values': {},
                    }

                total, total_pct = self.get_total_and_pct(value, total_population)

                distribution_groups[table_id]['group_values'].update({
                    geoid: {
                        'name': name,
                        'total': total,
                        'total_pct': total_pct,
                    }
                })

        for chart, chart_values in distribution_groups.items():
            for field in ['total', 'total_pct']:
                values_list = [value[field] for geo, value in chart_values['group_values'].iteritems()]
                max_value = max(values_list)
                min_value = min(values_list)
                domain_range = max_value - min_value
                median_value = median(values_list)
                median_percent_of_range = ((median_value - min_value) / domain_range)*100
                chart_values['group_baselines']['max_value_%s' % field] = max_value
                chart_values['group_baselines']['min_value_%s' % field] = min_value
                chart_values['group_baselines']['domain_range_%s' % field] = domain_range
                chart_values['group_baselines']['median_value_%s' % field] = median_value
                chart_values['group_baselines']['median_percent_of_range_%s' % field] = round(median_percent_of_range,1)
                for geo, value in chart_values['group_values'].items():
                    percentage = ((value[field] - min_value) / domain_range)*100
                    value['percent_of_range_%s' % field] = round(percentage,1)

        page_context.update({
            'distribution_groups': distribution_groups,
        })

def render_json_to_response(context):
    result = simplejson.dumps(context, sort_keys=False, indent=4)
    return HttpResponse(result, mimetype='application/javascript')

class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        geographies = Geography.objects.all()

        if 'geoids' in self.request.GET:
            geoid_list = self.request.GET['geoids'].split('|')
            geographies = Geography.objects.filter(full_geoid__in=geoid_list)

        elif 'geoid' in self.request.GET:
            geoid = self.request.GET['geoid']
            geographies = Geography.objects.filter(full_geoid__exact=geoid)

        elif 'q' in self.request.GET:
            q = self.request.GET['q']
            geographies = Geography.objects.filter(full_name__icontains=q)

        if 'sumlev_filter' in self.request.GET:
            allowed_sumlev_list = self.request.GET['sumlev_filter'].split(',')
            geographies = geographies.filter(sumlev__in=allowed_sumlev_list)

        geographies = geographies.values()
        geographies = geographies.only('full_name','full_geoid','sumlev')

        return render_json_to_response(list(geographies))

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
        #result['tokens'] = [word.lower().strip("() ") for word in table_name.split(' ') if word.lower() not in NLTK_STOPWORDS]

        if obj_type == 'column':
            result['column_id'] = obj['column_id']
            result['column_name'] = obj['column_name']

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

        tables = tables.values('table_id','table_name','topics')
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
    template_name = 'table_search.html'

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
    template_name = 'geo_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2011 1-Year', 'ACS 2011 3-Year', 'ACS 2011 5-Year']
        }
        tables = None
        columns = None

class ComparisonBuilder(TemplateView):
    template_name = 'comparison_builder.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # provide some topics to choose from
        TOPIC_FILTERS = {
            'Demographics': {'topics': ['age', 'gender', 'race', 'seniors',]},
            'Economics': {'topics': ['commute', 'employment', 'health insurance', 'income', 'poverty', 'public assistance',]},
            'Families': {'topics': ['children', 'families', 'fertility', 'grandparents', 'marital status', 'roommates',]},
            'Housing': {'topics': ['housing',]},
            'Social': {'topics': ['ancestry', 'citizenship', 'disability', 'education', 'language', 'migration', 'place of birth', 'veterans',]},
        }

        SUMLEV_CHOICES = OrderedDict()
        SUMLEV_CHOICES['Standard'] = [
            {'name': 'state', 'plural_name': 'states', 'summary_level': '040', 'ancestor_sumlev_list': '010,020,030', 'ancestor_options': 'Nation' },
            {'name': 'county', 'plural_name': 'counties', 'summary_level': '050', 'ancestor_sumlev_list': '010,020,030,040', 'ancestor_options': 'Nation or State' },
            {'name': 'place', 'plural_name': 'places', 'summary_level': '160', 'ancestor_sumlev_list': '010,020,030,040,050', 'ancestor_options': 'Nation, State or County' },
            {'name': 'metro area', 'plural_name': 'metro areas', 'summary_level': '310', 'ancestor_sumlev_list': '010,020,030,040', 'ancestor_options': 'Nation or State' },
            {'name': 'native area', 'plural_name': 'native areas', 'summary_level': '310', 'ancestor_sumlev_list': '010,020,030,040', 'ancestor_options': 'Nation or State' },
            {'name': 'census tract', 'plural_name': 'census tracts', 'summary_level': '140', 'ancestor_sumlev_list': '010,020,030,040,050,160', 'ancestor_options': 'Nation, State, County or Place' },
            {'name': 'block group', 'plural_name': 'block groups', 'summary_level': '150', 'ancestor_sumlev_list': '010,020,030,040,140,160', 'ancestor_options': 'Nation, State, County, Place or Census Tract' },
            {'name': 'zip codes', 'plural_name': 'zip codes', 'summary_level': '860', 'ancestor_sumlev_list': '010,020,030,040,050', 'ancestor_options': 'Nation, State or County' },
        ]
        SUMLEV_CHOICES['Legislative'] = [
            {'name': 'congressional district', 'plural_name': 'congressional districts', 'summary_level': '500', 'ancestor_sumlev_list': '010,020,030,040', 'ancestor_options': 'Nation or State' },
            {'name': 'state senate district', 'plural_name': 'state senate districts', 'summary_level': '610', 'ancestor_sumlev_list': '010,020,030,040', 'ancestor_options': 'Nation or State' },
            {'name': 'state house district', 'plural_name': 'state house districts', 'summary_level': '620', 'ancestor_sumlev_list': '010,020,030,040', 'ancestor_options': 'Nation or State' },
            {'name': 'voting tabulation district', 'plural_name': 'voting tabulation districts', 'summary_level': '700', 'ancestor_sumlev_list': '010,020,030,040,050', 'ancestor_options': 'Nation, State or County' },
        ]
        SUMLEV_CHOICES['Schools'] = [
            {'name': 'elementary school district', 'plural_name': 'elementary school districts', 'summary_level': '950', 'ancestor_sumlev_list': '010,020,030,040,050', 'ancestor_options': 'Nation, State or County' },
            {'name': 'secondary school district', 'plural_name': 'secondary school districts', 'summary_level': '960', 'ancestor_sumlev_list': '010,020,030,040,050', 'ancestor_options': 'Nation, State or County' },
            {'name': 'unified school district', 'plural_name': 'unified school districts', 'summary_level': '970', 'ancestor_sumlev_list': '010,020,030,040,050', 'ancestor_options': 'Nation, State or County' },
        ]

        ACS_RELEASES = [
            {'name': 'ACS 2011 1-Year', 'slug': 'acs2011_1yr', 'years': '2011'},
            {'name': 'ACS 2011 3-Year', 'slug': 'acs2011_3yr', 'years': '2009-2011'},
            {'name': 'ACS 2011 5-Year', 'slug': 'acs2011_5yr', 'years': '2007-2011'},
            {'name': 'ACS 2010 1-Year', 'slug': 'acs2010_1yr', 'years': '2010'},
            {'name': 'ACS 2010 3-Year', 'slug': 'acs2010_3yr', 'years': '2008-2010'},
            {'name': 'ACS 2010 5-Year', 'slug': 'acs2010_5yr', 'years': '2006-2010'},
            {'name': 'ACS 2009 1-Year', 'slug': 'acs2009_1yr', 'years': '2009'},
            {'name': 'ACS 2009 3-Year', 'slug': 'acs2009_3yr', 'years': '2007-2009'},
            {'name': 'ACS 2008 1-Year', 'slug': 'acs2008_1yr', 'years': '2008'},
            {'name': 'ACS 2008 3-Year', 'slug': 'acs2008_3yr', 'years': '2006-2008'},
            {'name': 'ACS 2007 1-Year', 'slug': 'acs2007_1yr', 'years': '2007'},
            {'name': 'ACS 2007 3-Year', 'slug': 'acs2007_3yr', 'years': '2005-2007'},
        ]

        # for the moment, filter to counties and smaller
        summary_level_options = SummaryLevel.objects.exclude(ancestors__isnull=True)\
            .filter(summary_level__gt='040')\
            .only('name','slug','summary_level')
        page_context.update({
            'summary_level_options': summary_level_options,
            'topic_demographic_filters': TOPIC_FILTERS['Demographics'],
            'topic_economic_filters': TOPIC_FILTERS['Economics'],
            'topic_family_filters': TOPIC_FILTERS['Families'],
            'topic_housing_filters': TOPIC_FILTERS['Housing'],
            'topic_social_filters': TOPIC_FILTERS['Social'],
            'sumlev_choices': SUMLEV_CHOICES,
            'sumlev_standard_choices': SUMLEV_CHOICES['Standard'],
            'sumlev_legislative_choices': SUMLEV_CHOICES['Legislative'],
            'sumlev_school_choices': SUMLEV_CHOICES['Schools'],
            'acs_releases': ACS_RELEASES[:3],
        })

        return page_context

class ComparisonDataView(View):
    def get(self, *args, **kwargs):
        table_id = self.kwargs['table_id']
        descendant_sumlev = self.kwargs['descendant_sumlev']
        parent_id = self.kwargs['parent_id']
        format = self.kwargs['format']

        # hit our API (force to 5-year data for now)
        acs_release = 'acs2011_5yr'
        API_ENDPOINT = 'http://api.censusreporter.org/1.0/compare/%s/%s?sumlevel=%s&within=%s&geom=true' % (acs_release, table_id, descendant_sumlev, parent_id)
        r = requests.get(API_ENDPOINT)

        if not r.status_code == 200:
            raise Http404

        comparison_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)

        return render_json_to_response(comparison_data)
