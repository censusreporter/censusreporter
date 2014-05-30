from django import template
from census.utils import SUMMARY_LEVEL_DICT
register = template.Library()

@register.filter
def sumlev_name(sumlev):
    if SUMMARY_LEVEL_DICT[sumlev]:
        return SUMMARY_LEVEL_DICT[sumlev]['name']
    return ''

@register.filter
def sumlev_name_plural(sumlev):
    if SUMMARY_LEVEL_DICT[sumlev]:
        return SUMMARY_LEVEL_DICT[sumlev]['plural']
    return ''
