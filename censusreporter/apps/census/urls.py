from django.conf.urls import url, patterns, include
from django.contrib import admin
from django.views.decorators.cache import cache_page
from django.views.generic.base import TemplateView

from .views import (HomepageView, GeographyDetailView,
    TableSearch, TableSearchJson, GeoSearch, LocateView, HealthcheckView,
    DataView, TopicView, ExampleView, Elasticsearch)

from .wazi_views import SouthAfricaGeographyDetailView, SouthAfricaGeographyJsonView, WardSearchProxy, PlaceSearchJson, SouthAfricaLocateView

admin.autodiscover()

STANDARD_CACHE_TIME = 60*15 # 15-minute cache
COMPARISON_FORMATS = 'map|table|distribution'

geo_levels = 'ward|municipality|province|country'


urlpatterns = patterns('',
    url(
        regex   = '^$',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'homepage',
    ),

    # e.g. /profiles/province-GT/
    url(
        regex   = '^profiles/(?P<geography_id>(%s)-[\w]+)/$' % geo_levels,
        view    = cache_page(STANDARD_CACHE_TIME)(SouthAfricaGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    # e.g. /profiles/province-GT/
    url(
        regex   = '^(embed_data/)?profiles/(?P<geography_id>(%s)-[\w]+)\.json$' % geo_levels,
        view    = cache_page(STANDARD_CACHE_TIME)(SouthAfricaGeographyJsonView.as_view()),
        kwargs  = {},
        name    = 'geography_json',
    ),

    url(
        regex   = '^data/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="data/data_builder.html")),
        kwargs  = {},
        name    = 'data_builder',
    ),

    # e.g. /table/B01001/
    url(
        regex   = '^data/(?P<format>%s)/$' % COMPARISON_FORMATS,
        view    = cache_page(STANDARD_CACHE_TIME)(DataView.as_view()),
        kwargs  = {},
        name    = 'data_detail',
    ),

    url(
        regex   = '^topics/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs  = {},
        name    = 'topic_list',
    ),

    url(
        regex   = '^topics/(?P<topic_slug>[-\w]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs  = {},
        name    = 'topic_detail',
    ),

    url(
        regex   = '^examples/(?P<example_slug>[-\w]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(ExampleView.as_view()),
        kwargs  = {},
        name    = 'example_detail',
    ),

    url(
        regex   = '^glossary/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="glossary.html")),
        kwargs  = {},
        name    = 'glossary',
    ),

    url(
        regex   = '^locate/$',
        view    = SouthAfricaLocateView.as_view(),
        kwargs  = {},
        name    = 'locate',
    ),

    url(
        regex   = '^healthcheck$',
        view    = HealthcheckView.as_view(),
        kwargs  = {},
        name    = 'healthcheck',
    ),

    url(
        regex   = '^place-search/json/$',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'place_search_json',
    ),

    url(
        regex   = '^ward-search/json/$',
        view    = WardSearchProxy.as_view(),
        kwargs  = {},
        name    = 'ward_search_json',
    ),

    ## LOCAL DEV VERSION OF API ##

    url(
        regex   = '^table-search/$',
        view    = TableSearch.as_view(),
        kwargs  = {},
        name    = 'table_search',
    ),
    url(
        regex   = '^table-search/json/$',
        view    = TableSearchJson.as_view(),
        kwargs  = {},
        name    = 'table_search_json',
    ),

    url(
        regex   = '^geo-search/$',
        view    = GeoSearch.as_view(),
        kwargs  = {},
        name    = 'geo_search',
    ),
    ## END LOCAL DEV VERSION OF API ##
)
