from django.conf import settings
from django.conf.urls import url
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
    url(
        regex='^$',
        view=cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs={},
        name='homepage',
    ),

    url(
        regex='^profiles/(?P<fragment>[a-zA-Z0-9\-]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs={},
        name='geography_detail',
    ),

    url(
        regex='^profiles/$',
        view=RedirectView.as_view(url=reverse_lazy('search')),
        kwargs={},
        name='geography_search_redirect',
    ),

    url(
        regex='^make-json/charts/$',
        view=csrf_exempt(MakeJSONView.as_view()),
        kwargs={},
        name='make_json_charts',
    ),

    # e.g. /table/B01001/
    url(
        regex='^tables/B23002/$',
        view=RedirectView.as_view(url=reverse_lazy('table_detail', kwargs={'table': 'B23002A'})),
        kwargs={},
        name='redirect_B23002',
    ),

    url(
        regex='^tables/C23002/$',
        view=RedirectView.as_view(url=reverse_lazy('table_detail', kwargs={'table': 'C23002A'})),
        kwargs={},
        name='redirect_C23002',
    ),

    url(
        regex='^tables/(?P<table>[a-zA-Z0-9]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(TableDetailView.as_view()),
        kwargs={},
        name='table_detail',
    ),

    url(
        regex='^tables/$',
        view=RedirectView.as_view(url=reverse_lazy('search')),
        kwargs={},
        name='table_search',
    ),

    url(
        regex='^search/$',
        view=SearchResultsView.as_view(),
        kwargs={},
        name='search'
    ),

    url(
        regex='^data/$',
        view=RedirectView.as_view(url=reverse_lazy('table_search')),
        kwargs={},
        name='table_search_redirect',
    ),

    # e.g. /table/B01001/
    url(
        regex='^data/(?P<format>%s)/$' % COMPARISON_FORMATS,
        view=cache_page(STANDARD_CACHE_TIME)(DataView.as_view()),
        kwargs={},
        name='data_detail',
    ),

    url(
        regex='^topics/$',
        view=cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs={},
        name='topic_list',
    ),

    url(
        regex='^topics/race-latino/?$',
        view=RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'race-hispanic'})),
        name='topic_latino_redirect',
    ),

    url(
        regex='^topics/same-sex/?$',
        view=RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'sexual-orientation-gender-identity'})),
        name='topic_same_sex_redirect',
    ),

    url(
        regex='^topics/(?P<topic_slug>[-\w]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
        kwargs={},
        name='topic_detail',
    ),

    url(
        regex='^examples/(?P<example_slug>[-\w]+)/$',
        view=cache_page(STANDARD_CACHE_TIME)(ExampleView.as_view()),
        kwargs={},
        name='example_detail',
    ),

    url(
        regex='^glossary/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="glossary.html")),
        kwargs={},
        name='glossary',
    ),

    url(
        regex='^about/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="about.html")),
        kwargs={},
        name='about',
    ),

    url(
        regex='^2020/$',
        view=cache_page(60 * 5)(Census2020View.as_view(template_name="2020.html")),
        kwargs={},
        name='2020',
    ),

    url(
        regex='^acs-2020-update/$',
        view=cache_page(60 * 5)(Census2020View.as_view(template_name="acs-2020-update.html")),
        kwargs={},
        name='acs-2020-update',
    ),

    url(
        regex='^locate/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="locate/locate.html")),
        kwargs={},
        name='locate',
    ),

    url(
        regex='^user_geo/$',
        view=cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="user_geo/index.html")),
        kwargs={},
        name='user_geo',
    ),
    url(
        regex='^user_geo/(?P<hash_digest>[A-Fa-f0-9]{32})/$',
        # don't cache as it mucks with acknowledging the async processing
        view=UserGeographyDetailView.as_view(template_name="user_geo/detail.html"),
        kwargs={},
        name='user_geo_detail',
    ),

    url(
        regex='^healthcheck$',
        view=HealthcheckView.as_view(),
        kwargs={},
        name='healthcheck',
    ),

    url(
        regex='^robots.txt$',
        view=robots
    ),

    url(
        regex='^topics/sitemap.xml$',
        view=SitemapTopicsView.as_view(),
        kwargs={},
        name='sitemap_topics'
    ),
]
