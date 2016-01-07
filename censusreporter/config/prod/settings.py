from config.base.settings import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG
ROOT_URLCONF = 'config.prod.urls'
WSGI_APPLICATION = "config.prod.wsgi.application"


ALLOWED_HOSTS = [
    '.censusreporter.org',
    '.compute-1.amazonaws.com',  # allows viewing of instances directly
    'cr-prod-409865157.us-east-1.elb.amazonaws.com',  # from the load balancer
]

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        'LOCATION': 'localhost:11211',
    }
}
