from django.conf import settings
from django.conf.urls import url, patterns, include
from config.base.urls import urlpatterns, handler500

if settings.DEBUG:
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns
    urlpatterns += staticfiles_urlpatterns()

    from django.views import static
    import os, os.path
    from django.http import Http404
    STATIC_SITEMAP_DIR = os.path.join(settings.PROJECT_ROOT,'apps/census/static/sitemap')

    def dev_sitemap_serve(request, path, insecure=False, **kwargs):
        path = path.lstrip('/')
        absolute_path = os.path.join(STATIC_SITEMAP_DIR,path)
        if not os.path.isfile(absolute_path):
            raise Http404("'%s' could not be found" % path)
        return static.serve(request, path, document_root=STATIC_SITEMAP_DIR, **kwargs)

    urlpatterns += [
        url(
            regex   = '^(?P<path>sitemap.*\.xml)$',
            view    = dev_sitemap_serve,
            name    = 'sitemaps',
        )
    ]
