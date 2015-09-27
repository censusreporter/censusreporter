import os
from django.core.wsgi import get_wsgi_application

import newrelic.agent
newrelic.agent.initialize('newrelic.ini')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.prod.settings")
application = get_wsgi_application()
