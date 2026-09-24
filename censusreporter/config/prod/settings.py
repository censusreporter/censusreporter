from censusreporter.config.base.settings import *
import os

DEBUG = False
ROOT_URLCONF = 'censusreporter.config.prod.urls'
WSGI_APPLICATION = "censusreporter.config.prod.wsgi.application"

ALLOWED_HOSTS = ['*']

REDIS_URL = os.environ.get('REDIS_URL', '')

CACHES = {
    # Redis cache configuration. Shared with census-api (page cache, Flask-Caching)
    # and Celery (broker) on the same Redis instance, which runs with maxmemory and
    # an allkeys-lfu eviction policy, so this competes for space rather than risking
    # OOM errors under memory pressure.
    'default': {
        'BACKEND': 'redis_cache.RedisCache',
        'LOCATION': REDIS_URL,
        'TIMEOUT': None,
        # This library defaults to using db 1, and I want it in db 0
        'OPTIONS': {
            'DB': 0,
        },
    }
}
