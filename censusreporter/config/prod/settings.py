from censusreporter.config.base.settings import *
import os

DEBUG = False
ROOT_URLCONF = 'config.prod.urls'
WSGI_APPLICATION = "config.prod.wsgi.application"


ALLOWED_HOSTS = [
    'censusreporter.org',
    'www.censusreporter.org',
]

CACHES = {
    'default': {
        'BACKEND': 'redis_cache.RedisCache',
        'LOCATION': os.environ.get('REDIS_URL'),
    }
}
