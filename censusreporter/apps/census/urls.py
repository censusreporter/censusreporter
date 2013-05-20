from django.conf.urls import url, patterns, include
from django.views.generic import TemplateView

from .utils import GEOGRAPHIES_MAP
geography_type_options = "|".join([str.replace(' ','-') for str in GEOGRAPHIES_MAP.keys()])

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
        view    = TemplateView.as_view(template_name='placeholder.html'),
        kwargs  = {},
        name    = 'geography_profile',
    ),

    # e.g. /compare/states/washington/counties/
    url(
        regex   = '^compare/(?P<parent_type>%s)/(?P<geography_id>[-\w]+)/(?P<descendant_type>%s)/$' % (geography_type_options, geography_type_options),
        view    = TemplateView.as_view(template_name='placeholder.html'),
        kwargs  = {},
        name    = 'geography_comparison',
    ),
)
