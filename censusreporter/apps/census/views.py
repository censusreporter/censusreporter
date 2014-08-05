from __future__ import division
from collections import OrderedDict, defaultdict
from numpy import median
from urllib import urlencode
from urllib2 import unquote
import cStringIO
import gzip
import re
import requests
import unicodecsv

from django.conf import settings
from django.contrib import messages
from django.core.urlresolvers import reverse
from django.db.models import Q
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.template import loader, TemplateDoesNotExist
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.utils.text import slugify
from django.views.generic import View, TemplateView

from .models import Geography, Table, Column, SummaryLevel
from .utils import LazyEncoder, get_max_value, get_object_or_none,\
     SUMMARY_LEVEL_DICT, NLTK_STOPWORDS, TOPIC_FILTERS, SUMLEV_CHOICES, ACS_RELEASES
from .profile import geo_profile, enhance_api_data

from boto.s3.connection import S3Connection
from boto.s3.key import Key
try:
    from config.dev.local import AWS_KEY, AWS_SECRET
except:
    AWS_KEY = AWS_SECRET = None


import logging
logging.basicConfig()
logger = logging.getLogger(__name__)


### UTILS ###

def render_json_to_response(context):
    '''
    Utility method for rendering a view's data to JSON response.
    '''
    result = simplejson.dumps(context, sort_keys=False, indent=4)
    return HttpResponse(result, mimetype='application/javascript')

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


### TABLES ###
class TableSearchView(TemplateView):
    template_name = 'table/table_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {}
        q = self.request.GET.get('q', None)
        topics = self.request.GET.get('topics', None)
        start = self.request.GET.get('start', 0)

        if q:
            api_endpoint = settings.API_URL + '/1.0/table/elasticsearch'
            api_params = {
                'q': q,
                'topics': topics,
                'start': start
            }
            r = requests.get(api_endpoint, params=api_params)
            status_code = r.status_code

            if status_code == 200:
                data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)

                # if we end up powering results list with javascript ...
                #page_context['results'] = SafeString(simplejson.dumps(data['results'], cls=LazyEncoder))

                page_context = data
                page_context['q'] = q
                page_context['topics'] = topics
                page_context['num_results'] = data['facets']['topics']['total']
                if topics:
                    page_context['filters'] = topics.split(',')

                # pagination things
                start = int(start)
                results_page_length = len(data['results'])
                if page_context['num_results'] > results_page_length:
                    page_context['results_count_set'] = '%s-%s' % (start+1, start+results_page_length)
                if 'next_page' in data['links']:
                    page_context['next_offset'] = data['links']['next_page'].split('&start=')[1]
                if 'previous_page' in data['links']:
                    page_context['previous_offset'] = data['links']['previous_page'].split('&start=')[1]


                page_context['q'] = q
            elif status_code == 404 or status_code == 400:
                error_data = simplejson.loads(r.text)
                raise_404_with_messages(self.request, error_data)
            else:
                raise Http404

        return page_context

class TableDetailView(TemplateView):
    template_name = 'table/table_detail.html'
    RELEASE_TRANSLATE_DICT = {
        'one_yr': '1-Year',
        'three_yr': '3-Year',
        'five_yr': '5-Year',
    }
    VARIANT_TRANSLATE_DICT = {
        'A': 'White Alone',
        'B': 'Black or African American Alone',
        'C': 'American Indian and Alaska Native Alone',
        'D': 'Asian Alone',
        'E': 'Native Hawaiian and Other Pacific Islander Alone',
        'F': 'Some Other Race Alone',
        'G': 'Two or More Races',
        'H': 'White Alone, Not Hispanic or Latino',
        'I': 'Hispanic or Latino',
    }
    TABLE_TYPE_TRANSLATE_DICT = {
        'B': 'Base',
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

        return super(TableDetailView, self).dispatch(*args, **kwargs)
    
    def get_tabulation_data(self, table_code):
        endpoint = settings.API_URL + '/1.0/tabulation/%s' % table_code
        r = requests.get(endpoint)
        status_code = r.status_code

        # make sure we've requeste a legit tabulation code
        if status_code == 200:
            tabulation_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        elif status_code == 404 or status_code == 400:
            error_data = simplejson.loads(r.text)
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
            for table_code in tabulation_data['tables_by_release'][release]:
                # is this a B or C table?
                letter_code = table_code.upper()[0]
                tables[letter_code] = default_table_groups[letter_code]
                
                # keep the grids separate, track which releases a table is in
                tables[letter_code] = default_table_list[letter_code]
                tables[letter_code][table_code] = default_table[table_code]
                tables[letter_code][table_code]['releases'][release] = self.RELEASE_TRANSLATE_DICT[release]
                
                # get the variant names
                if len(table_code) == 7:
                    tables[letter_code][table_code]['version_name'] = self.VARIANT_TRANSLATE_DICT[table_code.upper()[-1]]

        tabulation_data['table_versions'] = tables.pop(self.table_group, None)
        tabulation_data['related_tables'] = {
            'grid': tables,
            'preview': {},
        }

        for group, group_values in tables.iteritems():
            preview_table = next(group_values.iteritems())[0]
            tabulation_data['related_tables']['preview'][preview_table] = self.get_table_data(preview_table)
            tabulation_data['related_tables']['preview'][preview_table]['table_type'] = self.TABLE_TYPE_TRANSLATE_DICT[preview_table.upper()[0]]
        
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
        endpoint = settings.API_URL + '/1.0/table/%s' % table_code
        r = requests.get(endpoint)
        status_code = r.status_code

        if status_code == 200:
            return simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        elif status_code == 404 or status_code == 400:
            error_data = simplejson.loads(r.text)
            raise_404_with_messages(self.request, error_data)
        else:
            raise Http404

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'table': self.get_table_data(self.table_code),
            'tabulation': self.get_tabulation_data(self.tabulation_code),
        }
        page_context['related_topic_pages'] = self.get_topic_pages(page_context['table']['topics'])
        
        return page_context


### PROFILES ###
class GeographySearchView(TemplateView):
    template_name = 'profile/profile_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {}
        q = self.request.GET.get('q', None)
        sumlevs = self.request.GET.get('sumlevs', None)
        start = self.request.GET.get('start', 0)

        if q:
            api_endpoint = settings.API_URL + '/1.0/geo/elasticsearch'
            api_params = {
                'q': q,
                'sumlevs': sumlevs,
                'start': start
            }
            r = requests.get(api_endpoint, params=api_params)
            status_code = r.status_code

            if status_code == 200:
                data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)

                # if we end up powering results list with javascript ...
                #page_context['results'] = SafeString(simplejson.dumps(data['results'], cls=LazyEncoder))
                #page_context['facets'] = SafeString(simplejson.dumps(data['facets'], cls=LazyEncoder))

                page_context = data
                page_context['q'] = q
                page_context['filters'] = sumlevs
                page_context['num_results'] = data['facets']['sumlev']['total']

                # pagination things
                start = int(start)
                results_page_length = len(data['results'])
                if page_context['num_results'] > results_page_length:
                    page_context['results_count_set'] = '%s-%s' % (start+1, start+results_page_length)
                if 'next_page' in data['links']:
                    page_context['next_offset'] = data['links']['next_page'].split('&start=')[1]
                if 'previous_page' in data['links']:
                    page_context['previous_offset'] = data['links']['previous_page'].split('&start=')[1]
            elif status_code == 404 or status_code == 400:
                error_data = simplejson.loads(r.text)
                raise_404_with_messages(self.request, error_data)
            else:
                raise Http404

        return page_context

class GeographyDetailView(TemplateView):
    template_name = 'profile/profile_detail.html'

    def dispatch(self, *args, **kwargs):
        self.geo_id = self.kwargs.get('geography_id', None)
        self.slug = self.kwargs.get('slug', None)

        if not self.slug:
            geo = self.get_geography(self.geo_id)
            if geo:
                try:
                    # if possible, redirect to slugged URL
                    slug = slugify(geo['properties']['display_name'])
                    return HttpResponseRedirect(
                        reverse('geography_detail', args=(self.geo_id, slug))
                    )
                except:
                    # if we have a strange situation where there's no
                    # display name attached to the geography, we should
                    # go ahead and display the profile page
                    pass
            else:
                # if we get nothing from the API, pass through for 404
                pass

        return super(GeographyDetailView, self).dispatch(*args, **kwargs)

    def get_geography(self, geo_id):
        endpoint = settings.API_URL + '/1.0/geo/tiger2012/%s' % self.geo_id
        r = requests.get(endpoint)
        status_code = r.status_code

        if status_code == 200:
            geo_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
            return geo_data
        return None

    def s3_keyname(self, geo_id):
        return '/1.0/data/profiles/%s.json' % geo_id

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
        s3_key.storage_class = 'REDUCED_REDUNDANCY'

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


## TOPICS ##

'''
Hey, it's a CMS!

Title/slug/description will be used to create the list page at /topics/

Title/description will also be used to create the header on the detail page
at /topics/{{ slug }}/. The contents of an individual page should go inside
{{ template_name }}, which belongs in /templates/topics.

Screenshots of survey questions should be placed in /static/img/questions,
and the filenames listed in {{ question_images }} for each entry.

Possible topics for matching table metadata:

    'topics': ['poverty', 'health insurance', 'marital status', 'citizenship', 'mortgage', 'occupancy', 'education', 'sex', 'public assistance', 'income', 'disability', 'migration', 'housing', 'family type', 'group quarters', 'physical characteristics', 'employment', 'commute', 'tenure', 'place of birth', 'fertility', 'veterans', 'families', 'costs and value', 'language', 'technical', 'roommates', 'children', 'grandparents', 'age', 'race', 'seniors', 'ancestry']
'''
TOPICS_LIST = [
    {
        'title': 'Age and Sex',
        'slug': 'age-sex',
        'topics': ['sex', 'children', 'age', 'seniors'],
        'description': 'How the Census approaches the topics of age and sex.',
        'template_name': 'age_sex.html',
        'question_images': ['age-sex.png',],
        'question_pdfs': [
            ('Age','http://www.census.gov/acs/www/Downloads/QbyQfact/age.pdf'),
            ('Sex','http://www.census.gov/acs/www/Downloads/QbyQfact/sex.pdf')
        ]
    },

    {
        'title': 'Children',
        'slug': 'children',
        'topics': ['family type', 'families', 'children'],
        'description': 'Tables concerning Children. Helpful to consider in relation to Families.',
        'template_name': 'children.html',
        'question_images': ['relationship.png',],
        'question_pdfs': [
            ('Questions on Family Relationships','http://www.census.gov/acs/www/Downloads/QbyQfact/relationship.pdf'),
        ]
    },

    {
        'title': 'Commute',
        'slug': 'commute',
        'topics': ['employment', 'commute'],
        'description': 'Commute data from the American Community Survey.',
        'template_name': 'commute.html',
        'question_images': ['commuting.png',],
        'question_pdfs': [
            ('Vehicles Available','http://www.census.gov/acs/www/Downloads/QbyQfact/vehicle.pdf'),
            ('Place of Work and Journey to Work','http://www.census.gov/acs/www/Downloads/QbyQfact/PJ_work.pdf')
        ]
    },

       {
        'title': 'Families',
        'slug': 'families',
        'topics': ['family type', 'families', 'marital status'],
        'description': 'Families are an important topic in the ACS and a key framework for considering many kinds of data.',
        'template_name': 'families.html',
        'question_images': ['relationship.png',],
        'question_pdfs': [
            ('ACS Question on Householder Relationships','http://www.census.gov/acs/www/Downloads/QbyQfact/relationship.pdf'),
        ]
    },

    {
        'title': 'Geography',
        'slug': 'geography',
        'description': "Geography is fundamental to the Census Bureau's process of tabulating data. Here are the key concepts you need to understand.",
        'template_name': 'geography.html',
    },

    {
        'title': 'Health Insurance',
        'slug': 'health-insurance',
        'topics': ['health insurance',],
        'description': 'The ACS has a number of questions that deal with health insurance and many corresponding tables.',
        'template_name': 'health-insurance.html',
        'question_images': ['health-insurance.png',],
        'question_pdfs': [
            ('Questions on Health Insurance Coverage','http://www.census.gov/acs/www/Downloads/QbyQfact/health_insurance.pdf'),
        ]
    },

    {
        'title': 'Race and Hispanic Origin',
        'slug': 'race-hispanic',
        'topics': ['race',],
        'description': 'Race is a complex issue, and no less so with Census data. A large proportion of Census tables are broken down by race.',
        'template_name': 'race_hispanic.html',
        'question_images': ['race.png',],
        'question_pdfs': [
            ('Race','http://www.census.gov/acs/www/Downloads/QbyQfact/race.pdf'),
            ('Hispanic or Latino Origin','http://www.census.gov/acs/www/Downloads/QbyQfact/hispanic.pdf')
        ]
    },

    {
        'title': 'Migration',
        'slug': 'migration',
        'topics': ['migration', 'tenure'],
        'description': 'How the Census deals with migration data.',
        'template_name': 'migration.html',
         'question_images': ['migration.png',],
        'question_pdfs': [
            ('Questions related to Residence One Year Ago from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/residence.pdf')

        ]
    },

    {
        'title': 'Poverty',
        'slug': 'poverty',
        'topics': ['poverty', 'public assistance', 'income'],
        'description': 'Poverty data and how it is used within the ACS.',
        'template_name': 'poverty.html',
         'question_images': ['income.png',],
        'question_pdfs': [
            ('Questions related to Income and Poverty from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/income.pdf')

        ]
    },

    {
        'title': 'Public Assistance',
        'slug': 'public-assistance',
        'topics': ['poverty', 'public assistance'],
        'description': 'Public assistance data from the ACS.',
        'template_name': 'public-assistance.html',
         'question_images': ['public-assistance.png',],
        'question_pdfs': [
            ('Questions on Income Sources from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/income.pdf'),
            ('Question about Food Stamps from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/food_stamp.pdf')

        ]
    },

    {
        'title': 'Same-Sex Couples',
        'slug': 'same-sex',
        'topics': ['marital status',],
        'description': 'Although Census does not ask about them directly, there are a number of ways to get at data about same-sex couples using ACS data.',
        'template_name': 'same-sex.html',
        'question_images': ['same-sex.png',],
        'question_pdfs': [
            ('Questions on Relationships from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/relationship.pdf'),
            ('Question on Gender from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/sex.pdf')
        ]
    },

    {
        'title': 'Income',
        'slug': 'income',
        'topics': ['poverty', 'income'],
        'description': 'How the Census approaches the topic of income.',
        'template_name': 'income.html',
        'question_images': ['income.png',],
        'question_pdfs': [
            ('All Income Questions from the Census','http://www.census.gov/acs/www/Downloads/QbyQfact/income.pdf')
        ]
    },

    {
        'title': 'Table Codes',
        'slug': 'table-codes',
        'description': 'While Census Reporter hopes to save you from the details, you may be interested to understand some of the rationale behind American Community Survey table identifiers.',
        'template_name': 'table-codes.html',
    },

    {
        'title': 'Employment',
        'slug': 'employment',
        'topics': ['income', 'employment'],
        'description': 'While the ACS is not always the best source for employment data, it provides interesting information for small geographies that other sources don&rsquo;t cover.',
        'short_description': 'Interesting information for small geographies that other sources don&rsquo;t cover.',
        'template_name': 'employment.html',
        'question_images': ['employment.png',],
        'question_pdfs': [
            ('Labor Force Status','http://www.census.gov/acs/www/Downloads/QbyQfact/labor.pdf'),
            ('Work Status','http://www.census.gov/acs/www/Downloads/QbyQfact/work_status.pdf'),
            ('Class of Worker; Industry; Occupation','http://www.census.gov/acs/www/Downloads/QbyQfact/worker.pdf'),
        ]
    },

    {
        'title': 'Seniors',
        'slug': 'seniors',
        'topics': ['grandparents', 'seniors'],
        'description': 'In addition to basic Census data about age, there are a small number of Census tables which focus directly on data about older Americans, and on grandparents as caregivers.',
        'short_description': 'Data about older Americans, and on grandparents as caregivers.',
        'template_name': 'seniors.html',
        'question_images': ['seniors.png',],
        'question_pdfs': [
            ('Age','http://www.census.gov/acs/www/Downloads/QbyQfact/age.pdf'),
            ('Grandparents as Caregivers','http://www.census.gov/acs/www/Downloads/QbyQfact/grandparents.pdf'),
        ]
    },
]

TOPICS_MAP = { topic['slug']: topic for topic in TOPICS_LIST }

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
                'topics_list': [v for k, v in sorted(TOPICS_MAP.items())],
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
        self.geo_ids = self.request.GET.get('geo_ids', 'country-SA')
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
        download_link_prefix = '/api/1.0/data/download/latest?table_ids=%s&geo_ids=%s' % (self.table, self.geo_ids)

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
            'topics_list': [v for k, v in sorted(TOPICS_MAP.items())],
        }

        return page_context


class ComparisonBuilder(TemplateView):
    template_name = 'compare/comparison_builder.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'hide_nav_compare': True,
        }

        page_context.update({
            'topic_demographic_filters': TOPIC_FILTERS['Demographics'],
            'topic_economic_filters': TOPIC_FILTERS['Economics'],
            'topic_family_filters': TOPIC_FILTERS['Families'],
            'topic_housing_filters': TOPIC_FILTERS['Housing'],
            'topic_social_filters': TOPIC_FILTERS['Social'],
            'sumlev_choices': SUMLEV_CHOICES,
            'sumlev_standard_choices': SUMLEV_CHOICES['Standard'],
            'sumlev_legislative_choices': SUMLEV_CHOICES['Legislative'],
            'sumlev_school_choices': SUMLEV_CHOICES['Schools'],
        })

        return page_context


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

class Elasticsearch(TemplateView):
    template_name = 'search/elasticsearch.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2012 1-Year', 'ACS 2012 3-Year', 'ACS 2012 5-Year']
        }
        tables = None
        columns = None
        geo_select = self.request.GET.get('g')
        table_select = self.request.GET.get('table_select')

        if geo_select:
            api_endpoint = settings.API_URL + '/1.0/geo/elasticsearch'
            api_params = {
                'q': geo_select,
            }
            r = requests.get(api_endpoint, params=api_params)
            status_code = r.status_code

            #print r.url
            if status_code == 200:
                data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
                page_context['geos'] = data['results']
                page_context['g'] = geo_select
            elif status_code == 404 or status_code == 400:
                error_data = simplejson.loads(r.text)
                raise_404_with_messages(self.request, error_data)
            else:
                raise Http404
        elif table_select:
            api_endpoint = settings.API_URL + '/1.0/table/elasticsearch'
            api_params = {
                'q': table_select,
            }
            r = requests.get(api_endpoint, params=api_params)
            status_code = r.status_code

            if status_code == 200:
                data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
                page_context['tables'] = data['results']
            elif status_code == 404 or status_code == 400:
                error_data = simplejson.loads(r.text)
                raise_404_with_messages(self.request, error_data)
            else:
                raise Http404

        return page_context

class GeoSearch(TemplateView):
    template_name = 'search/geo_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2012 1-Year', 'ACS 2012 3-Year', 'ACS 2012 5-Year']
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
        status_code = r.status_code

        if status_code == 200:
            data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        elif status_code == 404 or status_code == 400:
            error_data = simplejson.loads(r.text)
            raise_404_with_messages(self.request, error_data)
        else:
            raise Http404

        return data['results']

    def get_context_data(self, *args, **kwargs):
        page_context = {}
        lat = self.request.GET.get('lat', None)
        lon = self.request.GET.get('lon', None)

        if lat and lon:
            places = get_locations_from_coords(latitude=lat, longitude=lon)
            page_context.update({
                'location': {
                    'lat': lat,
                    'lon': lon
                },
                'places': places
            })

        return page_context
