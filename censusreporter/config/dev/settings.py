from config.base.settings import *

DEBUG = True
TEMPLATE_DEBUG = DEBUG
ROOT_URLCONF = 'config.dev.urls'
WSGI_APPLICATION = "config.dev.wsgi.application"

#API_URL = 'http://0.0.0.0:5000'
