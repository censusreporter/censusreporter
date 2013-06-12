from config.base.settings import *

DEBUG = True
TEMPLATE_DEBUG = DEBUG
ROOT_URLCONF = 'config.prod.urls'
WSGI_APPLICATION = "config.prod.wsgi.application"

ALLOWED_HOSTS = [
    '174.129.183.221',
    '.censusreporter.org',
]
