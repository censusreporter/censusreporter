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

# From https://forums.aws.amazon.com/thread.jspa?messageID=423533:
# "The Elastic Load Balancer HTTP health check will use the instance's internal IP."
# From https://dryan.com/articles/elb-django-allowed-hosts/
import requests
EC2_PRIVATE_IP = None
try:
    EC2_PRIVATE_IP = requests.get('http://169.254.169.254/latest/meta-data/local-ipv4', timeout=0.01).text
except requests.exceptions.RequestException:
    pass

if EC2_PRIVATE_IP:
    ALLOWED_HOSTS.append(EC2_PRIVATE_IP)

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        'LOCATION': 'localhost:11211',
    }
}
