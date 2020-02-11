from __future__ import absolute_import
from django.conf import settings
from django.contrib import admin
from django.urls import include, path
from django.urls import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page
from django.views.generic.base import TemplateView, RedirectView

from .utils import GEOGRAPHIES_MAP
from .views import (HomepageView, GeographyDetailView, TimeSeriesGeographyDetailView, CustomGeographyDetailView, DistrictGeographyDetailView, GeographySearchView,
    D3TableDetailViewBirths, D3TableDetailViewELAProficiency, D3TableDetailViewMathProficiency, D3TableDetailViewGraduationRates, D3TableDetailViewInfantMortality, D3TableDetailViewImmunization, D3TableDetailViewMedicaid, D3TableDetailViewChildCareCenters, D3TableDetailViewChildCarePrograms, D3TableDetailViewChildCareCapacity, D3TableDetailViewFreeReducedLunch, D3TableDetailViewCollegeReadiness, D3TableDetailViewCollegeEnrollment, D3TableDetailViewLeadBloodLevels, D3TableDetailViewStudentMobility, D3TableDetailViewChronicAbsenteeism, D3TableDetailView8thGradeMath, TableDetailView, TableSearchView, PlaceSearchJson, GeoSearch,
    HealthcheckView, DataView, TopicView, ExampleView, Elasticsearch,
    MakeJSONView, SitemapTopicsView, SearchResultsView, make_dashboard, CustomDrawnProfilesView, DrawProfilesView)

admin.autodiscover()

STANDARD_CACHE_TIME = 60*15 # 15-minute cache
COMPARISON_FORMATS = 'map|table|distribution'
BLOCK_ROBOTS = getattr(settings, 'BLOCK_ROBOTS', False)

urlpatterns = [
    path(
        route   = '',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'homepage',
    ),

    # e.g. /profiles/16000US5367000/ (Spokane, WA)
    # this should redirect to slugged version of the URL above
    path(
        route   = 'profiles/<slug:fragment>/',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    path(
        route   = 'time-series-profiles/<slug:fragment>/',
        view    = cache_page(STANDARD_CACHE_TIME)(TimeSeriesGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'time_series_geography_detail',
    ),

    path(
        route   = 'custom-profiles/<slug:fragment>/',
        view    = cache_page(STANDARD_CACHE_TIME)(CustomGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'custom_geography_detail',
    ),

    path(
        route   = 'districts/<slug:fragment>/',
        view    = cache_page(STANDARD_CACHE_TIME)(DistrictGeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'district_geography_detail',
    ),

    path(
        route   = 'gallery/',
        view    = cache_page(STANDARD_CACHE_TIME)(CustomDrawnProfilesView.as_view()),
        kwargs  = {},
        name    = 'gallery',
    ),

    path(
        route   = 'profiles/',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographySearchView.as_view()),
        kwargs  = {},
        name    = 'geography_search',
    ),

    path(
        route   = 'make-json/charts/',
        view    = MakeJSONView.as_view(),
        kwargs  = {},
        name    = 'make_json_charts',
    ),

    # e.g. /table/B01001/
    path(
        route   = 'tables/B23002/',
        view    = RedirectView.as_view(url=reverse_lazy('table_detail',kwargs={'table':'B23002A'})),
        kwargs  = {},
        name    = 'redirect_B23002',
    ),

    path(
        route   = 'tables/C23002/',
        view    = RedirectView.as_view(url=reverse_lazy('table_detail',kwargs={'table':'C23002A'})),
        kwargs  = {},
        name    = 'redirect_C23002',
    ),

    path(
        route   = 'tables/D3-Births/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewBirths.as_view()),
        kwargs  = {},
        name    = 'table_D3-Births',
    ),

    path(
        route   = 'tables/D3-Math-Proficiency/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewMathProficiency.as_view()),
        kwargs  = {},
        name    = 'table_D3-Math-Proficiency',
    ),

    path(
        route   = 'tables/D3-ELA-Proficiency/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewELAProficiency.as_view()),
        kwargs  = {},
        name    = 'table_D3-ELA-Proficiency',
    ),

    path(
        route   = 'tables/D3-Graduation-Rates/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewGraduationRates.as_view()),
        kwargs  = {},
        name    = 'table_D3-Graduation-Rates',
    ),

    path(
        route   = 'tables/D3-Infant-Mortality/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewInfantMortality.as_view()),
        kwargs  = {},
        name    = 'table_D3-Infant-Mortality',
    ),

    path(
        route   = 'tables/D3-Immunization/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewImmunization.as_view()),
        kwargs  = {},
        name    = 'table_D3-Immunization',
    ),

    path(
        route   = 'tables/D3-Medicaid/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewMedicaid.as_view()),
        kwargs  = {},
        name    = 'table_D3-Medicaid',
    ),

    path(
        route   = 'tables/D3-Child-Care-Centers/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewChildCareCenters.as_view()),
        kwargs  = {},
        name    = 'table_D3-Child-Care-Centers',
    ),

    path(
        route   = 'tables/D3-Child-Care-Programs/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewChildCarePrograms.as_view()),
        kwargs  = {},
        name    = 'table_D3-Child-Care-Programs',
    ),

    path(
        route   = 'tables/D3-Child-Care-Capacity/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewChildCareCapacity.as_view()),
        kwargs  = {},
        name    = 'table_D3-Child-Care-Capacity',
    ),

    path(
        route   = 'tables/D3-School-Lunch/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewFreeReducedLunch.as_view()),
        kwargs  = {},
        name    = 'table_D3-School-Lunch',
    ),

    path(
        route   = 'tables/D3-College-Readiness/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewCollegeReadiness.as_view()),
        kwargs  = {},
        name    = 'table_D3-College-Readiness/',
    ),

    path(
        route   = 'tables/D3-Blood-Lead/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewLeadBloodLevels.as_view()),
        kwargs  = {},
        name    = 'table_D3-Blood-Lead',
    ),

    path(
        route   = 'tables/D3-College-Enrollment/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewCollegeEnrollment.as_view()),
        kwargs  = {},
        name    = 'table_D3-College-Enrollment',
    ),

    path(
        route   = 'tables/D3-Student-Mobility/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewStudentMobility.as_view()),
        kwargs  = {},
        name    = 'table_D3-Student-Mobility',
    ),

    path(
        route   = 'tables/D3-Chronic-Absenteeism/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailViewChronicAbsenteeism.as_view()),
        kwargs  = {},
        name    = 'table_D3-Chronic-Absenteeism',
    ),

    path(
        route   = 'tables/D3-Eighth-Grade-Math-Assessment/',
        view    = cache_page(STANDARD_CACHE_TIME)(D3TableDetailView8thGradeMath.as_view()),
        kwargs  = {},
        name    = 'table_D3-Chronic-Absenteeism',
    ),

    path(
        route   = 'tables/<slug:table>/',
        view    = cache_page(STANDARD_CACHE_TIME)(TableDetailView.as_view()),
        kwargs  = {},
        name    = 'table_detail',
    ),

    path(
        route   = 'tables/',
        view    = cache_page(STANDARD_CACHE_TIME)(TableSearchView.as_view()),
        kwargs  = {},
        name    = 'table_search',
    ),

    path(
        route = 'search/',
        view = SearchResultsView.as_view(),
        kwargs = {},
        name = 'search'
    ),

    path(
        route   = 'data/',
        view    = RedirectView.as_view(url=reverse_lazy('table_search')),
        kwargs  = {},
        name    = 'table_search_redirect',
    ),

    # e.g. /table/B01001/
    path(
        route   = 'data/<slug:format>%s/' % COMPARISON_FORMATS,
        view    = cache_page(STANDARD_CACHE_TIME)(DataView.as_view()),
        kwargs  = {},
        name    = 'data_detail',
    ),

    path(
        route   = 'topics/',
        view    = cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs  = {},
        name    = 'topic_list',
    ),

    path(
        route   = 'topics/race-latino/',
        view    = RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'race-hispanic'})),
        name    = 'topic_latino_redirect',
    ),

    path(
        route   = 'topics/<slug:topic_slug>/',
        view    = cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs  = {},
        name    = 'topic_detail',
    ),

    path(
        route   = 'examples/<slug:example_slug>/',
        view    = cache_page(STANDARD_CACHE_TIME)(ExampleView.as_view()),
        kwargs  = {},
        name    = 'example_detail',
    ),

    path(
        route   = 'glossary/',
        view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="glossary.html")),
        kwargs  = {},
        name    = 'glossary',
    ),

    path(
        route   = 'locate/',
        view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="locate/locate.html")),
        kwargs  = {},
        name    = 'locate',
    ),

    path(
        route   = 'draw/',
        view    = cache_page(STANDARD_CACHE_TIME)(DrawProfilesView.as_view()),
        kwargs  = {},
        name    = 'draw',
    ),

    path(
        route   = 'healthcheck/',
        view    = HealthcheckView.as_view(),
        kwargs  = {},
        name    = 'healthcheck',
    ),

    path(
        route = 'robots.txt',
        view = lambda r: HttpResponse(
            "User-agent: *\n%s: /" % ('Disallow' if BLOCK_ROBOTS else 'Allow') ,
            mimetype="text/plain"
        )
    ),

    path(
        route = 'topics/sitemap.xml',
        view = SitemapTopicsView.as_view(),
        kwargs = {},
        name = 'sitemap_topics'
    ),

    ## LOCAL DEV VERSION OF API ##
    path(
        route   = 'place-search/json/',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'place_search_json',
    ),

    path(
        route   = 'geo-search/',
        view    = GeoSearch.as_view(),
        kwargs  = {},
        name    = 'geo_search',
    ),

    path(
        route   = 'elasticsearch/',
        view    = Elasticsearch.as_view(),
        kwargs  = {},
        name    = 'elasticsearch',
    ),
    ## END LOCAL DEV VERSION OF API ##

    ## post to shave dashboards
    path(
        route   = 'make_dashboard/',
        view    = make_dashboard,
        kwargs  = {},
        name    = 'make_dashboard',
    ),


]
