from django.conf.urls import url, patterns, include
from django.views.generic import TemplateView

from .utils import GEOGRAPHIES_MAP
from .views import GeographyDetailView, ComparisonView, PlaceSearchJson, TableSearch, TableSearchJson, GeoSearch

geography_type_options = '|'.join([str.replace(' ','-') for str in GEOGRAPHIES_MAP.keys()])
comparison_types = 'map|table|distribution'

urlpatterns = patterns('',
    url(
        regex   = '^$',
        view    = TemplateView.as_view(template_name='homepage.html'),
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

    # e.g. /compare/53/050/ (counties in Washington)
    url(
        regex   = '^compare/(?P<parent_id>[-\w]+)/(?P<descendant_sumlev>[-\w]+)/$',
        view    = ComparisonView.as_view(),
        kwargs  = {},
        name    = 'geography_comparison',
    ),
    # e.g. /compare/53/050/map/
    url(
        regex   = '^compare/(?P<parent_id>[-\w]+)/(?P<descendant_sumlev>[-\w]+)/(?P<comparison_type>%s)/$' % comparison_types,
        view    = ComparisonView.as_view(),
        kwargs  = {},
        name    = 'geography_comparison_detail',
    ),
    url(
        regex   = '^place-search/$',
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
)
