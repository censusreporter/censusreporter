from config.base.settings import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG
ROOT_URLCONF = 'config.prod.urls'

ALLOWED_HOSTS = [
    '174.129.183.221',
    '.censusreporter.org',
]
