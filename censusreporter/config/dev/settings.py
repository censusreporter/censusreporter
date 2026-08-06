from censusreporter.config.base.settings import *

DEBUG = True
ROOT_URLCONF = 'config.dev.urls'
WSGI_APPLICATION = "config.dev.wsgi.application"

ALLOWED_HOSTS = [
    '127.0.0.1',
    'localhost',
]

REDIS_URL = os.environ.get('REDIS_URL', 'redis://127.0.0.1:6379')

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.dummy.DummyCache',
    }
}
#CACHES = {
#    'default': {
#        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
#        'LOCATION': 'unique-snowflake',
#    }
#}

