from __future__ import division
import collections
import requests
from math import ceil
from numpy import median

from django.http import HttpResponse, Http404
from django.shortcuts import get_object_or_404
from django.utils import simplejson
from django.views.generic import View, TemplateView

from .models import Geography
from .utils import LazyEncoder, get_max_value, get_ratio, get_object_or_none


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
                page_context['state_fips_code'] = fips_code[:2]
                
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
        print r.status_code
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

API_ENDPOINTS = {
    'il': 'https://gist.github.com/iandees/eedbb8ab3caa31bfdb25/raw/4ff31fcd6192318df61961a6674e873b5b9f96d3/illinois_compare.json',
    'fl': 'https://gist.github.com/iandees/eedbb8ab3caa31bfdb25/raw/de8c95ec49e0ede7ef9dc505bcb67e7300595041/florida_compare.json',
    'wa': 'https://gist.github.com/iandees/eedbb8ab3caa31bfdb25/raw/330722d4bffe99b1ac6f6827bd65c27e2fde550c/washington_compare.json',
}

class ComparisonJsonMaker(View):
    def render_json_to_response(self, context):
        result = simplejson.dumps(context, cls=LazyEncoder)
        return HttpResponse(result, mimetype='application/javascript')
    
    def get(self, request, *args, **kwargs):
        parent_type = self.kwargs['parent_type']
        geography_id = self.kwargs['geography_id']
        descendant_type = self.kwargs['descendant_type']

        # hit the API and store the results for later operations
        API_ENDPOINT = API_ENDPOINTS[geography_id]
        r = requests.get(API_ENDPOINT)
        data = simplejson.loads(r.text, object_pairs_hook=collections.OrderedDict)

        data_groups = collections.OrderedDict()
        for geo in data:
            name = geo['geography']['name']
            geoID = geo['geography']['geoid'].split('US')[1]
            total_population = geo['population']['total']

            for group, values in geo['population']['gender'].items():
                group_name_total = '%s total' % group
                group_name_pct = '%s percentage' % group

                if not group_name_total in data_groups:
                    data_groups[group_name_pct] = {}
                    data_groups[group_name_total] = {}

                data_groups[group_name_pct].update({
                    geoID: {
                        'name': name,
                        'value': round((values['total'] / total_population)*100,1),
                    }
                })
                data_groups[group_name_total].update({
                    geoID: {
                        'name': name,
                        'value': values['total'],
                    }
                })

        return self.render_json_to_response(data_groups)

class ComparisonView(TemplateView):
    template_name = 'comparison.html'
    
    def get_context_data(self, *args, **kwargs):
        parent_type = self.kwargs['parent_type']
        geography_id = self.kwargs['geography_id']
        descendant_type = self.kwargs['descendant_type']

        comparison_type = self.kwargs.get('comparison_type', None)
        if comparison_type:
            self.template_name = 'comparison_%s.html' % comparison_type

        page_context = {
            'parent_type': parent_type,
            'geography_id': geography_id,
            'descendant_type': descendant_type,
            'comparison_type': comparison_type,
        }

        # hit the API and store the results for later operations
        API_ENDPOINT = API_ENDPOINTS[geography_id]
        r = requests.get(API_ENDPOINT)
        data = simplejson.loads(r.text, object_pairs_hook=collections.OrderedDict)
        
        # add a list of all the descendants being compared
        descendant_list = sorted([(geo['geography']['geoid'], geo['geography']['name']) for geo in data])
        page_context.update({
            'descendant_list': descendant_list,
        })

        if comparison_type == 'table':
            self.add_table_values(page_context, data)
            
        elif comparison_type == 'distribution':
            self.add_distribution_values(page_context, data)
            
        return page_context
        
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
                geo_item['values'].update({
                    group: {
                        'male': values['male'],
                        'male_pct': round((values['male'] / values['total'])*100,1),
                        'female': values['female'],
                        'female_pct': round((values['female'] / values['total'])*100,1),
                        'total': values['total'],
                        'total_pct': round((values['total'] / total_population)*100,1),
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
                distribution_groups[group]['group_values'].update({
                    geoID: {
                        'name': name,
                        'male': values['male'],
                        'male_pct': round((values['male'] / values['total'])*100,1),
                        'female': values['female'],
                        'female_pct': round((values['female'] / values['total'])*100,1),
                        'total': values['total'],
                        'total_pct': round((values['total'] / total_population)*100,1),
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


class PlaceSearchJson(View):
    def render_json_to_response(self, context):
        result = simplejson.dumps(context)
        return HttpResponse(result, mimetype='application/javascript')

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
            
            
        return self.render_json_to_response(list(geographies))