from __future__ import absolute_import
from django.conf import settings

def api_url(request):
	return {'API_URL': settings.API_URL}
