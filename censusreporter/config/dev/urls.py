from django.conf import settings
from config.base.urls import urlpatterns, handler500
from django.conf.urls.static import static

if settings.DEBUG:
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns
    urlpatterns += staticfiles_urlpatterns()
    urlpatterns += static(settings.EMBED_DATA_URL, document_root=settings.EMBED_DATA_ROOT)
