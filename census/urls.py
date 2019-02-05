from django.conf import settings
from django.conf.urls import url, patterns, include
from django.contrib import admin
from django.core.urlresolvers import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page
from django.views.generic.base import TemplateView, RedirectView

from .utils import GEOGRAPHIES_MAP
from .views import (HomepageView, GeographyDetailView, TimeSeriesGeographyDetailView, CustomGeographyDetailView, GeographySearchView,
    D3TableDetailViewBirths, D3TableDetailViewELAProficiency, D3TableDetailViewMathProficiency, D3TableDetailViewGraduationRates, D3TableDetailViewInfantMortality, D3TableDetailViewImmunization, D3TableDetailViewMedicaid, D3TableDetailViewChildCareCenters, D3TableDetailViewChildCareCapacity, D3TableDetailViewFreeReducedLunch, D3TableDetailViewCollegeReadiness, D3TableDetailViewCollegeEnrollment, D3TableDetailViewLeadBloodLevels, TableDetailView, TableSearchView, PlaceSearchJson, GeoSearch,
    HealthcheckView, DataView, TopicView, ExampleView, Elasticsearch,
    MakeJSONView, SitemapTopicsView, SearchResultsView, make_dashboard)

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
        regex   = '^time-series-profiles/(?P<fragment>[a-zA-Z0-9\-]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TimeSeriesGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'time_series_geography_detail',
    ),

    url(
        regex   = '^custom-profiles/(?P<fragment>[a-zA-Z0-9\-]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(CustomGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'custom_geography_detail',
    ),

    url(
        regex   = '^profiles/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographySearchView.as_view()),
        kwargs  = {},
        name    = 'geography_search',
    ),

    url(
        regex   = '^make-json/charts/$',
        view    = MakeJSONView.as_view(),
        kwargs  = {},
        name    = 'make_json_charts',
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
        regex   = '^tables/D3-Births/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewBirths.as_view()),
        kwargs  = {},
        name    = 'table_D3-Births',
    ),

    url(
        regex   = '^tables/D3-Math-Proficiency/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewMathProficiency.as_view()),
        kwargs  = {},
        name    = 'table_D3-Math-Proficiency',
    ),

    url(
        regex   = '^tables/D3-ELA-Proficiency/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewELAProficiency.as_view()),
        kwargs  = {},
        name    = 'table_D3-ELA-Proficiency',
    ),

    url(
        regex   = '^tables/D3-Graduation-Rates/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewGraduationRates.as_view()),
        kwargs  = {},
        name    = 'table_D3-Graduation-Rates',
    ),

    url(
        regex   = '^tables/D3-Infant-Mortality/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewInfantMortality.as_view()),
        kwargs  = {},
        name    = 'table_D3-Infant-Mortality',
    ),

    url(
        regex   = '^tables/D3-Immunization/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewImmunization.as_view()),
        kwargs  = {},
        name    = 'table_D3-Immunization',
    ),

    url(
        regex   = '^tables/D3-Medicaid/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewMedicaid.as_view()),
        kwargs  = {},
        name    = 'table_D3-Medicaid',
    ),

    url(
        regex   = '^tables/D3-Child-Care-Centers/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewChildCareCenters.as_view()),
        kwargs  = {},
        name    = 'table_D3-Child-Care-Centers',
    ),

    url(
        regex   = '^tables/D3-Child-Care-Capacity/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewChildCareCapacity.as_view()),
        kwargs  = {},
        name    = 'table_D3-Child-Care-Capacity',
    ),

    url(
        regex   = '^tables/D3-School-Lunch/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewFreeReducedLunch.as_view()),
        kwargs  = {},
        name    = 'table_D3-School-Lunch',
    ),

    url(
        regex   = '^tables/D3-College-Readiness/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewCollegeReadiness.as_view()),
        kwargs  = {},
        name    = 'table_D3-College-Readiness',
    ),

    url(
        regex   = '^tables/D3-College-Enrollment/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewCollegeEnrollment.as_view()),
        kwargs  = {},
        name    = 'table_D3-College-Enrollment',
    ),

    url(
        regex   = '^tables/D3-Blood-Lead/$',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewLeadBloodLevels.as_view()),
        kwargs  = {},
        name    = 'table_D3-Blood-Lead',
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
        regex = '^search/$',
        view = SearchResultsView.as_view(),
        kwargs = {},
        name = 'search'
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
        view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="locate/locate.html")),
        kwargs  = {},
        name    = 'locate',
    ),

    url(
        regex   = '^draw/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="draw/draw.html")),
        kwargs  = {},
        name    = 'draw',
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

    url(
        regex = '^topics/sitemap.xml$',
        view = SitemapTopicsView.as_view(),
        kwargs = {},
        name = 'sitemap_topics'
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

    ## post to shave dashboards
    url(
        regex   = '^make_dashboard/$',
        view    = make_dashboard,
        kwargs  = {},
        name    = 'make_dashboard',
    ),


)
