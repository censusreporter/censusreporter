from django.conf.urls import url, patterns, include
from django.contrib import admin

from .views import (HomepageView, GeographyDetailView, PlaceSearchJson,
                    TableSearch, TableSearchJson, GeoSearch, LocateView,
                    WardSearchProxy)


admin.autodiscover()

geo_levels = 'ward|municipality|province'


urlpatterns = patterns('',
    (r'^admin/', include(admin.site.urls)),

    url(
        regex   = '^$',
        view    = HomepageView.as_view(),
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

    ## END LOCAL DEV VERSION OF API ##

    url(
        regex   = '^locate/$',
        view    = LocateView.as_view(),
        kwargs  = {},
        name    = 'locate',
    ),

    # e.g. /profiles/16000US5367000/ (Spokane, WA)
    url(
        regex   = '^profiles/(?P<geography_id>(%s)-[\w]+)/$' % geo_levels,
        view    = GeographyDetailView.as_view(),
        kwargs  = {},
        name    = 'geography_detail',
    ),
)
