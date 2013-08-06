from django.conf.urls import url, patterns, include
from django.contrib import admin
from django.views.generic import TemplateView

from .utils import GEOGRAPHIES_MAP
from .views import GeographyDetailView, ComparisonView, ComparisonBuilder, ComparisonDataView, PlaceSearchJson, TableSearch, TableSearchJson, GeoSearch

admin.autodiscover()

geography_type_options = '|'.join([str.replace(' ','-') for str in GEOGRAPHIES_MAP.keys()])
comparison_formats = 'map|table|distribution|json|csv'

urlpatterns = patterns('',
    (r'^admin/', include(admin.site.urls)),

    url(
        regex   = '^$',
        view    = TemplateView.as_view(template_name='homepage.html'),
        kwargs  = {},
        name    = 'homepage',
    ),

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

    url(
        regex   = '^compare/$',
        view    = ComparisonBuilder.as_view(),
        kwargs  = {},
        name    = 'comparison_builder',
    ),
    url(
        regex   = '^compare/(?P<table_id>[-\w]+)/(?P<descendant_sumlev>[-\w]+)-in-(?P<parent_id>[-\w]+).(?P<format>json)$',
        view    = ComparisonDataView.as_view(),
        kwargs  = {},
        name    = 'comparison_data',
    ),

    # e.g. /profiles/16000US5367000/ (Spokane, WA)
    url(
        regex   = '^profiles/(?P<geography_id>[-\w]+)/$',
        view    = GeographyDetailView.as_view(),
        kwargs  = {},
        name    = 'geography_detail',
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
)
