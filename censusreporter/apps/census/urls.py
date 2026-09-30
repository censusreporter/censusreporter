from django.conf import settings
from django.urls import re_path
from django.contrib import admin
from django.urls import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page, cache_control
from django.views.decorators.csrf import csrf_exempt
from django.views.generic.base import TemplateView, RedirectView

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
    AcsAggregateBuilderView,
    Census2020View,
    robots
)

STANDARD_CACHE_TIME = 60 * 60 * 24 * 7  # 1 week cache
BROWSER_CACHE_TIME = 60 * 60  # 1 hour in browsers; the CDN keeps pages for STANDARD_CACHE_TIME via s-maxage
COMPARISON_FORMATS = 'map|table|distribution'
BLOCK_ROBOTS = getattr(settings, 'BLOCK_ROBOTS', False)


def standard_cache_page(view):
    # cache_page keeps the rendered page for STANDARD_CACHE_TIME; the inner cache_control makes browsers
    # revalidate sooner (Django keeps the smaller max-age) while the CDN can hold it for the full time
    return cache_page(STANDARD_CACHE_TIME)(
        cache_control(max_age=BROWSER_CACHE_TIME, s_maxage=STANDARD_CACHE_TIME)(view)
    )

urlpatterns = [
    re_path('^$',
        view=csrf_exempt(standard_cache_page(HomepageView.as_view())),
        kwargs={},
        name='homepage',
    ),

    re_path('^profiles/(?P<fragment>[a-zA-Z0-9\-]+)/$',
        view=csrf_exempt(standard_cache_page(GeographyDetailView.as_view())),
        kwargs={},
        name='geography_detail',
    ),

    re_path('^profiles/$',
        view=RedirectView.as_view(url=reverse_lazy('search')),
        kwargs={},
        name='geography_search_redirect',
    ),

    re_path('^make-json/charts/(?P<releaseID>ACS_20\d\d_(1|3|5)-year)/(?P<geoID>\d{3}00US[0-9A-Z\-]*)/(?P<chartDataID>[a-z_\-]+)/$',
        view=MakeJSONView.as_view(),
        kwargs={},
        name='make_json_charts',
    ),

    # e.g. /table/B01001/
    re_path('^tables/B23002/$',
        view=RedirectView.as_view(url=reverse_lazy('table_detail', kwargs={'table': 'B23002A'})),
        kwargs={},
        name='redirect_B23002',
    ),

    re_path('^tables/C23002/$',
        view=RedirectView.as_view(url=reverse_lazy('table_detail', kwargs={'table': 'C23002A'})),
        kwargs={},
        name='redirect_C23002',
    ),

    re_path('^tables/(?P<table>[a-zA-Z0-9]+)/$',
        view=csrf_exempt(standard_cache_page(TableDetailView.as_view())),
        kwargs={},
        name='table_detail',
    ),

    re_path('^tables/$',
        view=RedirectView.as_view(url=reverse_lazy('search')),
        kwargs={},
        name='table_search',
    ),

    re_path('^search/$',
        view=csrf_exempt(SearchResultsView.as_view()),
        kwargs={},
        name='search'
    ),

    re_path('^data/$',
        view=RedirectView.as_view(url=reverse_lazy('table_search')),
        kwargs={},
        name='table_search_redirect',
    ),

    # e.g. /table/B01001/
    re_path('^data/(?P<format>%s)/$' % COMPARISON_FORMATS,
        view=csrf_exempt(standard_cache_page(DataView.as_view())),
        kwargs={},
        name='data_detail',
    ),

    re_path('^topics/$',
        view=csrf_exempt(standard_cache_page(TopicView.as_view())),
        kwargs={},
        name='topic_list',
    ),

    re_path('^topics/race-latino/?$',
        view=RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'race-hispanic'})),
        name='topic_latino_redirect',
    ),

    re_path('^topics/same-sex/?$',
        view=RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'sexual-orientation-gender-identity'})),
        name='topic_same_sex_redirect',
    ),

    re_path('^topics/(?P<topic_slug>[-\w]+)/$',
        view=csrf_exempt(standard_cache_page(TopicView.as_view())),
        kwargs={},
        name='topic_detail',
    ),

    re_path('^examples/(?P<example_slug>[-\w]+)/$',
        view=csrf_exempt(standard_cache_page(ExampleView.as_view())),
        kwargs={},
        name='example_detail',
    ),

    re_path('^glossary/$',
        view=csrf_exempt(standard_cache_page(TemplateView.as_view(template_name="glossary.html"))),
        kwargs={},
        name='glossary',
    ),

    re_path('^about/$',
        view=csrf_exempt(standard_cache_page(TemplateView.as_view(template_name="about.html"))),
        kwargs={},
        name='about',
    ),

    re_path('^2020/$',
        view=cache_page(60 * 5)(Census2020View.as_view(template_name="2020.html")),
        kwargs={},
        name='2020',
    ),

    re_path('^acs-2020-update/$',
        view=cache_page(60 * 5)(Census2020View.as_view(template_name="acs-2020-update.html")),
        kwargs={},
        name='acs-2020-update',
    ),

    re_path('^locate/$',
        view=csrf_exempt(standard_cache_page(TemplateView.as_view(template_name="locate/locate.html"))),
        kwargs={},
        name='locate',
    ),

    re_path('^user_geo/$',
        view=standard_cache_page(TemplateView.as_view(template_name="user_geo/index.html")),
        kwargs={},
        name='user_geo',
    ),

    re_path('^aggregate/$',
        view=standard_cache_page(AcsAggregateBuilderView.as_view()),
        kwargs={},
        name='acs_aggregate',
    ),
    re_path('^user_geo/(?P<hash_digest>[A-Fa-f0-9]{32})/$',
        # don't cache as it mucks with acknowledging the async processing
        view=cache_control(max_age=15, public=True)(UserGeographyDetailView.as_view(template_name="user_geo/detail.html")),
        kwargs={},
        name='user_geo_detail',
    ),

    re_path('^healthcheck$',
        view=HealthcheckView.as_view(),
        kwargs={},
        name='healthcheck',
    ),

    re_path('^robots.txt$',
        view=robots
    ),

    re_path('^topics/sitemap.xml$',
        view=SitemapTopicsView.as_view(),
        kwargs={},
        name='sitemap_topics'
    ),
]
