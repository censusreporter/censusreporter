from django.conf import settings
from config.base.urls import urlpatterns, handler500

if settings.DEBUG:
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns
    urlpatterns += staticfiles_urlpatterns()
