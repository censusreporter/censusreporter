from __future__ import absolute_import
from django.conf import settings

def api_url(request):
	return {'API_URL': settings.API_URL}

def free_text_search_api_url(request):
	return {'FREE_TEXT_SEARCH_API_URL': settings.FREE_TEXT_SEARCH_API_URL}
