from django.conf import settings
from django.conf.urls import url, patterns, include
from django.contrib import admin
from django.core.urlresolvers import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page
from django.views.generic.base import TemplateView, RedirectView

from .utils import GEOGRAPHIES_MAP
from .views import (HomepageView, GeographyDetailView, GeographySearchView,
    TableDetailView, TableSearchView, PlaceSearchJson, GeoSearch, LocateView,
    HealthcheckView, DataView, TopicView, ExampleView, Elasticsearch)

admin.autodiscover()

STANDARD_CACHE_TIME = 60*15 # 15-minute cache
COMPARISON_FORMATS = 'map|table|distribution'
BLOCK_ROBOTS = getattr(settings, 'BLOCK_ROBOTS', False)

urlpatterns = patterns('',
    url(
        regex   = '^$',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'homepage',
    ),

    # e.g. /profiles/16000US5367000/ (Spokane, WA)
    # this should redirect to slugged version of the URL above
    url(
        regex   = '^profiles/(?P<fragment>[a-zA-Z0-9\-]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    url(
        regex   = '^profiles/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographySearchView.as_view()),
        kwargs  = {},
        name    = 'geography_search',
    ),

    # e.g. /table/B01001/
    url(
        regex   = '^tables/B23002/$',
        view    = RedirectView.as_view(url=reverse_lazy('table_detail',kwargs={'table':'B23002A'})),
        kwargs  = {},
        name    = 'redirect_B23002',
    ),

    url(
        regex   = '^tables/C23002/$',
        view    = RedirectView.as_view(url=reverse_lazy('table_detail',kwargs={'table':'C23002A'})),
        kwargs  = {},
        name    = 'redirect_C23002',
    ),

    url(
        regex   = '^tables/(?P<table>[a-zA-Z0-9]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TableDetailView.as_view()),
        kwargs  = {},
        name    = 'table_detail',
    ),

    url(
        regex   = '^tables/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TableSearchView.as_view()),
        kwargs  = {},
        name    = 'table_search',
    ),

    url(
        regex   = '^data/$',
        view    = RedirectView.as_view(url=reverse_lazy('table_search')),
        kwargs  = {},
        name    = 'table_search_redirect',
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
        regex   = '^topics/race-latino/?$',
        view    = RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'race-hispanic'})),
        name    = 'topic_latino_redirect',
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
    
    url(
        regex = '^robots.txt$',
        view = lambda r: HttpResponse(
            "User-agent: *\n%s: /" % ('Disallow' if BLOCK_ROBOTS else 'Allow') ,
            mimetype="text/plain"
        )
    ),

    ## LOCAL DEV VERSION OF API ##
    url(
        regex   = '^place-search/json/$',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'place_search_json',
    ),

    url(
        regex   = '^geo-search/$',
        view    = GeoSearch.as_view(),
        kwargs  = {},
        name    = 'geo_search',
    ),

    url(
        regex   = '^elasticsearch/$',
        view    = Elasticsearch.as_view(),
        kwargs  = {},
        name    = 'elasticsearch',
    ),
    ## END LOCAL DEV VERSION OF API ##
)
