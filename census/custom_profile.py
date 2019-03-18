import json
import math
import operator
import requests
import time
import cStringIO
import gzip
import boto
import boto.s3.connection

from collections import OrderedDict
from django.conf import settings
from django.utils import simplejson
from .utils import get_ratio, get_division, SUMMARY_LEVEL_DICT
from .models import Dashboards

from boto.s3.connection import S3Connection, Location
from boto.s3.key import Key

import logging
logging.basicConfig()
logger = logging.getLogger(__name__)


def custom_s3_keyname(geo_id):
	return '/1.0/data/profiles/%s.json' % geo_id.upper()

def custom_make_s3():
	if settings.AWS_KEY and settings.AWS_SECRET:
		custom_s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
		logger.warn(custom_s3)
		custom_lookup = custom_s3.lookup('d3-sd-child')
	else:
		try:
			custom_s3 = S3Connection()
		except:
			custom_s3 = None
	return custom_s3

def custom_s3_profile_key(geo_id):
	print geo_id
	custom_s3 = custom_make_s3()
	custom_key = None
	if custom_s3:  
		custom_bucket = custom_s3.get_bucket('d3-sd-child')
		custom_keyname = custom_s3_keyname(geo_id)
		custom_key = Key(custom_bucket, custom_keyname)
	
	return custom_key

def get_data(geo_id):
	
	try:
		custom_s3_key = custom_s3_profile_key(geo_id)
	except:
		custom_s3_key = None

	if custom_s3_key and custom_s3_key.exists():
		memfile = cStringIO.StringIO()
		custom_s3_key.get_file(memfile)
		memfile.seek(0)
		compressed = gzip.GzipFile(fileobj=memfile)

		# Read the decompressed JSON from S3
		profile_data_json = compressed.read()
		# Load it into a Python dict for the template
		profile_data = simplejson.loads(profile_data_json)
	else:
		profile_data = None


	return profile_data


def create_custom_profile(slug):
	# look up geoids in database
	dashboard = Dashboards.objects.get(dashboard_slug=slug)
	geoids = dashboard.dashboard_geoids.split(",")

	doc = OrderedDict([('geography', OrderedDict()),
					   ('demographics', dict()),
					   ('economics', dict()),
					   ('families', dict()),
					   ('housing', dict()),
					   ('social', dict()),])


	for geo_id in geoids:
		profile_data = get_data(geo_id)
		print profile_data

	return profile_data

