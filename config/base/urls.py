#from django.conf.urls import patterns
#from django.contrib import admin
#admin.autodiscover()

from __future__ import absolute_import
from census.urls import urlpatterns as app_urlpatterns

#urlpatterns = patterns('')
urlpatterns = app_urlpatterns

handler500 = 'census.views.server_error'
