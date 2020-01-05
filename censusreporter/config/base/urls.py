from census.urls import urlpatterns as app_urlpatterns

urlpatterns = []
urlpatterns += app_urlpatterns

handler500 = 'census.views.server_error'
