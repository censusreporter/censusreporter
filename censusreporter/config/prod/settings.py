from censusreporter.config.base.settings import *
import os

DEBUG = False
ROOT_URLCONF = 'censusreporter.config.prod.urls'
WSGI_APPLICATION = "censusreporter.config.prod.wsgi.application"

ALLOWED_HOSTS = ['*']

CACHES = {
    'default': {
        'BACKEND': 'redis_cache.RedisCache',
        'LOCATION': os.environ.get('REDIS_URL', ''),
        'TIMEOUT': None,
        # This library defaults to using db 1, and I want it in db 0
        'OPTIONS': {
            'DB': 0,
        },
    }
}
