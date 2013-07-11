from __future__ import division
import collections
import requests
from math import ceil
from numpy import median

from django.db.models import Q
from django.http import HttpResponse, Http404
from django.shortcuts import get_object_or_404
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.views.generic import View, TemplateView

from .models import Geography, Table, Column, SummaryLevel
from .utils import LazyEncoder, get_max_value, get_ratio, get_object_or_none, SUMMARY_LEVEL_DICT


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
        geo_metadata = get_object_or_404(Geography, full_geoid = geography_id)
        
        page_context = {
            'geo_metadata': geo_metadata,
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
                
            if sumlev in ['010','020','030','040']:
                acs_release = 'acs2011_1yr'

            if sumlev == '050' and len(fips_code) == 5:
                page_context['county_fips_code'] = fips_code
                
            if sumlev == '160':
                page_context['point_lon_lat'] = (geo_metadata.intptlon, geo_metadata.intptlat)
        
        # hit our API (force to 5-year data for now)
        #API_ENDPOINT = 'http://api.censusreporter.org/1.0/latest/%s/profile' % kwargs['geography_id']
        API_ENDPOINT = 'http://api.censusreporter.org/1.0/%s/%s/profile' % (acs_release, kwargs['geography_id'])
        r = requests.get(API_ENDPOINT)

        if r.status_code == 200:
            profile_data = simplejson.loads(r.text, object_pairs_hook=collections.OrderedDict)
            profile_data = self.calculate_indexes(profile_data)
            page_context.update(profile_data)
        else:
            raise Http404

        # add a few last things
        try:
            # make square miles http://www.census.gov/geo/www/geo_defn.html#AreaMeasurement
            square_miles = round(float(geo_metadata.aland) / float(2589988), 1)
            total_pop = page_context['geography']['total_population']
            page_context['geo_metadata'].square_miles = square_miles
            page_context['geo_metadata'].population_density = round(float(total_pop) / float(square_miles), 1)
        except:
            pass
    
        return page_context
    
    
    
### COMPARISONS ###

class ComparisonView(TemplateView):
    template_name = 'comparison.html'
    
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
        API_ENDPOINT = 'http://api.censusreporter.org/1.0/%s/%s/%s/compare' % (acs_release, kwargs['parent_id'], kwargs['descendant_sumlev'])
        r = requests.get(API_ENDPOINT)

        if r.status_code == 200:
            comparison_data = simplejson.loads(r.text, object_pairs_hook=collections.OrderedDict)
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
        descendant_list = sorted([(geo['geography']['geoid'], geo['geography']['name']) for geo in comparison_data['geographies']])
        
        page_context.update({
            'descendant_list': descendant_list,
            'comparison_metadata': comparison_metadata,
        })

        if comparison_type == 'table':
            self.add_table_values(page_context, comparison_data['geographies'])
            
        elif comparison_type == 'distribution':
            self.add_distribution_values(page_context, comparison_data['geographies'])
            
        elif comparison_type == 'map':
            self.add_map_values(page_context, comparison_data['geographies'])
            
        return page_context
        
    def get_total_and_pct(self, value, total):
        if value and total:
            percentage = round((value / total)*100,1)
        else:
            percentage = 'n/a'
            if not value:
                value = 'n/a'
            
        return value, percentage
        
    def add_map_values(self, page_context, data):
        data_groups = collections.OrderedDict()
        
        for geo in data:
            name = geo['geography']['name']
            geoID = geo['geography']['geoid'].split('US')[1]
            total_population = geo['population']['total']

            for group, values in geo['population']['gender'].items():
                group_name = 'Persons age %s' % group
                if not group_name in data_groups:
                    data_groups[group_name] = {}
                    
                total, percentage = self.get_total_and_pct(values['total'], total_population)

                data_groups[group_name].update({
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
        for geo in data:
            name = geo['geography']['name']
            geoID = geo['geography']['geoid']
            total_population = geo['population']['total']
            geo_item = {
                'name': name,
                'geoID': geoID,
                'total_population': total_population,
                'values': collections.OrderedDict(),
            }
            for group, values in geo['population']['gender'].items():
                male_total, male_pct = self.get_total_and_pct(values['male'], values['total'])
                female_total, female_pct = self.get_total_and_pct(values['female'], values['total'])
                total, total_pct = self.get_total_and_pct(values['total'], total_population)
                
                geo_item['values'].update({
                    group: {
                        'male': male_total,
                        'male_pct': male_pct,
                        'female': female_total,
                        'female_pct': female_pct,
                        'total': total,
                        'total_pct': total_pct,
                    }
                })
            geo_values.append(geo_item)

        page_context.update({
            'geo_values': geo_values,
        })

    def add_distribution_values(self, page_context, data):
        distribution_groups = collections.OrderedDict()
        for geo in data:
            name = geo['geography']['name']
            geoID = geo['geography']['geoid']
            total_population = geo['population']['total']
            for group, values in geo['population']['gender'].items():
                if not group in distribution_groups:
                    distribution_groups[group] = {
                        'group_baselines': {},
                        'group_values': {},
                    }
                    
                male_total, male_pct = self.get_total_and_pct(values['male'], values['total'])
                female_total, female_pct = self.get_total_and_pct(values['female'], values['total'])
                total, total_pct = self.get_total_and_pct(values['total'], total_population)
                
                distribution_groups[group]['group_values'].update({
                    geoID: {
                        'name': name,
                        'male': male_total,
                        'male_pct': male_pct,
                        'female': female_total,
                        'female_pct': female_pct,
                        'total': total,
                        'total_pct': total_pct,
                    }
                })

        for chart, chart_values in distribution_groups.items():
            for field in ['total', 'total_pct']:
                values_list = [value[field] for geo, value in chart_values['group_values'].items()]
                max_value = max(values_list)
                min_value = min(values_list)
                domain_range = max_value - min_value
                median_value = int(median(values_list))
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
    result = simplejson.dumps(context)
    return HttpResponse(result, mimetype='application/javascript')

class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        geographies = []

        if 'geoids' in self.request.GET:
            geoid_list = self.request.GET['geoids'].split('|')
            geographies = Geography.objects.filter(full_geoid__in=geoid_list)

        elif 'geoid' in self.request.GET:
            geoid = self.request.GET['geoid']
            geographies = Geography.objects.filter(full_geoid__exact=geoid)
            
        elif 'q' in self.request.GET:
            q = self.request.GET['q']
            geographies = Geography.objects.filter(full_name__startswith=q)
            
        geographies = geographies.values()
        if 'autocomplete' in self.request.GET:
            geographies = geographies.only('full_name','full_geoid')
            
        return render_json_to_response(list(geographies))

class TableSearchJson(View):
    def get(self, request, *args, **kwargs):
        results = {}

        if 'table' in self.request.GET:
            table = self.request.GET['table']
            tables = Table.objects.filter(table_name__icontains=table).values()
            results['tables'] = list(tables)

        if 'column' in self.request.GET:
            column = self.request.GET['column']
            columns = Column.objects.filter(column_name__icontains=column).values()
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

class ComparisonBuilder(TemplateView):
    template_name = 'comparison_builder.html'

    def get_context_data(self, *args, **kwargs):
        page_context = {}
        
        summary_level_options = SummaryLevel.objects.exclude(ancestors__isnull=True).only('name','slug','summary_level')
        page_context.update({
            'summary_level_options': summary_level_options
        })

        return page_context
