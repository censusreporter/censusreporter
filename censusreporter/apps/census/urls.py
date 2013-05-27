from django.conf.urls import url, patterns, include
from django.views.generic import TemplateView

from .utils import GEOGRAPHIES_MAP
from .views import GeographyDetailView, ComparisonView, ComparisonJsonMaker

geography_type_options = '|'.join([str.replace(' ','-') for str in GEOGRAPHIES_MAP.keys()])
comparison_types = 'map|table|distribution'

urlpatterns = patterns('',
    url(
        regex   = '^$',
        view    = TemplateView.as_view(template_name='placeholder.html'),
        kwargs  = {},
        name    = 'homepage',
    ),

    # e.g. /states/washington/
    url(
        regex   = '^(?P<geography_type>%s)/(?P<geography_id>[-\w]+)/$' % geography_type_options,
        view    = GeographyDetailView.as_view(),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    # e.g. /compare/states/washington/counties/
    url(
        regex   = '^compare/(?P<parent_type>%s)/(?P<geography_id>[-\w]+)/(?P<descendant_type>%s)/$' % (geography_type_options, geography_type_options),
        view    = ComparisonView.as_view(),
        kwargs  = {},
        name    = 'geography_comparison',
    ),
    # e.g. /compare/states/washington/counties/map/
    url(
        regex   = '^compare/(?P<parent_type>%s)/(?P<geography_id>[-\w]+)/(?P<descendant_type>%s)/(?P<comparison_type>%s)/$' % (geography_type_options, geography_type_options, comparison_types),
        view    = ComparisonView.as_view(),
        kwargs  = {},
        name    = 'geography_comparison_detail',
    ),
    # e.g. /compare/states/washington/counties/json/
    # internally transform API json into needed format
    url(
        regex   = '^compare/(?P<parent_type>%s)/(?P<geography_id>[-\w]+)/(?P<descendant_type>%s)/json/$' % (geography_type_options, geography_type_options),
        view    = ComparisonJsonMaker.as_view(),
        kwargs  = {},
        name    = 'geography_comparison_json',
    ),
)
