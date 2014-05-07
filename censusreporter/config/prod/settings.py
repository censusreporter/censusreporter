from config.base.settings import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG
ROOT_URLCONF = 'config.prod.urls'
WSGI_APPLICATION = "config.prod.wsgi.application"

ALLOWED_HOSTS = ['*']

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        'LOCATION': '/var/tmp/censusreporter_cache',
    }
}
