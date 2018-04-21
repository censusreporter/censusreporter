from __future__ import division
from collections import OrderedDict, defaultdict
from numpy import median
from urllib2 import unquote, quote
import cStringIO
import gzip
import re
import requests
import unicodecsv
import topics
import json

from django.conf import settings
from django.contrib import messages
from django.core.urlresolvers import reverse
from django.db.models import Q
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.template import loader, TemplateDoesNotExist, RequestContext
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.utils.text import slugify
from django.views.generic import View, TemplateView

from .models import Geography, Table, Column, SummaryLevel
from .utils import LazyEncoder, get_max_value, get_object_or_none, parse_table_id, \
     SUMMARY_LEVEL_DICT, NLTK_STOPWORDS, TOPIC_FILTERS, SUMLEV_CHOICES, ACS_RELEASES
from .profile import geo_profile, enhance_api_data
from .topics import TOPICS_MAP

from boto.s3.connection import S3Connection
from boto.s3.key import Key
try:
    from config.dev.local import AWS_KEY, AWS_SECRET
except:
    AWS_KEY = AWS_SECRET = None


import logging
logging.basicConfig()
logger = logging.getLogger(__name__)

r_session = requests.Session()
r_session.headers.update({'User-Agent': 'censusreporter.org frontend'})


### UTILS ###

def render_json_to_response(context):
    '''
    Utility method for rendering a view's data to JSON response.
    '''
    result = simplejson.dumps(context, sort_keys=False, indent=4)
    return HttpResponse(result, mimetype='application/javascript')

def capitalize_first(str):
    """Capitalizes only the first letter of the given string.

    :param str: string to capitalize
    :return: str with only the first letter capitalized
    """
    if str == "": return ""
    return str[0].upper() + str[1:]

### HEALTH CHECK ###

class HealthcheckView(TemplateView):
    template_name = 'healthcheck.html'


## ERRORS ##

def server_error(request):
    response = render(request, "500.html")
    response.status_code = 500
    return response

def raise_404_with_messages(request, error_data={}):
    ''' expects a dict containing error labels and messages for the user '''
    for k, v in error_data.items():
        error_text = '<strong>%s:</strong> %s' % (k.title(), v)
        messages.error(request, error_text)

    raise Http404

class TableDetailView(TemplateView):
    template_name = 'table/table_detail.html'
    RELEASE_TRANSLATE_DICT = {
        'one_yr': '1-Year',
        'three_yr': '3-Year',
        'five_yr': '5-Year',
    }
    TABLE_TYPE_TRANSLATE_DICT = {
        'B': 'Detailed',
        'C': 'Collapsed',
    }

    def dispatch(self, *args, **kwargs):
        table_argument = self.kwargs.get('table', None)
        # canonicalize
        if table_argument and not table_argument == table_argument.upper():
            return HttpResponseRedirect(
                        reverse('table_detail', args=(table_argument.upper(),))
                    )

        self.table_code = table_argument
        self.table_group = self.table_code[0]
        self.tabulation_code = re.sub("\D", "", self.table_code)

        try:
            return super(TableDetailView, self).dispatch(*args, **kwargs)
        except Http404, e:
            # Check if core table doesn't exist, but has iterations; if so,
            # redirect to the first iteration.
            if table_argument.endswith('PR'):
                table_argument = table_argument.replace('PR', 'APR')
            else:
                table_argument = table_argument + 'A'
            endpoint = settings.API_URL + '/2.0/table/latest/%s' % table_argument

            if r_session.get(endpoint).status_code == 200:
                return HttpResponseRedirect(
                    reverse('table_detail', args = (table_argument,))
                )
            raise e

    def get_tabulation_data(self, table_code):
        endpoint = settings.API_URL + '/1.0/tabulation/%s' % table_code
        r = r_session.get(endpoint)
        status_code = r.status_code

        # make sure we've requested a legit tabulation code
        if status_code == 200:
            tabulation_data = r.json(object_pairs_hook=OrderedDict)
        elif status_code == 404 or status_code == 400:
            error_data = r.json()
            raise_404_with_messages(self.request, error_data)
        else:
            raise Http404

        # factories for organizing metadata on arbitrary sets of tables
        def table_dict_factory():
            return {
                'version_name': 'Standard Table',
                'releases': {
                    'one_yr': '',
                    'three_yr': '',
                    'five_yr': '',
                },
            }

        def table_ordereddict_factory():
            return OrderedDict()

        def table_expanded_factory():
            return {
                'table_metadata': self.get_table_data(table_code)
            }

        tables = OrderedDict()
        table_grid = OrderedDict()
        tables_expanded = OrderedDict()
        default_table = defaultdict(table_dict_factory)
        default_table_groups = defaultdict(table_ordereddict_factory)
        default_table_list = defaultdict(table_ordereddict_factory)
        default_expanded_list = defaultdict(table_ordereddict_factory)
        default_expanded_table = defaultdict(table_expanded_factory)

        # take API data and shape into dicts for:
        # * a grid with each table variant and which releases it's available for
        # * a list of each primary table, with its column metadata from the API
        for release in tabulation_data['tables_by_release']:
            # Sort data by length to have all the PR tables at the end.
            # Note that sorted() is guaranteed to be stable, per Python docs,
            # meaning that keys that compare equal (are equal length) will
            # remain in the same relative order. Assuming they were alphabetical
            # before this, this is guaranteed to list tables as
            # tableA, ... , tableI, tableAPR, ... , tableIPR.
            sorted_data = sorted(tabulation_data['tables_by_release'][release],
                                 key = lambda code: len(code))
            for table_code in sorted_data:
                # is this a B or C table?
                parsed = parse_table_id(table_code)
                letter_code = parsed['table_type']
                tables[letter_code] = default_table_groups[letter_code]

                # keep the grids separate, track which releases a table is in
                tables[letter_code] = default_table_list[letter_code]
                tables[letter_code][table_code] = default_table[table_code]
                tables[letter_code][table_code]['releases'][release] = self.RELEASE_TRANSLATE_DICT[release]

                # get the variant names
                if parsed['racial']:
                    if parsed['puerto_rico']:
                        tables[letter_code][table_code]['version_name'] = parsed['race'] + " (Puerto Rico)"
                    else:
                        tables[letter_code][table_code]['version_name'] = parsed['race']
                elif parsed['puerto_rico']:
                    tables[letter_code][table_code]['version_name'] = "Standard Table (Puerto Rico)"

        tabulation_data['table_versions'] = tables.pop(self.table_group, None)
        tabulation_data['related_tables'] = {
            'grid': tables,
            'preview': {},
        }

        for group, group_values in tables.iteritems():
            preview_table = next(group_values.iteritems())[0]
            try:
                tabulation_data['related_tables']['preview'][preview_table] = self.get_table_data(preview_table)
                tabulation_data['related_tables']['preview'][preview_table]['table_type'] = self.TABLE_TYPE_TRANSLATE_DICT[preview_table.upper()[0]]
            except ValueError:
                continue

        return tabulation_data

    def get_topic_pages(self, table_topics):
        related_topic_pages = []
        for key, values in TOPICS_MAP.iteritems():
            topics = values.get('topics', [])
            matches = set(topics).intersection(table_topics)
            if matches:
                related_topic_pages.append((key, TOPICS_MAP[key]['title']))

        return related_topic_pages

    def get_table_data(self, table_code):
        endpoint = settings.API_URL + '/2.0/table/latest/%s' % table_code
        r = r_session.get(endpoint)

        if r.status_code == 200:
            return r.json(object_pairs_hook=OrderedDict)
        if r.status_code == 400:
            raise ValueError("No table data for that table")
        else:
            raise Http404

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'table': self.get_table_data(self.table_code),
            'tabulation': self.get_tabulation_data(self.tabulation_code),
        }
        page_context['related_topic_pages'] = self.get_topic_pages(page_context['table']['topics'])

        return page_context

class GeographyDetailView(TemplateView):
    template_name = 'profile/profile_detail.html'

    def parse_fragment(self,fragment):
        """Given a URL, return a (geoid,slug) tuple. slug may be None.
        GeoIDs are not tested for structure, but are simply the part of the URL
        before any '-' character, also allowing for the curiosity of Vermont
        legislative districts.
        (see https://github.com/censusreporter/censusreporter/issues/50)
        """
        parts = fragment.split('-',1)
        if len(parts) == 1:
            return (fragment,None)

        geoid,slug = parts
        if len(slug) == 1:
            geoid = '{}-{}'.format(geoid,slug)
            slug = None
        else:
            parts = slug.split('-')
            if len(parts) > 1 and len(parts[0]) == 1:
                geoid = '{}-{}'.format(geoid,parts[0])
                slug = '-'.join(parts[1:])

        return (geoid,slug)

    def dispatch(self, *args, **kwargs):

        self.geo_id, self.slug = self.parse_fragment(kwargs.get('fragment'))
        parts = self.geo_id.split('US')
        if len(parts) == 2 and len(parts[0]) == 7: # American Fact Finder style GeoID.
            sumlevel = parts[0][:3]
            identifier = parts[1]
            self.geo_id = "{}00US{}".format(sumlevel, identifier)
            self.slug = None # simple way to force a redirect

        if self.slug is None:
            geo = self.get_geography(self.geo_id)
            if geo:
                try:
                    # if possible, redirect to slugged URL
                    slug = slugify(geo['properties']['display_name'])
                    fragment = '{}-{}'.format(self.geo_id, slug)
                    return HttpResponseRedirect(
                        reverse('geography_detail', args=(fragment,)
                    ))
                except Exception, e:
                    # if we have a strange situation where there's no
                    # display name attached to the geography, we should
                    # go ahead and display the profile page
                    logger.warn(e)
                    logger.warn("Geography {} has no display_name".format(self.geo_id))
                    pass
            else:
                # if we get nothing from the API, pass through for 404
                pass

        return super(GeographyDetailView, self).dispatch(*args, **kwargs)

    def get_geography(self, geo_id):
        endpoint = settings.API_URL + '/1.0/geo/tiger2016/%s' % self.geo_id
        r = r_session.get(endpoint)
        status_code = r.status_code

        if status_code == 200:
            geo_data = r.json(object_pairs_hook=OrderedDict)
            return geo_data
        return None

    def s3_keyname(self, geo_id):
        return '/1.0/data/profiles/2016/%s.json' % geo_id.upper()

    def make_s3(self):
        if AWS_KEY and AWS_SECRET:
            s3 = S3Connection(AWS_KEY, AWS_SECRET)
        else:
            try:
                s3 = S3Connection()
            except:
                s3 = None
        return s3

    def s3_profile_key(self, geo_id):
        s3 = self.make_s3()

        key = None
        if s3:
            bucket = s3.get_bucket('embed.censusreporter.org')
            keyname = self.s3_keyname(geo_id)
            key = Key(bucket, keyname)

        return key

    def write_profile_json(self, s3_key, data):
        s3_key.metadata['Content-Type'] = 'application/json'
        s3_key.metadata['Content-Encoding'] = 'gzip'

        # create gzipped version of json in memory
        memfile = cStringIO.StringIO()
        #memfile.write(data)
        with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
            gzip_data.write(data)
        memfile.seek(0)

        # store static version on S3
        s3_key.set_contents_from_file(memfile)

    def get_context_data(self, *args, **kwargs):
        geography_id = self.geo_id

        try:
            s3_key = self.s3_profile_key(geography_id)
        except:
            s3_key = None

        if s3_key and s3_key.exists():
            memfile = cStringIO.StringIO()
            s3_key.get_file(memfile)
            memfile.seek(0)
            compressed = gzip.GzipFile(fileobj=memfile)

            # Read the decompressed JSON from S3
            profile_data_json = compressed.read()
            # Load it into a Python dict for the template
            profile_data = simplejson.loads(profile_data_json)
            # Also mark it as safe for the charts on the profile
            profile_data_json = SafeString(profile_data_json)
        else:
            profile_data = geo_profile(geography_id)

            if profile_data:
                profile_data = enhance_api_data(profile_data)

                profile_data_json = SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))

                if s3_key is None:
                    logger.warn("Could not save to S3 because there was no connection to S3.")
                else:
                    self.write_profile_json(s3_key, profile_data_json)

            else:
                raise Http404

        page_context = {
            'profile_data_json': profile_data_json
        }
        page_context.update(profile_data)

        return page_context


class TopicView(TemplateView):
    template_name = 'topics/topics_list.html'

    def get_context_data(self, *args, **kwargs):
        if 'topic_slug' in kwargs:
            topic_slug = kwargs['topic_slug']
            try:
                page_context = {
                    'topic': TOPICS_MAP[topic_slug],
                }
                self.template_name = 'topics/%s' % TOPICS_MAP[topic_slug]['template_name']
            except:
                raise Http404
        else:
            page_context = {
                'topic': {
                    'title': 'Topics',
                    'slug': '',
                    'description': 'Pages describing the concepts and tables covered by the Census and American Community Survey.',
                },
                'topics_list': sort_topics(TOPICS_MAP)
            }

        return page_context


### EXAMPLES ###

class ExampleView(TemplateView):
    '''
    Simple router for flat example pages. A request to '/examples/slug-name/'
    will attempt to find a corresponding template at `examples/slug_name.html`.
    '''
    def get_template_names(self):
        template = 'examples/%s.html' % (self.kwargs['example_slug'].replace('-', '_'))
        try:
            loader.get_template(template)
            return template
        except TemplateDoesNotExist:
            raise Http404


### COMPARISONS ###

class DataView(TemplateView):
    template_name = 'data/data_table.html'

    def dispatch(self, *args, **kwargs):
        self.table = self.request.GET.get('table', None)
        self.primary_geo_id = self.request.GET.get('primary_geo_id', None)
        self.geo_ids = self.request.GET.get('geo_ids', '01000US')
        self.release_slug = self.request.GET.get('release', None)
        self.release = ACS_RELEASES.get(self.release_slug, None)

        if not self.table or not self.geo_ids:
            errors = {
                'Missing': 'This view requires `table` and `geo_ids` parameters in the querystring.'
            }
            raise_404_with_messages(self.request, errors)

        self.format = self.kwargs.get('format', None)
        if self.format in ['table', 'distribution', 'map']:
            self.template_name = 'data/data_%s.html' % self.format
        else:
            raise Http404

        return super(DataView, self).dispatch(*args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        download_link_prefix = settings.API_URL + '/1.0/data/download/latest?table_ids=%s&geo_ids=%s' % (self.table, self.geo_ids)

        page_context = {
            'table': self.table or '',
            'primary_geo_id': self.primary_geo_id or '',
            'geo_ids': self.geo_ids or '',
            'release': self.release or '',
            'data_format': self.format,
            'download_link_prefix': download_link_prefix,
        }

        return page_context


class HomepageView(TemplateView):
    template_name = 'homepage.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'hide_nav_tools': True,
            'topics_list': sort_topics(TOPICS_MAP),
        }

        return page_context


class ComparisonBuilder(TemplateView):
    template_name = 'compare/comparison_builder.html'

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

class S3Conn(object):
    def make_s3(self):
        if AWS_KEY and AWS_SECRET:
            s3 = S3Connection(AWS_KEY, AWS_SECRET)
        else:
            try:
                s3 = S3Connection()
            except:
                s3 = None
        return s3

    def s3_key(self, key_name):
        s3 = self.make_s3()

        key = None
        if s3:
            bucket = s3.get_bucket('embed.censusreporter.org')
            key = Key(bucket, key_name)
        return key

    def write_json(self, s3_key, data):
        s3_key.metadata['Content-Type'] = 'application/json'
        s3_key.metadata['Content-Encoding'] = 'gzip'
        s3_key.storage_class = 'STANDARD'

        # create gzipped version of json in memory
        memfile = cStringIO.StringIO()
        #memfile.write(data)
        with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
            gzip_data.write(data)
        memfile.seek(0)

        # store static version on S3
        s3_key.set_contents_from_file(memfile)

class MakeJSONView(View):
    def post(self, request, *args, **kwargs):
        post_data = self.request.POST

        if 'chart_data' in post_data:
            chart_data = simplejson.loads(post_data['chart_data'], object_pairs_hook=OrderedDict)
        if 'geography' in post_data:
            geography = simplejson.loads(post_data['geography'], object_pairs_hook=OrderedDict)
        if 'geo_metadata' in post_data:
            geo_metadata = simplejson.loads(post_data['geo_metadata'], object_pairs_hook=OrderedDict)

        if 'params' in post_data:
            params = simplejson.loads(post_data['params'])

        # for now, assume we need all these things
        if not (chart_data and geography and geo_metadata and params):
            return render_json_to_response({'success': 'false'})

        path_to_make = params['chartDataID'].split('-')
        data = {
            'geography': geography,
            'geo_metadata': geo_metadata,
        }

        # bless you, http://stackoverflow.com/a/13688108/3204984
        def nested_set(data, keys, value):
            for key in keys[:-1]:
                data = data.setdefault(key, {})
            data[keys[-1]] = value

        nested_set(data, path_to_make, chart_data)

        chart_data_json = SafeString(simplejson.dumps(data, cls=LazyEncoder))

        key_name = '/1.0/data/charts/{0}/{1}-{2}.json'.format(params['releaseID'], params['geoID'], params['chartDataID'])
        s3 = S3Conn()

        try:
            s3_key = s3.s3_key(key_name)
        except:
            s3_key = None

        if s3_key and s3_key.exists():
            pass
        elif s3_key:
            s3.write_json(s3_key, chart_data_json)
        else:
            logger.warn("Could not save to S3 because there was no connection to S3.")

        return render_json_to_response({'success': 'true'})



## LOCAL DEV VERSION OF API ##

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

        if 'sumlevs' in self.request.GET:
            allowed_sumlev_list = self.request.GET['sumlevs'].split(',')
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
        result['unique_key'] = table_id
        #result['tokens'] = [word.lower().strip("() ") for word in table_name.split(' ') if word.lower() not in NLTK_STOPWORDS]

        if obj_type == 'column':
            result['column_id'] = obj['column_id']
            result['column_name'] = obj['column_name']
            result['unique_key'] = '%s|%s' % (table_id, obj['column_id'])

        return result

    def get(self, request, *args, **kwargs):
        results = []
        # allow choice of release, default to 2012 1-year
        release = self.request.GET.get('release', 'ACS 2012 1-Year')

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


class SearchResultsView(TemplateView):
    template_name = 'search/results.html'

    def get_data(self, query):
        search_url = settings.API_URL + "/2.1/full-text/search?q={}"
        if not query:
            return {'results': [], 'has_query': False}

        r = r_session.get(search_url.format(uniurlquote(query)))
        status_code = r.status_code

        mapbox_accessToken = "pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiQV9hS01rQSJ9.wtsn0FwmAdRV7cckopFKkA"
        location_request_url = "https://api.tiles.mapbox.com/v4/geocode/mapbox.places/{0}.json?access_token={1}&country=us,pr"
        location_request_url = location_request_url.format(uniurlquote(query), mapbox_accessToken)
        r_location = r_session.get(location_request_url)
        status_code_location = r_location.status_code

        search_data_all = {}
        if status_code == 200 or status_code_location == 200:
            search_data = json.loads(r.text)
            search_data['results'] = filter(lambda x: x.get('sumlevel') not in ['140','150'], search_data['results'])
            search_data_location = json.loads(r_location.text)
            search_data_all['has_query'] = True
            search_data_all['results'] = (search_data.get('results') or []) + (search_data_location.get('features') or [])
        elif status_code == 404 or status_code == 400:
            error_data = json.loads(r.text)
            raise_404_with_messages(self.request, error_data)
        elif status_code_location == 404 or status_code_location == 400:
            error_data = json.loads(r_location.text)
            raise_404_with_messages(self.request, error_data)
        else:
            raise Http404

        return search_data_all

    def get_context_data(self, **kwargs):
        q = self.request.GET.get('q', None)
        page_context = self.get_data(q) # format: { "results": [ ... ] }

        # Determine if types of pages exist (used for filtering)
        has_profiles = False
        has_tables = False
        has_addresses = False
        has_topics = False

        # Collect list of sumlevel names for filtering
        sumlevels = {} # format: { sumlevel : [sumlevel_name, count] }

        # Collect list of topics for filtering
        all_topics = {} # format: { topic_name: count}

        for item in page_context['results']:
            if item['type'] == "profile":
                has_profiles = True

                # Capitalize first letter of sumlevel names
                capitalized = capitalize_first(item['sumlevel_name'])
                item['sumlevel_name'] = capitalized

                # Increment count if found, otherwise add and start count
                if item['sumlevel'] in sumlevels.keys():
                    sumlevels[item['sumlevel']][1] += 1
                else:
                    sumlevels[item['sumlevel']] = [capitalized, 1]

                sumlevels = OrderedDict(sorted(sumlevels.items()))

                # Change format from { sumlevel: [sumlevel_name, count] }
                # to { sumlevel_name: count }
                page_context['sumlevel_names'] = OrderedDict((value[0], value[1]) for key, value in sumlevels.iteritems())

            elif item['type'] == "table":
                has_tables = True

                # NOTE: Topics are used for filtering tables; should not be confused
                # with the 'topic' search result for topic pages

                # Capitalize the first letter of topics
                topics = [capitalize_first(x) for x in item['topics']]
                item['topics'] = ", ".join(topics)

                # Increment count if found, otherwise add and start count
                for topic in topics:
                    if topic in all_topics.keys():
                        all_topics[topic] += 1
                    else:
                        all_topics[topic] = 1

                # Sort topics alphabetically
                page_context['topics'] = OrderedDict(sorted(all_topics.items()))

            # "Feature" is an address (Mapbox calls it a location)
            elif item['type'] == "Feature":
                item['type'] = "address"
                has_addresses = True
                item['url'] = "/locate/?lat={0}&lng={1}&address={2}".format(
                    item['center'][1], item['center'][0], uniurlquote(item['place_name'])
                )

            elif item['type'] == "topic":
                has_topics = True

        # Include all of the 'contains' metadata in the page
        page_context['contains'] = {
            'profile': has_profiles,
            'table': has_tables,
            'address': has_addresses,
            'topic': has_topics
        }

        # Redundant to have search box in header since results page has
        # search box
        page_context['hide_nav_tools'] = True

        page_context['query'] = q

        return page_context



class GeoSearch(TemplateView):
    template_name = 'search/geo_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2012 1-Year', 'ACS 2012 3-Year', 'ACS 2012 5-Year']
        }
        tables = None
        columns = None


class SitemapTopicsView(TemplateView):
    template_name = 'sitemap.xml'

    def get_context_data(self, *args, **kwargs):
        urllist = [x['slug'] for x in topics.TOPICS_LIST]
        page_context = {
            'urllist': urllist
        }
        return page_context

    def get(self, request, *args, **kwargs):
        context = self.get_context_data()
        return self.render_to_response(context,
                                       content_type="text/xml; charset=utf-8")


class SitemapProfilesView(TemplateView):
    template_name = 'sitemap_topics.xml'

    def get(self, request, *args, **kwargs):
        context = self.get_context_data()
        return self.render_to_response(context, content_type="text/xml; charset=utf-8")

def sort_topics(topic_map):
    # force "getting started" to the top of the list, and serve the rest alphabetically.
    return [topic_map['getting-started']]+[v for k, v in sorted(topic_map.items()) if k != 'getting-started']

def uniurlquote(s):
    """urllib2.quote doesn't tolerate unicode strings, so make sure to encode..."""
    return quote(s.encode('utf-8'))
