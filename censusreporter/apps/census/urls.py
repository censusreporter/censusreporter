from django.conf.urls import url, patterns, include
from django.contrib import admin

from .utils import GEOGRAPHIES_MAP
from .views import (HomepageView, GeographyDetailView, ComparisonView,
    ComparisonBuilder, PlaceSearchJson, TableSearch, TableSearchJson,
    GeoSearch, LocateView, HealthcheckView, DataView)

from django.views.generic.base import TemplateView

admin.autodiscover()

geography_type_options = '|'.join([str.replace(' ','-') for str in GEOGRAPHIES_MAP.keys()])
comparison_formats = 'map|table|distribution|json|csv'

urlpatterns = patterns('',
    url(
        regex   = '^$',
        view    = HomepageView.as_view(),
        kwargs  = {},
        name    = 'homepage',
    ),

    # e.g. /profiles/16000US5367000/ (Spokane, WA)
    url(
        regex   = '^profiles/(?P<geography_id>[-\w]+)/$',
        view    = GeographyDetailView.as_view(),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    # e.g. /table/B01001/
    url(
        regex   = '^data/$',
        view    = DataView.as_view(),
        kwargs  = {},
        name    = 'data_detail',
    ),

    url(
        regex   = '^compare/$',
        view    = ComparisonBuilder.as_view(),
        kwargs  = {},
        name    = 'comparison_builder',
    ),

    # e.g. /compare/04000US53/050/ (counties in Washington)
    url(
        regex   = '^compare/(?P<parent_id>[-\w]+)/(?P<descendant_sumlev>[-\w]+)/$',
        view    = ComparisonView.as_view(),
        kwargs  = {},
        name    = 'geography_comparison',
    ),
    # e.g. /compare/04000US53/050/map/
    url(
        regex   = '^compare/(?P<parent_id>[-\w]+)/(?P<descendant_sumlev>[-\w]+)/(?P<format>%s)/$' % comparison_formats,
        view    = ComparisonView.as_view(),
        kwargs  = {},
        name    = 'geography_comparison_detail',
    ),

    url(
        regex   = '^glossary/$',
        view    = TemplateView.as_view(template_name="glossary.html"),
        kwargs  = {},
        name    = 'glossary',
    ),

    url(
        regex   = '^locate/$',
        view    = LocateView.as_view(),
        kwargs  = {},
        name    = 'locate',
    ),

    url(
        regex   = '^healthcheck$',
        view    = HealthcheckView.as_view(),
        kwargs  = {},
        name    = 'healthcheck',
    ),

    ## LOCAL DEV VERSION OF API ##
    url(
        regex   = '^place-search/json/$',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'place_search_json',
    ),

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
