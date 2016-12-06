import os
from django.core.wsgi import get_wsgi_application
from raven.contrib.django.raven_compat.middleware.wsgi import Sentry

import newrelic.agent
newrelic.agent.initialize('newrelic.ini')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.prod.settings")
application = Sentry(get_wsgi_application())
