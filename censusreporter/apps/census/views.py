from __future__ import division
import requests
import unicodecsv
from collections import OrderedDict
from numpy import median
from urllib import urlencode
from urllib2 import unquote

from django.conf import settings
from django.core.urlresolvers import reverse
from django.db.models import Q
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import get_object_or_404
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.views.generic import View, TemplateView

from .models import Geography, Table, Column, SummaryLevel
from .utils import LazyEncoder, get_max_value, get_ratio, get_object_or_none,\
    SUMMARY_LEVEL_DICT, NLTK_STOPWORDS, TOPIC_FILTERS, SUMLEV_CHOICES, ACS_RELEASES

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

### HEALTH CHECK ###

class HealthcheckView(TemplateView):
    template_name = 'healthcheck.html'

### DETAIL ###

class GeographyDetailView(TemplateView):
    template_name = 'profile/profile.html'

    def enhance_api_data(self, api_data):
        dict_list = find_dicts_with_key(api_data, 'values')

        for d in dict_list:
            raw = {}
            enhanced = {}
            geo_value = d['values']['this']
            num_comparatives = 2

            # create our containers for transformation
            for obj in ['values', 'error', 'numerators', 'numerator_errors']:
                raw[obj] = d[obj]
                enhanced[obj] = OrderedDict()
            enhanced['index'] = OrderedDict()
            enhanced['error_ratio'] = OrderedDict()
            comparative_sumlevs = []

            # enhance
            for sumlevel in ['this', 'place', 'CBSA', 'county', 'state', 'nation']:

                # favor CBSA over county, but we don't want both
                if sumlevel == 'county' and 'CBSA' in enhanced['values']:
                    continue

                # add the index value for comparatives
                if sumlevel in raw['values']:
                    enhanced['values'][sumlevel] = raw['values'][sumlevel]
                    enhanced['index'][sumlevel] = get_ratio(geo_value, raw['values'][sumlevel])
                    
                    # add to our list of comparatives for the template to use
                    if sumlevel != 'this':
                        comparative_sumlevs.append(sumlevel)

                # add the moe ratios
                if (sumlevel in raw['values']) and (sumlevel in raw['error']):
                    enhanced['error'][sumlevel] = raw['error'][sumlevel]
                    enhanced['error_ratio'][sumlevel] = get_ratio(raw['error'][sumlevel], raw['values'][sumlevel], 3)

                # add the numerators and numerator_errors
                if sumlevel in raw['numerators']:
                    enhanced['numerators'][sumlevel] = raw['numerators'][sumlevel]

                if (sumlevel in raw['numerators']) and (sumlevel in raw['numerator_errors']):
                    enhanced['numerator_errors'][sumlevel] = raw['numerator_errors'][sumlevel]

                if len(enhanced['values']) >= (num_comparatives + 1):
                    break

            # replace data with enhanced version
            for obj in ['values', 'index', 'error', 'error_ratio', 'numerators', 'numerator_errors']:
                d[obj] = enhanced[obj]

            api_data['geography']['comparatives'] = comparative_sumlevs

        return api_data

    def get_context_data(self, *args, **kwargs):
        geography_id = kwargs['geography_id']

        page_context = {
            'state_fips_code': None,
            'geography_fips_code': None,
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
        acs_endpoint = settings.API_URL + '/1.0/latest/%s/profile' % kwargs['geography_id']
        r = requests.get(acs_endpoint)

        if r.status_code == 200:
            profile_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
            profile_data = self.enhance_api_data(profile_data)
            page_context.update(profile_data)
            page_context.update({
                'profile_data_json': SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))
            })
        else:
            raise Http404

        # Put this down here to make sure geoid is valid before using it
        page_context['geoid'] = geography_id

        tiger_release = 'tiger2012'
        geo_endpoint = settings.API_URL + '/1.0/geo/%s/%s' % (tiger_release, kwargs['geography_id'])
        r = requests.get(geo_endpoint)

        if r.status_code == 200:
            geo_metadata = simplejson.loads(r.text)['properties']
            page_context['geo_metadata'] = geo_metadata

            # add a few last things
            # make square miles http://www.census.gov/geo/www/geo_defn.html#AreaMeasurement
            square_miles = round(float(geo_metadata['aland']) / float(2589988), 1)
            total_pop = page_context['geography']['this']['total_population']
            page_context['geo_metadata']['square_miles'] = square_miles
            page_context['geo_metadata']['population_density'] = round(float(total_pop) / float(square_miles), 1)

        return page_context


### COMPARISONS ###

# All the basic utilities for massaging API data into comparisons.
# Other views should inherit and override `dispatch`, for instance.
class BaseComparisonView(TemplateView):
    def get_api_data(self, geom=False):
        '''
        Retrieves data from the comparison endpoint at api.censusreporter.org.
        '''
        API_ENDPOINT = settings.API_URL + '/1.0/data/compare/%s/%s' % (self.release, self.table_id)
        API_PARAMS = {
            "within": self.parent_id,
            "sumlevel": self.descendant_sumlev
        }
        if geom:
            API_PARAMS.update({'geom': True})

        r = requests.get(API_ENDPOINT, params=API_PARAMS)

        if r.status_code == 200:
            data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
        else:
            raise Http404

        return data

    def get_context_data(self, *args, **kwargs):
        '''
        The workhorse in this view. Uses the format argument to determine
        which template to render, as well as which method to use for reshaping
        the API response data properly for visualization.
        '''
        page_context = {
            'parent_id': self.parent_id,
            'release': self.release,
            'parent_fips_code': self.parent_fips_code,
            'descendant_sumlev': self.descendant_sumlev,
            'format': self.format,
            'hide_nav_compare': True,
        }

        if self.format:
            self.template_name = 'compare/comparison_%s.html' % self.format

        if self.format == 'table':
            comparison_data = self.get_api_data()
            cleaned_table = self.clean_table(comparison_data['table'])
            page_context.update(
                self.generate_table_values(
                    comparison_data['child_geographies'],
                    cleaned_table
                )
            )

        elif self.format == 'map':
            comparison_data = self.get_api_data(geom=True)
            cleaned_table = self.clean_table(comparison_data['table'])
            page_context.update(
                self.generate_map_values(
                    comparison_data['child_geographies'],
                    comparison_data['parent_geography'],
                    cleaned_table
                )
            )

        elif self.format == 'distribution':
            comparison_data = self.get_api_data()
            cleaned_table = self.clean_table(comparison_data['table'])
            page_context.update(
                self.generate_distribution_values(
                    comparison_data['child_geographies'],
                    cleaned_table
                )
            )
        else:
            # fall back to generic compare page
            comparison_data = self.get_api_data()

        # add some metadata about the comparison
        comparison_metadata = comparison_data['comparison']
        comparison_metadata['parent_geography'] = comparison_data['parent_geography']
        comparison_metadata['descendant_type'] = SUMMARY_LEVEL_DICT[self.descendant_sumlev]

        # all the descendants being compared
        descendant_list = sorted(
            [(geoid, child['geography']['name']) for (geoid, child) in comparison_data['child_geographies'].iteritems()]
        )

        self.parent_data = comparison_data['parent_geography']['data']

        page_context.update({
            'descendant_list': descendant_list,
            'comparison_metadata': comparison_metadata,
            'table': comparison_data['table'],
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

    def clean_table(self, table):
        '''
        Removes non-data headers that are the first field in the table,
        which simply duplicate information from the table name.
        '''
        for (column_id, column) in table['columns'].iteritems():
            if column_id.endswith('000.5'):
                del table['columns'][column_id]

        return table

    def clean_child_data(self, data):
        '''
        Removes certain geographies from comparison data, when their sumlev
        would include them in a way that's confusing to the user.

        E.g., comparing "all states in the United States" would return
        Puerto Rico and Washington, D.C., because, like states, they are
        sumlev 040.
        '''
        _parent_id = getattr(self, 'parent_id', None)
        _descendant_sumlev = getattr(self, 'descendant_sumlev', None)

        # for map & distribution charts where user is comparing states
        # in the United States, remove Puerto Rico and D.C.
        if _parent_id == '01000US' and _descendant_sumlev == '040':
            del data['04000US11']
            del data['04000US72']

        return data

    def get_percentify(self, table):
        '''
        Determines whether a table is suitable for presenting values in
        percentages. (E.g., tables that contain raw numbers, not medians.)

        Returns the ID of the denominator column when appropriate (which
        is truthy for boolean purposes), or an empty string if a table
        should not be percentified (which makes sure there's an empty
        value for javascript in the template).
        '''
        if table['denominator_column_id']:
            denominator_id = table['denominator_column_id']
            percentify = {
                'denominator_column_id': denominator_id,
                'denominator_column': table['columns'][denominator_id],
            }
            return percentify
        return ''

    def get_denominator_value(self, data, percentify=None, pop=False):
        '''
        Utility method that determines which field in a table represents
        a "total" value, suitable for use in generating a percentage figure.
        Optionally pops this value out of the data that is passed in,
        to avoid displaying it in a percentage-based visualization.
        '''
        if not percentify:
            return None

        percentify_column = percentify['denominator_column_id']
        if pop:
            total_value = data.pop(percentify_column)
        else:
            total_value = data[percentify_column]

        return total_value

    def get_total_and_pct(self, value, denominator):
        '''
        Utility method that takes a data value and a denominator value,
        then returns the value along with its percentage of the total.
        Normalizes math for percentage-based visualizations.
        '''
        if value is not None and denominator is not None:
            if denominator != 0:
                percentage = round((value / denominator)*100, 1)
            else:
                percentage = 0
        else:
            # blanking out values here for geographies with no data.
            # alternatively, we could provide templates with 'n/a.'
            percentage = None
            if not value:
                value = None

        return value, percentage

    def make_table_values_by_geo(self, data, table, percentify=False):
        '''
        Returns a list of dicts that can be turned into a data grid,
        where rows are geographies and columns are fields in the table.
        '''
        values_by_geo = []
        for (geoid, child) in data.iteritems():
            name = child['geography']['name']
            total_value = self.get_denominator_value(child['data'], percentify)
            # build item for values_by_geo
            geo_item = {
                'name': name,
                'geoID': geoid,
                'total_value': total_value,
                'values': OrderedDict(),
            }

            for (column_id, column) in table['columns'].iteritems():
                column_key = column_id.upper()

                if '.' in column_id:
                    geo_item['values'].update({
                        column_key: {
                            'value': None,
                            'value_alt': None,
                        }
                    })
                else:
                    if percentify:
                        value = child['data'][column_id]
                        total, total_pct = self.get_total_and_pct(value, total_population)

                        geo_item['values'].update({
                            column_key: {
                                'value': total_pct,
                                'value_alt': total,
                            }
                        })
                    else:
                        geo_item['values'].update({
                            column_key: {
                                'value': child['data'][column_id],
                            }
                        })

            values_by_geo.append(geo_item)

        column_names = []
        for (column_id, column) in table['columns'].iteritems():
            name = column['name']
            column_names.append(name)

        return column_names, values_by_geo

    def make_table_values_by_field(self, data, table, percentify=False):
        '''
        Returns a list of dicts that can be turned into a data grid,
        where rows are fields in the table and columns are geographies.
        '''
        values_by_field = []
        for (column_id, column) in table['columns'].iteritems():
            field_item = {
                'name': column['name'],
                'column_id': column_id,
                'indent': column['indent'],
                'values': OrderedDict(),
            }

            for (geoID, values) in data.iteritems():
                # keep the non-data headers in place for layout
                if '.' in column_id:
                    field_item['values'][geoID] = {
                        'value': None,
                        'value_alt': None,
                    }
                else:
                    if percentify:
                        total_value = self.get_denominator_value(values['data'], percentify)
                        total, total_pct = self.get_total_and_pct(values['data'][column_id], total_value)

                        field_item['values'][geoID] = {
                            'value': total,
                            'value_alt': total_pct,
                        }
                    else:
                        field_item['values'][geoID] = {
                            'value': values['data'][column_id],
                        }

            values_by_field.append(field_item)

        geo_names = []
        for (geoID, values) in data.iteritems():
            geo_names.append({
                'name': values['geography']['name'],
                'geoid': geoID,
            })

        return geo_names, values_by_field

    def generate_table_values(self, data, table):
        '''
        Reshapes API response data for presentation in table format.
        '''
        percentify = self.get_percentify(table)
        geo_names, values_by_field = self.make_table_values_by_field(data, table, percentify)
        table_values = {
            'percentify': percentify,
            'geo_names': geo_names,
            'values_by_field': values_by_field,
        }

        return table_values

        # TRANSPOSED VERSION: COLUMN NAMES ACROSS, GEO ROWS DOWN
        #column_names, values_by_geo = self.make_table_values_by_geo(data, table)
        #return {
        #    'column_names': column_names,
        #    'values_by_geo': values_by_geo,
        #}

    def enhance_table_metadata(self, table):
        '''
        Makes column names easier to read in isolation by prefixing names
        based on column indent levels.
        '''
        prefix_pieces = OrderedDict()
        for column in table['columns']:
            indent = table['columns'][column]['indent']
            name = table['columns'][column]['name']
            table['columns'][column]['full_name'] = name

            # only add prefixes for columns at an indent deep
            if indent > 0:
                # sometimes indents skip straight from 0 to 2, so we need
                # to handle the potential for missing keys in `prefix_pieces`
                prefix = ': '.join(filter(bool, [prefix_pieces.get(_indent) for _indent in range(0, indent)]))
                if prefix:
                    #table['columns'][column]['name'] = '%s: %s' % (prefix, name)
                    table['columns'][column]['full_name'] = '%s: %s' % (prefix, name)

            prefix_pieces[indent] = name.strip(':')

        return table

    def generate_map_values(self, data, parent, table):
        '''
        Reshapes API response data for presentation in a choropleth map.
        '''
        percentify = self.get_percentify(table)
        data = self.clean_child_data(data)

        data_groups = OrderedDict()
        child_shapes = []
        try:
            parent_shape = parent['geography']['geometry']
        except:
            # maybe we don't have the parent shape
            parent_shape = None

        for (geoid, child) in data.iteritems():
            name = child['geography']['name']
            geoID = geoid.split('US')[1]

            # add the shape to our list
            if 'geometry' in child['geography']:
                shape_item = child['geography']['geometry']
                shape_item.update({
                    'id': geoID
                })
                child_shapes.append(shape_item)

            if percentify:
                # only need to get total_population once, so outside loop
                total_value = self.get_denominator_value(child['data'], percentify, pop=percentify)

            for column_id, value in child['data'].iteritems():
                if not column_id in data_groups:
                    data_groups[column_id] = {}

                # TODO This will need MOE, etc.
                data_groups[column_id].update({
                    geoID: {
                        'name': name,
                        'value': value,
                    }
                })
                if percentify:
                    value, percentage = self.get_total_and_pct(value, total_value)

                    data_groups[column_id][geoID].update({
                        'percentage': percentage,
                    })

        # improve column names, and pop the table's first column if necessary
        table = self.enhance_table_metadata(table)
        table_pop = self.get_denominator_value(table['columns'], percentify, pop=percentify)

        map_values = {
            'percentify': percentify,
            'map_data': SafeString(simplejson.dumps(data_groups, cls=LazyEncoder)),
            'table_data': SafeString(simplejson.dumps(table, cls=LazyEncoder)),
            'parent_shape': SafeString(simplejson.dumps(parent_shape, cls=LazyEncoder)),
            'child_shapes': SafeString(simplejson.dumps(child_shapes, cls=LazyEncoder)),
        }

        return map_values

    def generate_distribution_values(self, data, table):
        '''
        Reshapes API response data for presentation in distribution charts,
        aka "circles on a line."
        '''
        percentify = self.get_percentify(table)
        data = self.clean_child_data(data)
        table = self.enhance_table_metadata(table)

        distribution_groups = OrderedDict()

        # Create the initial list of data columns, including non-data subheads
        for (column_id, column) in table['columns'].iteritems():
            distribution_groups[column_id] = {
                'column_name': table['columns'][column_id]['full_name'],
                'column_indent': table['columns'][column_id]['indent'] - 1,
                'group_baselines': {},
                'group_values': {},
            }
            if '.' in column_id:
                distribution_groups[column_id].update({
                    'subhead': True,
                })

        table_pop = self.get_denominator_value(distribution_groups, percentify, pop=percentify)

        # add data values from each child geography
        # to each column's `group_values` dict
        for (geoid, child) in data.iteritems():
            name = child['geography']['name']
            if percentify:
                # Only need to get total_population once, so do this outside loop. If values
                # will be presented as percentages, we don't need the denominator column.
                total_value = self.get_denominator_value(child['data'], percentify, pop=percentify)

            for column_id, value in child['data'].iteritems():
                if value:
                    distribution_groups[column_id]['group_values'].update({
                        geoid: {
                            'name': name,
                            'value': value,
                        }
                    })
                    if percentify:
                        # If table can be percentified, the primary value
                        # for this type of chart should be the percentage
                        total, total_pct = self.get_total_and_pct(value, total_value)
                        distribution_groups[column_id]['group_values'][geoid].update({
                            'value': total_pct,
                            'value_alt': total,
                        })
                else:
                    #TODO: Perhaps provide an "insufficient data for <geoID>" message if no value
                    #see http://api.censusreporter.org/1.0/data/compare/acs2012_5yr/B01002?sumlevel=950&within=01000US
                    pass

        if percentify:
            field_list = ['value', 'value_alt',]
        else:
            field_list = ['value',]

        for chart, chart_values in distribution_groups.items():
            for field in field_list:
                # skip the non-data subheads
                if chart_values['group_values']:
                    values_list = [
                        value[field] for geo, value in chart_values['group_values'].iteritems()
                    ]

                    # get the min, max, median and range values
                    # for this column within this group of geographies
                    max_value = max(values_list)
                    min_value = min(values_list)
                    domain_range = max_value - min_value
                    median_value = median(values_list)
                    median_percent_of_range = ((median_value - min_value) / domain_range)*100
                    chart_values['group_baselines']['max_%s' % field] = max_value
                    chart_values['group_baselines']['min_%s' % field] = min_value
                    chart_values['group_baselines']['domain_range_%s' % field] = domain_range
                    chart_values['group_baselines']['median_%s' % field] = median_value
                    chart_values['group_baselines']['median_percent_of_range_%s' % field] = round(median_percent_of_range,1)
                    # add a percent of range value for plotting each point along the x axis
                    for geo, value in chart_values['group_values'].items():
                        if domain_range != 0:
                            percentage = ((value[field] - min_value) / domain_range)*100
                        else:
                            percentage = 0
                        value['percent_of_range_%s' % field] = round(percentage,1)

        distribution_values = {
            'percentify': percentify,
            'distribution_groups': distribution_groups,
        }

        return distribution_values


class ComparisonView(BaseComparisonView):
    template_name = 'compare/comparison_table.html'

    def dispatch(self, *args, **kwargs):
        self.parent_id = self.kwargs['parent_id']
        self.parent_fips_code = self.parent_id.split('US')[1]
        self.descendant_sumlev = self.kwargs['descendant_sumlev']
        self.format = self.kwargs.get('format', None)

        # if we have no format, fall back to table view
        if not self.format:
            return HttpResponseRedirect(
                reverse('geography_comparison_detail', args=(self.parent_id, self.descendant_sumlev, 'table'))
            )

        # if we have no table, 404
        if 'table' in self.request.GET:
            self.table_id = self.request.GET['table']
        else:
            raise Http404

        # if we have no release, determine best one
        if 'release' in self.request.GET:
            self.release = self.request.GET['release']
        else:
            COUNTS_API = 'http://api.censusreporter.org/1.0/table/compare/rowcounts/%s' % self.table_id
            COUNTS_API_PARAMS = {
                'year': '2012',
                'sumlevel': self.descendant_sumlev,
                'within': self.parent_id,
            }
            r = requests.get(COUNTS_API, params=COUNTS_API_PARAMS)

            if r.status_code == 200:
                counts_data = simplejson.loads(r.text, object_pairs_hook=dict)
                counts = sorted(counts_data.items(), key=lambda item: item[1]['results'], reverse=True)

                url = reverse('geography_comparison_detail', args=(self.parent_id, self.descendant_sumlev, self.format))
                url_params = {
                    'table': self.table_id,
                    'release': counts[0][1]['release_slug']
                }
                
                return HttpResponseRedirect(url + '?' + urlencode(url_params))
            else:
                raise Http404

        # if we need a downloadable format, provide it straightaway
        if self.format == 'json':
            comparison_data = self.get_api_data()
            return render_json_to_response(comparison_data)

        elif self.format == 'csv':
            comparison_data = self.get_api_data()
            cleaned_table = self.clean_table(comparison_data['table'])
            columns, rows = self.make_table_values_by_geo(
                comparison_data['child_geographies'],
                cleaned_table,
                percentify=False
            )
            filename = '%s_%s_%s_in_%s.csv' % (self.release, self.table_id, self.descendant_sumlev, self.parent_id)
            response = HttpResponse(content_type='text/csv')
            response['Content-Disposition'] = 'attachment; filename="%s"' % filename

            writer = unicodecsv.writer(response, encoding='utf-8')
            writer.writerow(['Name','GeoID'] + columns)
            for row in rows:
                writer.writerow(
                    [row['name'], row['geoID']] + [values['value'] for field, values in row['values'].items()]
                )
            return response

        return super(ComparisonView, self).dispatch(*args, **kwargs)


class HomepageView(TemplateView):
    template_name = 'homepage.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'hide_nav_tools': True,
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
            'acs_releases': ACS_RELEASES[:3],
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

class TableSearch(TemplateView):
    template_name = 'search/table_search.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {
            'release_options': ['ACS 2012 1-Year', 'ACS 2012 3-Year', 'ACS 2012 5-Year']
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
