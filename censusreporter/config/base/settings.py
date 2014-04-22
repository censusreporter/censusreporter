# Django settings for censusreporter project.
import os

dirname = os.path.dirname
PROJECT_ROOT = os.path.abspath(os.path.join(dirname(__file__),"..",".."))

DEBUG = True
TEMPLATE_DEBUG = DEBUG
# should be set by each settings file
# ROOT_URLCONF = 'config.dev.urls'

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.admin',
    'django.contrib.contenttypes',
    'django.contrib.humanize',
    'django.contrib.messages',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.staticfiles',
    'census',
    'pipeline',
)

ALLOWED_HOSTS = []
TIME_ZONE = 'Africa/Johannesburg'
LANGUAGE_CODE = 'en-uk'
SITE_ID = 1
USE_I18N = False
USE_L10N = True
USE_TZ = True
SECRET_KEY = '!%j-u4&(q8qu4@dq=ukth27+q!v-!h^jck14bf=spqht847$4q'

MEDIA_ROOT = ''
MEDIA_URL = ''

STATIC_ROOT = PROJECT_ROOT + '/static/'
STATIC_URL = '/static/'
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
)
STATICFILES_STORAGE = 'pipeline.storage.NonPackagingPipelineCachedStorage'

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
)
TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.messages.context_processors.messages',
    'django.core.context_processors.media',
    'django.core.context_processors.request',
    'django.core.context_processors.static',
    'django.contrib.auth.context_processors.auth',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

# Python dotted path to the WSGI application used by Django's runserver.
WSGI_APPLICATION = 'censusreporter.wsgi.application'

# A sample logging configuration. The only tangible logging
# performed by this configuration is to send an email to
# the site admins on every HTTP 500 error when DEBUG=False.
# See http://docs.djangoproject.com/en/dev/topics/logging for
# more details on how to customize your logging configuration.
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}

ADMINS = (
    ('Greg Kempe', 'greg@kempe.net'),
    ('Rizmari Versfeld', 'rizziepit@gmail.com'),
)
MANAGERS = ADMINS

API_URL = 'http://api.censusreporter.org'
