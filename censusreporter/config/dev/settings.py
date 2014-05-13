from config.base.settings import *

DEBUG = True
TEMPLATE_DEBUG = DEBUG
ROOT_URLCONF = 'config.dev.urls'
WSGI_APPLICATION = "config.dev.wsgi.application"

ALLOWED_HOSTS = [
    '127.0.0.1',
    'localhost',
]

STATICFILES_DIRS = [PROJECT_ROOT + '/embed',]

#API_URL = 'http://0.0.0.0:5000'

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
        'LOCATION': 'unique-snowflake',
        }
}

LOGGING['loggers']['censusreporter']['level'] = 'DEBUG'