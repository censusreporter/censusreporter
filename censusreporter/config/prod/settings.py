from censusreporter.config.base.settings import *
import os

DEBUG = False
ROOT_URLCONF = 'censusreporter.config.prod.urls'
WSGI_APPLICATION = "censusreporter.config.prod.wsgi.application"

ALLOWED_HOSTS = ['*']

REDIS_URL = os.environ.get('REDIS_URL', '')

CACHES = {
    # # Redis cache configuration
    # 'default': {
    #     'BACKEND': 'redis_cache.RedisCache',
    #     'LOCATION': REDIS_URL,
    #     'TIMEOUT': None,
    #     # This library defaults to using db 1, and I want it in db 0
    #     'OPTIONS': {
    #         'DB': 0,
    #     },
    # }

    # Filesystem cache configuration
    'default': {
        'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        'LOCATION': '/tmp/censusreporter_cache',
        'TIMEOUT': None,
        'MAX_ENTRIES': 1_000_000,
    }
}
