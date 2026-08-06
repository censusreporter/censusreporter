from censusreporter.apps.census.urls import urlpatterns as app_urlpatterns

urlpatterns = []
urlpatterns += app_urlpatterns

handler500 = 'censusreporter.apps.census.views.server_error'
