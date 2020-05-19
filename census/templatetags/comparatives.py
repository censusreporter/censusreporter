from __future__ import absolute_import
from django import template

register = template.Library()

@register.inclusion_tag('profile/_blocks/_comparative_list_item.html')
def build_comparative_item(sumlev, stat, stat_type, geography):
    if sumlev == 'CBSA' and stat_type == 'count':
        place_name = geography['parents'][sumlev]['full_name']
    elif sumlev == 'CBSA':
        place_name = 'the %s' % geography['parents'][sumlev]['full_name']
    else:
        place_name = geography['parents'][sumlev]['short_name']
        
    try:
        item_context = {
            'place_name': place_name,
            'stat_type': stat_type,
            'value': stat['values'][sumlev],
            'index': stat['index'][sumlev],
            'error': stat['error'][sumlev],
            'error_ratio': stat['error_ratio'][sumlev],
            'numerator': stat['numerators'][sumlev],
            'numerator_error': stat['numerator_errors'][sumlev],
        }
    except Exception as e:
        item_context = {
        }

    return item_context
