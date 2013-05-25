from __future__ import division
import collections
import requests
from math import ceil
from numpy import median

from django.http import HttpResponse
from django.utils import simplejson
from django.views.generic import View, TemplateView

from .utils import LazyEncoder

API_ENDPOINTS = {
    'IL': 'https://gist.github.com/iandees/eedbb8ab3caa31bfdb25/raw/4ff31fcd6192318df61961a6674e873b5b9f96d3/illinois_compare.json',
    'FL': 'https://gist.github.com/iandees/eedbb8ab3caa31bfdb25/raw/de8c95ec49e0ede7ef9dc505bcb67e7300595041/florida_compare.json',
    'WA': 'https://gist.github.com/iandees/eedbb8ab3caa31bfdb25/raw/330722d4bffe99b1ac6f6827bd65c27e2fde550c/washington_compare.json',
}

class ComparisonJsonMaker(View):
    def render_json_to_response(self, context):
        result = simplejson.dumps(context, cls=LazyEncoder)
        return HttpResponse(result, mimetype='application/javascript')
    
    def get(self, request, *args, **kwargs):
        parent_type = self.kwargs['parent_type']
        geography_id = self.kwargs['geography_id']
        descendant_type = self.kwargs['descendant_type']

        # right now, we're only doing states and counties
        state_code = geography_id.upper()

        # hit the API and store the results for later operations
        API_ENDPOINT = API_ENDPOINTS[state_code]
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
    def get_context_data(self, *args, **kwargs):
        parent_type = self.kwargs['parent_type']
        geography_id = self.kwargs['geography_id']
        descendant_type = self.kwargs['descendant_type']
        comparison_type = self.kwargs['comparison_type']
        
        # right now, we're only doing states and counties
        state_code = geography_id.upper()
        self.template_name = 'comparison_%s.html' % comparison_type
        page_context = {
            'state_code': state_code,
            'geography_type': 'counties',
        }

        # hit the API and store the results for later operations
        API_ENDPOINT = API_ENDPOINTS[state_code]
        r = requests.get(API_ENDPOINT)
        data = simplejson.loads(r.text, object_pairs_hook=collections.OrderedDict)

        if comparison_type == 'table':
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


        elif comparison_type == 'distribution' or 'map':
            coal_charts = collections.OrderedDict()
            for geo in data:
                name = geo['geography']['name']
                geoID = geo['geography']['geoid']
                total_population = geo['population']['total']
                for group, values in geo['population']['gender'].items():
                    if not group in coal_charts:
                        coal_charts[group] = {
                            'group_baselines': {},
                            'group_values': {},
                        }
                    coal_charts[group]['group_values'].update({
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

            for chart, chart_values in coal_charts.items():
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

            geography_list = sorted([(geo, value['name']) for geo, value in chart_values['group_values'].items()])

            page_context.update({
                'coal_charts': coal_charts,
                'geography_list': geography_list,
                'api_endpoint': API_ENDPOINT,
            })

        return page_context
    