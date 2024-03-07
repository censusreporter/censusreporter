from django.core.handlers import exception
from collections import OrderedDict, defaultdict
from urllib.parse import quote
import io
import gzip
import re
import redis
import requests_cache
from . import topics
import json
from datetime import datetime

from django.conf import settings
from django.contrib import messages
from django.urls import reverse
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import render
from django.template import loader, TemplateDoesNotExist
from django.utils.safestring import SafeString
from django.utils.text import slugify
from django.views.generic import View, TemplateView

from .utils import (
    parse_table_id,
    TOPIC_FILTERS,
    SUMLEV_CHOICES,
    ACS_RELEASES,
)
from .profile import geo_profile, enhance_api_data
from .topics import TOPICS_MAP, TOPIC_GROUP_LABELS, sort_topics

from boto.s3.connection import S3Connection, OrdinaryCallingFormat
from boto.s3.key import Key


import logging
logging.basicConfig()
logger = logging.getLogger(__name__)

r_session = requests_cache.CachedSession(
    backend=requests_cache.RedisCache(connection=redis.StrictRedis.from_url(getattr(settings, 'REDIS_URL'))),
    cache_name='censusreporter_cache',
    expire_after=requests_cache.NEVER_EXPIRE,
)
r_session.headers.update({'User-Agent': 'censusreporter.org frontend'})


# UTILS

def render_json_to_response(context):
    '''
    Utility method for rendering a view's data to JSON response.
    '''
    result = json.dumps(context, sort_keys=False, indent=4)
    return HttpResponse(result, content_type='application/javascript')


def capitalize_first(str):
    """Capitalizes only the first letter of the given string.

    :param str: string to capitalize
    :return: str with only the first letter capitalized
    """
    if str == "":
        return ""
    return str[0].upper() + str[1:]

# HEALTH CHECK


class HealthcheckView(TemplateView):
    template_name = 'healthcheck.html'


# ERRORS

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
        self.tabulation_code = re.sub(r"\D", "", self.table_code)

        try:
            return super(TableDetailView, self).dispatch(*args, **kwargs)
        except Http404 as e:
            # Check if core table doesn't exist, but has iterations; if so,
            # redirect to the first iteration.
            if table_argument.endswith('PR'):
                table_argument = table_argument.replace('PR', 'APR')
            else:
                table_argument = table_argument + 'A'
            endpoint = f"{settings.API_URL}/2.0/table/latest/{table_argument}"

            if r_session.get(endpoint).status_code == 200:
                return HttpResponseRedirect(
                    reverse('table_detail', args=(table_argument,))
                )
            raise e

    def get_tabulation_data(self, table_code):
        endpoint = f"{settings.API_URL}/1.0/tabulation/{table_code}"
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
        default_table = defaultdict(table_dict_factory)
        default_table_groups = defaultdict(table_ordereddict_factory)
        default_table_list = defaultdict(table_ordereddict_factory)

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
                                 key=lambda code: len(code))
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

        for group, group_values in tables.items():
            preview_table = next(iter(group_values.items()))[0]
            try:
                tabulation_data['related_tables']['preview'][preview_table] = self.get_table_data(preview_table)
                tabulation_data['related_tables']['preview'][preview_table]['table_type'] = self.TABLE_TYPE_TRANSLATE_DICT[preview_table.upper()[0]]
            except ValueError:
                continue

        return tabulation_data

    def get_topic_pages(self, table_topics):
        related_topic_pages = []
        for key, values in TOPICS_MAP.items():
            topics = values.get('topics', [])
            matches = set(topics).intersection(table_topics)
            if matches:
                related_topic_pages.append((key, TOPICS_MAP[key]['title']))

        return related_topic_pages

    def get_table_data(self, table_code):
        endpoint = f"{settings.API_URL}/2.0/table/latest/{table_code}"
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

    def parse_fragment(self, fragment):
        """Given a URL, return a (geoid,slug) tuple. slug may be None.
        GeoIDs are not tested for structure, but are simply the part of the URL
        before any '-' character, also allowing for the curiosity of Vermont
        legislative districts.
        (see https://github.com/censusreporter/censusreporter/issues/50)
        """

        def handle_long_geoid(geo_id):
            """Census API uses seven characters for the 'sumlevel' part.
               See https://www.census.gov/programs-surveys/geography/guidance/geo-identifiers.html for more info
               Legislative district geoIDs sometimes have a strange bit in the first two characters
               after the sumlevel which we can't make sense of. Also, we only support component
               '00' so we just force to that.

               If we don't seem to have one of those, just pass back what we got unchanged.
            """
            parts = geo_id.split('US')

            if len(parts) == 2 and len(parts[0]) == 7:  # American Fact Finder style GeoID.
                sumlevel = parts[0][:3]
                identifier = parts[1]
                return "{}00US{}".format(sumlevel, identifier)
            return geo_id

        parts = fragment.split('-', 1)
        if len(parts) == 1:
            return (handle_long_geoid(fragment), None)

        geoid, slug = parts
        geoid = handle_long_geoid(geoid)
        if len(slug) == 1:
            geoid = '{}-{}'.format(geoid, slug)
            slug = None
        else:
            parts = slug.split('-')
            if len(parts) > 1 and len(parts[0]) == 1:
                geoid = '{}-{}'.format(geoid, parts[0])
                slug = '-'.join(parts[1:])

        return (geoid, slug)

    def dispatch(self, *args, **kwargs):

        self.geo_id, self.slug = self.parse_fragment(kwargs.get('fragment'))

        # checking geoid
        geography_info = self.get_geography(self.geo_id)
        if geography_info is None:
            raise Http404

        # checking slug
        calculated_slug = self.make_slug(geography_info)
        if self.slug != calculated_slug:
            fragment = '{}-{}'.format(self.geo_id, calculated_slug)
            path = reverse('geography_detail', args=(fragment,))
            self.canonical_url = self.request.build_absolute_uri(path)
            return HttpResponseRedirect(path)

        self.canonical_url = self.request.build_absolute_uri()
        return super(GeographyDetailView, self).dispatch(*args, **kwargs)

    def make_slug(self, geo):
        if geo:
            try:
                # get slug from geo
                return slugify(geo['properties']['display_name'])
            except Exception as e:
                # if we have a strange situation where there's no
                # display name attached to the geography, we should
                # go ahead and display the profile page
                logger.warn(e)
                logger.warn("Geography {} has no display_name".format(self.geo_id))
                pass
        else:
            pass

    def make_canonical_url(self, geo_id):
        pass

    def get_geography(self, geo_id):
        endpoint = f"{settings.API_URL}/1.0/geo/tiger2022/{self.geo_id}"
        r = r_session.get(endpoint)
        status_code = r.status_code

        if status_code == 200:
            geo_data = r.json(object_pairs_hook=OrderedDict)
            return geo_data
        return None

    def get_context_data(self, *args, **kwargs):
        geography_id = self.geo_id
        profile_data = geo_profile(geography_id)

        if profile_data:
            profile_data = enhance_api_data(profile_data)

            profile_data_json = SafeString(json.dumps(profile_data))

        else:
            raise Http404

        page_context = {
            'profile_data_json': profile_data_json,
            'canonical_url': self.canonical_url
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
            except Exception:
                raise Http404
        else:
            page_context = {
                'topic': {
                    'title': 'Topics',
                    'slug': '',
                    'description': 'Pages describing the concepts and tables covered by the Census and American Community Survey.',
                },
                'topics_list': sort_topics(TOPICS_MAP),
                'topic_group_labels': TOPIC_GROUP_LABELS,
            }

        return page_context


# EXAMPLES

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


# COMPARISONS

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
        download_link_prefix = f"{settings.API_URL}/1.0/data/download/latest?table_ids={self.table}&geo_ids={self.geo_ids}"

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
        if settings.AWS_ACCESS_KEY_ID and settings.AWS_SECRET_ACCESS_KEY:
            s3 = S3Connection(settings.AWS_ACCESS_KEY_ID,
                              settings.AWS_SECRET_ACCESS_KEY,
                              calling_format=OrdinaryCallingFormat())
        else:
            try:
                s3 = S3Connection(calling_format=OrdinaryCallingFormat())
            except Exception:
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
        memfile = io.BytesIO()
        with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
            gzip_data.write(data.encode('utf-8'))
        memfile.seek(0)

        # store static version on S3
        s3_key.set_contents_from_file(memfile)


class MakeJSONView(View):
    def post(self, request, *args, **kwargs):
        post_data = self.request.POST

        if 'chart_data' in post_data:
            chart_data = json.loads(post_data['chart_data'], object_pairs_hook=OrderedDict)
        if 'geography' in post_data:
            geography = json.loads(post_data['geography'], object_pairs_hook=OrderedDict)
        if 'geo_metadata' in post_data:
            geo_metadata = json.loads(post_data['geo_metadata'], object_pairs_hook=OrderedDict)

        if 'params' in post_data:
            params = json.loads(post_data['params'])

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

        chart_data_json = SafeString(json.dumps(data))

        key_name = '/1.0/data/charts/{0}/{1}-{2}.json'.format(params['releaseID'], params['geoID'], params['chartDataID'])
        s3 = S3Conn()

        try:
            s3_key = s3.s3_key(key_name)
        except Exception:
            s3_key = None

        if s3_key and s3_key.exists():
            logger.debug(f'chart JSON already exists at {key_name}')
        elif s3_key:
            s3.write_json(s3_key, chart_data_json)
            logger.debug(f'wrote chart JSON to {key_name}')
        else:
            logger.warn("Could not save to S3 because there was no connection to S3.")
            return render_json_to_response({'success': 'false'})

        return render_json_to_response({'success': 'true'})


class SearchResultsView(TemplateView):
    template_name = 'search/results.html'

    def get_data(self, query):
        if not query:
            return {'results': [], 'has_query': False}

        search_data_all = {}

        cr_data = []
        search_url = f"{settings.API_URL}/2.1/full-text/search"
        cr_resp = r_session.get(search_url, params={"q": query, "limit": 1000})

        if cr_resp.status_code == 200:
            cr_data = cr_resp.json().get('results')
            cr_data = list(filter(lambda x: x.get('sumlevel') not in ['140', '150'], cr_data))
            search_data_all['has_query'] = True

        mb_data = []
        mapbox_accessToken = "pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiQV9hS01rQSJ9.wtsn0FwmAdRV7cckopFKkA"
        location_request_url = "https://api.tiles.mapbox.com/v4/geocode/mapbox.places/{0}.json"
        location_request_url = location_request_url.format(uniurlquote(query))
        mb_resp = r_session.get(location_request_url, params={"access_token": mapbox_accessToken, "country": "us,pr"})

        if mb_resp.status_code == 200:
            mb_data = mb_resp.json().get('features')
            search_data_all['has_query'] = True

        search_data_all['results'] = cr_data + mb_data

        if cr_resp.status_code != 200 and mb_resp != 200:
            error_data = {
                "location_err": mb_resp.text,
                "search_err": cr_resp.text,
            }
            raise_404_with_messages(self.request, error_data)

        return search_data_all

    def get_context_data(self, **kwargs):
        q = self.request.GET.get('q', None)
        page_context = self.get_data(q)  # format: { "results": [ ... ] }

        # Determine if types of pages exist (used for filtering)
        has_profiles = False
        has_tables = False
        has_addresses = False
        has_topics = False

        # Collect list of sumlevel names for filtering
        sumlevels = {}  # format: { sumlevel : [sumlevel_name, count] }

        # Collect list of topics for filtering
        all_topics = {}  # format: { topic_name: count}

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
                page_context['sumlevel_names'] = OrderedDict((value[0], value[1]) for key, value in sumlevels.items())

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


class UserGeographyDetailView(TemplateView):
    template_name = 'user_geo/detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        hash_digest = kwargs['hash_digest']

        endpoint = f'{settings.API_URL}/1.0/user_geo/{hash_digest}'
        r = r_session.get(endpoint)

        if r.status_code == 404:
            raise Http404
        if r.status_code == 200:
            user_geo_record = r.json(object_pairs_hook=OrderedDict)
            context['user_geo_record'] = user_geo_record
            context['hash_digest'] = hash_digest
            context['status'] = user_geo_record['status']
            context['public'] = user_geo_record['public']
            context['user_geo_name'] = user_geo_record.get('name','Untitled Geography')
            context['datasource_url'] = user_geo_record.get('source_url')
            context['created_at'] = datetime.fromtimestamp(user_geo_record['unix_timestamp'])
            context['message'] = 'OK'
            context['notes_html'] = user_geo_record.get('notes_html')
            context['status_endpoint'] = endpoint
            context['download_aggregate_url_base'] = f"{settings.API_URL}/1.0/aggregate/{ hash_digest }"
            context['download_user_geo_url_base'] = f"{settings.API_URL}/1.0/user_geo/{ hash_digest }"
            context['geojson'] = user_geo_record['geojson']
            existing_flag = self.request.GET.get('existing',False)
            context['existing_message'] = (existing_flag == 'true')
        else:
            print(f'ERROR: code {r.status_code}')
            context['message'] = f'ERROR: code {r.status_code}'
        return context

class Census2020View(TemplateView):
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        endpoint = f'{settings.API_URL}/1.0/user_geo/list'
        try:
            r = r_session.get(endpoint)

            if r.status_code == 404:
                raise Http404
            if r.status_code == 200:
                response = r.json()
                if response['ok']:
                    context['public_geos'] = response['geos']
        except Exception as e:
            context['message'] = f'ERROR: {e}'
        return context


def uniurlquote(s):
    """urllib2.quote doesn't tolerate unicode strings, so make sure to encode..."""
    return quote(s.encode('utf-8'))

def robots(request):
    BLOCK_ROBOTS = getattr(settings, 'BLOCK_ROBOTS', False)
    allow_or_not = 'Disallow' if BLOCK_ROBOTS else 'Allow'
    robots_txt = f"""
User-agent: *
{allow_or_not}: /
Disallow: /data/
crawl-delay: 3

Sitemap: https://censusreporter.org/static/sitemap/sitemap.xml
"""
    return HttpResponse(robots_txt,content_type="text/plain")
