import os
from django.core.wsgi import get_wsgi_application

activate_this = '/home/www-data/django_venv/bin/activate_this.py'
execfile(activate_this, dict(__file__=activate_this))

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.prod.settings")
application = get_wsgi_application()
