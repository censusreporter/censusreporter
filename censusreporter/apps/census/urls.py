from django.conf import settings
from django.urls import re_path
from django.contrib import admin
from django.urls import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page
from django.views.generic.base import TemplateView, RedirectView
from django.views.decorators.csrf import csrf_exempt

from .views import (
    DataView,
    ExampleView,
    GeographyDetailView,
    HealthcheckView,
    HomepageView,
    MakeJSONView,
    SearchResultsView,
    SitemapTopicsView,
    TableDetailView,
    TopicView,
    UserGeographyDetailView,
    Census2020View,
    robots
)

STANDARD_CACHE_TIME = 60 * 60 * 24 * 7  # 1 week cache
COMPARISON_FORMATS = 'map|table|distribution'
BLOCK_ROBOTS = getattr(settings, 'BLOCK_ROBOTS', False)

urlpatterns = [
    re_path(
        route='^$',
        view=cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs={},
        name='homepage',
    ),

    re_path(
        route='^profiles/(?P<fragment>[a-zA-Z0-9\-]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs={},
        name='geography_detail',
    ),

    re_path(
        route='^profiles/$',
        view=RedirectView.as_view(url=reverse_lazy('search')),
        kwargs={},
        name='geography_search_redirect',
    ),

    re_path(
        route='^make-json/charts/$',
        view=csrf_exempt(MakeJSONView.as_view()),
        kwargs={},
        name='make_json_charts',
    ),

    # e.g. /table/B01001/
    re_path(
        route='^tables/B23002/$',
        view=RedirectView.as_view(url=reverse_lazy('table_detail', kwargs={'table': 'B23002A'})),
        kwargs={},
        name='redirect_B23002',
    ),

    re_path(
        route='^tables/C23002/$',
        view=RedirectView.as_view(url=reverse_lazy('table_detail', kwargs={'table': 'C23002A'})),
        kwargs={},
        name='redirect_C23002',
    ),

    re_path(
        route='^tables/(?P<table>[a-zA-Z0-9]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(TableDetailView.as_view()),
        kwargs={},
        name='table_detail',
    ),

    re_path(
        route='^tables/$',
        view=RedirectView.as_view(url=reverse_lazy('search')),
        kwargs={},
        name='table_search',
    ),

    re_path(
        route='^search/$',
        view=SearchResultsView.as_view(),
        kwargs={},
        name='search'
    ),

    re_path(
        route='^data/$',
        view=RedirectView.as_view(url=reverse_lazy('table_search')),
        kwargs={},
        name='table_search_redirect',
    ),

    # e.g. /table/B01001/
    re_path(
        route='^data/(?P<format>%s)/$' % COMPARISON_FORMATS,
        view=cache_page(STANDARD_CACHE_TIME)(DataView.as_view()),
        kwargs={},
        name='data_detail',
    ),

    re_path(
        route='^topics/$',
        view=cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs={},
        name='topic_list',
    ),

    re_path(
        route='^topics/race-latino/?$',
        view=RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'race-hispanic'})),
        name='topic_latino_redirect',
    ),

    re_path(
        route='^topics/same-sex/?$',
        view=RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'sexual-orientation-gender-identity'})),
        name='topic_same_sex_redirect',
    ),

    re_path(
        route='^topics/(?P<topic_slug>[-\w]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs={},
        name='topic_detail',
    ),

    re_path(
        route='^examples/(?P<example_slug>[-\w]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(ExampleView.as_view()),
        kwargs={},
        name='example_detail',
    ),

    re_path(
        route='^glossary/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="glossary.html")),
        kwargs={},
        name='glossary',
    ),

    re_path(
        route='^about/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="about.html")),
        kwargs={},
        name='about',
    ),

    re_path(
        route='^2020/$',
        view=cache_page(60 * 5)(Census2020View.as_view(template_name="2020.html")),
        kwargs={},
        name='2020',
    ),

    re_path(
        route='^acs-2020-update/$',
        view=cache_page(60 * 5)(Census2020View.as_view(template_name="acs-2020-update.html")),
        kwargs={},
        name='acs-2020-update',
    ),

    re_path(
        route='^locate/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="locate/locate.html")),
        kwargs={},
        name='locate',
    ),

    re_path(
        route='^user_geo/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="user_geo/index.html")),
        kwargs={},
        name='user_geo',
    ),
    re_path(
        route='^user_geo/(?P<hash_digest>[A-Fa-f0-9]{32})/$',
        # don't cache as it mucks with acknowledging the async processing
        view=UserGeographyDetailView.as_view(template_name="user_geo/detail.html"),
        kwargs={},
        name='user_geo_detail',
    ),

    re_path(
        route='^healthcheck$',
        view=HealthcheckView.as_view(),
        kwargs={},
        name='healthcheck',
    ),

    re_path(
        route='^robots.txt$',
        view=robots
    ),

    re_path(
        route='^topics/sitemap.xml$',
        view=SitemapTopicsView.as_view(),
        kwargs={},
        name='sitemap_topics'
    ),
]
