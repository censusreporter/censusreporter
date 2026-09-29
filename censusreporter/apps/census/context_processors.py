from django.conf import settings

def api_url(request):
	return {'API_URL': settings.API_URL, 'PROTOMAPS_API_KEY': settings.PROTOMAPS_API_KEY}
