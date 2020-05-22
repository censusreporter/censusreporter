from __future__ import absolute_import
from __future__ import print_function
import copy
import json
import math
import operator
import requests
import time
from io import BytesIO
import gzip
import boto3
import botocore
from boto3 import Session
#import boto
#import boto.s3.connection

from collections import OrderedDict
from django.conf import settings
import json
from .utils import get_ratio, get_division, SUMMARY_LEVEL_DICT
from .models import Dashboards, Districts

#from boto.s3.connection import S3Connection, Location
#from boto.s3.key import Key

import logging
logging.basicConfig()
logger = logging.getLogger(__name__)

class ApiClient(object):
	def __init__(self, base_url):
		self.base_url = base_url

	def _get(self, path, params=None):
		url = self.base_url + path
		# print url
		# print params
		r = requests.get(url, params=params)
		data = None
		# print r
		time.sleep(1)
		if r.status_code == 200:
			data = r.json(object_pairs_hook=OrderedDict)
		else:
			raise Exception("Error fetching data: " + r.json().get("error"))

		return data

	def get_parent_geoids(self, geoid):
		return self._get('/1.0/geo/tiger2018/{}/parents'.format(geoid))

	def get_geoid_data(self, geoid):
		return self._get('/1.0/geo/tiger2018/{}'.format(geoid))

	def get_data(self, table_ids, geo_ids, acs='latest'):
		if (hasattr(table_ids, '__iter__')) and not (isinstance(table_ids, str)):
			table_ids = ','.join(table_ids)

		if (hasattr(geo_ids, '__iter__')) and not (isinstance(geo_ids, str)):
			geo_ids = ','.join(geo_ids)

		return self._get('/1.0/data/show/{}'.format(acs), params=dict(table_ids=table_ids, geo_ids=geo_ids))


def custom_s3_keyname(geo_id):
	return '1.0/data/profiles/2017/%s.json' % geo_id.upper()

def custom_make_s3():
	if settings.AWS_KEY and settings.AWS_SECRET:
		s3_session = boto3.Session(
			aws_access_key_id=settings.AWS_KEY,
			aws_secret_access_key=settings.AWS_SECRET,
			region_name='us-east-2'
		)
		s3 = s3_session.resource('s3')
	else:
		s3 = None

	return s3

def custom_s3_profile_object(geo_id):
	custom_s3 = custom_make_s3()

	custom_object = None
	if custom_s3:
		custom_keyname = custom_s3_keyname(geo_id)
		custom_object = custom_s3.Object('d3-sd-child', custom_keyname)

	return custom_object

def get_data(geo_id):
	print(geo_id)

	custom_s3_object = None
	custom_s3_object_exists = False
	try:
		custom_s3_object = custom_s3_profile_object(geo_id)
		custom_s3_object.load()
		custom_s3_object_exists = True
	except botocore.exceptions.ClientError as e:
		if e.response['Error']['Code'] == "404":
			custom_s3_object_exists = False
		else:
			logger.warn(e)
			raise Http404

	logger.warn(custom_s3_object_exists)
	if custom_s3_object_exists:
		buf = BytesIO(custom_s3_object.get()["Body"].read())
		compressed = gzip.GzipFile(fileobj=buf)
		# Read the decompressed JSON from S3
		string_as_bytes = compressed.read()
		profile_data_json = string_as_bytes.decode()
		# Load it into a Python dict for the template
		profile_data = json.loads(profile_data_json)
	else:
		profile_data = None

	return profile_data

def listRecursive(d, key):
    for k, v in d.items ():
        if isinstance (v, OrderedDict):
            for found in listRecursive (v, key):
                yield found
        if k == key:
            yield v

def process_sub_categories(key, data, numerator, doc_data):

	if (key == 'index'):
		if not 'custom' in doc_data:
			doc_data['custom'] = None

		if not 'geos_in_use' in doc_data:
			doc_data['geos_in_use'] = None

		if (data['this'] is None) and (doc_data['custom'] is None):
			doc_data['custom'] = None
			doc_data['geos_in_use'] = doc_data['geos_in_use']
		elif (data['this'] is None):
			doc_data['custom'] = doc_data['custom']
			doc_data['geos_in_use'] = doc_data['geos_in_use']
		else:
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']			

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1


	if (key == 'numerators'):
		if not 'custom' in doc_data:
			doc_data['custom'] = None
		
		if not 'geos_in_use' in doc_data:
			doc_data['geos_in_use'] = None

		# straight average
		if (data['this'] is None and doc_data['custom'] is None):
			doc_data['custom'] = None
			doc_data['geos_in_use'] = None
		elif (data['this'] is None):
			doc_data['custom'] = doc_data['custom']
			doc_data['geos_in_use'] = doc_data['geos_in_use']
		else: 
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1


	elif (key == 'values'):
		if not 'custom' in doc_data:
			doc_data['custom'] = None

		if not 'geos_in_use' in doc_data:
			doc_data['geos_in_use'] = None

		if ((data['this'] is None) and (numerator is None) and (doc_data['custom'] is None)) or ((data['this'] is None) and (doc_data['custom'] is None)):
			doc_data['custom'] = None
			doc_data['geos_in_use'] = None
		elif ((data['this'] is None) and (numerator is None)) or ((data['this'] is None)):
			doc_data['custom'] = doc_data['custom']
			doc_data['geos_in_use'] = doc_data['geos_in_use']
		elif (numerator is None) or (numerator == 0):
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1

		else:
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1

			if not 'denominator' in doc_data:
				doc_data['denominator'] = 0
			# calculate denominator
			try:
				doc_data['denominator'] = ((float(numerator) * 100) / float(data['this'])) + doc_data['denominator']	
			except ZeroDivisionError as e:
				doc_data['denominator'] = doc_data['denominator']
							
	elif (key == 'error'):
		if not 'custom' in doc_data:
			doc_data['custom'] = None

		if not 'geos_in_use' in doc_data:
			doc_data['geos_in_use'] = None

		if ((data['this'] is None) and (numerator is None) and (doc_data['custom'] is None)) or ((data['this'] is None) and (doc_data['custom'] is None)):
			doc_data['custom'] = None
			doc_data['geos_in_use'] = None
		elif ((data['this'] is None) and (numerator is None)) or ((data['this'] is None)):
			doc_data['custom'] = doc_data['custom']
			doc_data['geos_in_use'] = doc_data['geos_in_use']
		elif (numerator is None) or (numerator == 0):
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1

		else:
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1

			if not 'denominator' in doc_data:
				doc_data['denominator'] = 0
			# calculate denominator
			try:
				doc_data['denominator'] = ((float(numerator) * 100) / float(data['this'])) + doc_data['denominator']	
			except ZeroDivisionError as e:
				doc_data['denominator'] = doc_data['denominator']


	elif (key == 'numerator_errors') or (key == 'error_ratio'):
		if not 'custom' in doc_data:
			doc_data['custom'] = None

		if not 'geos_in_use' in doc_data:
			doc_data['geos_in_use'] = None

		if ((data['this'] is None) and (numerator is None) and (doc_data['custom'] is None)) or ((data['this'] is None) and (doc_data['custom'] is None)):
			doc_data['custom'] = None
			doc_data['geos_in_use'] = None
		elif ((data['this'] is None) and (numerator is None)) or ((data['this'] is None)):
			doc_data['custom'] = doc_data['custom']
			doc_data['geos_in_use'] = doc_data['geos_in_use']
		elif (numerator is None) or (numerator == 0):
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1

		else:
			if (doc_data['custom'] is None):
				doc_data['custom'] = 0
			#straight average
			doc_data['custom'] = float(data['this']) + doc_data['custom']

			if (doc_data['geos_in_use'] is None):
				doc_data['geos_in_use'] = 0
			doc_data['geos_in_use'] += 1


def normalize_sub_categories(key, data, numerator_total, denominator_total, sub_category=None):


	if (key == 'numerators'):
		if (data['custom'] is None):
			data['this'] = None
		elif numerator_total is not None:
			data['this'] = numerator_total
		else:
			data['this'] = data['custom']
		# if sub_category is not None:
		# 	print "Numerator normalize:"
		# 	print data['custom']
		# 	print numerator_total
		# 	print data['this']	
			

	elif (key == 'values'):
		if (data['custom'] is None):
			data['this'] = None
		elif (numerator_total is None) or (numerator_total == 0):
			data['this'] = data['custom']
		else:
			try:
				data['this'] = (numerator_total / denominator_total) * 100
			except ZeroDivisionError as e:
				data['this'] = numerator_total		

	elif (key == 'error'):
		#weighted average
		if (data['custom'] is None):
			data['this'] = None
		else:
			if denominator_total is not None:
				try:
					data['this'] = (data['custom'] / denominator_total) * 100
				except ZeroDivisionError as e:
					data['this'] = data['custom']	
			else:
				data['this'] = data['custom']

	elif (key == 'index'):
		if (data['custom'] is None):
			data['this'] = None
		elif (data['geos_in_use'] is None) or (data['geos_in_use'] == 0): 
			data['this'] = data['custom']
		else:
			data['this'] = data['custom'] / data['geos_in_use']

	elif (key == 'error_ratio'):
		#weighted average
		if (data['custom'] is None):
			data['this'] = None
		else:
			if denominator_total is not None:
				try:
					data['this'] = (data['custom'] / denominator_total)
				except ZeroDivisionError as e:
					data['this'] = data['custom']	
			else:
				data['this'] = data['custom']

	elif (key == 'numerator_errors'):
		#weighted average
		if (data['custom'] is None):
			data['this'] = None
		else:
			data['this'] = data['custom']

			
def normalize_by_geography(key, data):
	if (key == 'index') or (key == 'numerators'):
		# straight average
		if (data['custom'] is None):
			data['this'] = None
		elif (data['geos_in_use'] is None) or (data['geos_in_use'] == 0): 
			data['this'] = data['custom']
		else:
			data['this'] = data['custom'] / data['geos_in_use']

	elif (key == 'values') or (key == 'error') or (key == 'numerator_errors') or (key == 'error_ratio'):
		#weighted average
		if (data['custom'] is None):
			data['this'] = None
		elif (data['geos_in_use'] is None) or (data['geos_in_use'] == 0):
			data['this'] = data['custom']
		else: 
			data['this'] = data['custom'] / data['geos_in_use']


def create_custom_profile(slug, profile_type):
	# look up geoids in database
	if profile_type == 'custom':
		dashboard = Dashboards.objects.get(dashboard_slug=slug)
	else:
		dashboard = Districts.objects.get(dashboard_slug=slug)
	
	geoids = dashboard.dashboard_geoids.split(",")

	doc = OrderedDict([('geography', OrderedDict()),
					   ('demographics', OrderedDict()),
					   ('economics', OrderedDict()),
					   ('families', OrderedDict()),
					   ('housing', OrderedDict()),
					   ('social', OrderedDict()),])

	#set up for geographies
	doc['geo_metadata'] = dict()

	for i, geo_id in enumerate(geoids):
		profile_data = get_data(geo_id)

		# if the first time through the loop, copy the data over, then we'll overwrite the ['this'] dictionaries as we itterate  
		if i == 0:
			#custom geo metadata
			doc['geography'] = copy.deepcopy(profile_data['geography'])
			doc['geography']['this']['short_name'] = dashboard.dashboard_name
			doc['geography']['this']['short_geoid'] = None
			doc['geography']['this']['full_name'] = dashboard.dashboard_name
			doc['geography']['this']['number_of_geographies'] = 0
			doc['geography']['this']['total_population'] = 0
			doc['geography']['this']['land_area'] = 0
			doc['geography']['this']['full_geoids'] = []

			#copy the data
			doc['demographics'] = copy.deepcopy(profile_data['demographics'])
			doc['economics'] = copy.deepcopy(profile_data['economics'])
			doc['families'] = copy.deepcopy(profile_data['families'])
			doc['housing'] = copy.deepcopy(profile_data['housing'])
			doc['social'] = copy.deepcopy(profile_data['social'])

		#custom geo metadata
		doc['geography']['this']['number_of_geographies'] += 1
		try:
			doc['geography']['this']['land_area'] = profile_data['geography']['this']['land_area'] + doc['geography']['this']['land_area']
		except TypeError as e:
			raise
		doc['geography']['this']['full_geoids'].append(geo_id)
		try:
			doc['geography']['this']['total_population'] = profile_data['geography']['this']['total_population'] + doc['geography']['this']['total_population']
		except TypeError as e:
			raise

		#### demographics calculations ####

		# iterate thorough all values and create averages and weighted averages
		if profile_data is not None:
			for top_level, top_level_data in sorted(profile_data.items()):
				if top_level != 'geography' and top_level != 'geo_metadata':
					#print 'top_level' + top_level
					for category, category_data in sorted(top_level_data.items()):
						#print category
						for sub_category, sub_category_data in sorted(category_data.items()):
							#print sub_category
							if sub_category != 'metadata':
								try:
									numerator = sub_category_data['numerators']['this']
								except KeyError as e:
									numerator = None
									pass

								for key, data in sorted(sub_category_data.items()):
									if (key == 'values') or (key == 'error') or (key == 'numerator_errors') or (key == 'error_ratio') or (key == 'index') or (key == 'numerators'):
										# pass keys to doc OrderedDict so we can sum correctly
										doc_data = doc[top_level][category][sub_category][key]
										# if category == 'child_care':
										# 	print doc_data
										process_sub_categories(key, data, numerator, doc_data)
									elif (key != 'name') and (key != 'acs_release') and (key != 'metadata') and (key != 'year'):
										
										try: 
											numerator = data['numerators']['this']
										except KeyError as e:
											numerator = None
											pass

										# data is one more rung down the ladder
										for sub_key, sub_data in sorted(data.items()):
											if (sub_key == 'values') or (sub_key == 'error') or (sub_key == 'numerator_errors') or (sub_key == 'error_ratio') or (sub_key == 'index') or (sub_key == 'numerators'):
												doc_data = doc[top_level][category][sub_category][key][sub_key]
												process_sub_categories(sub_key, sub_data, numerator, doc_data)
											elif (sub_key != 'name') and (sub_key != 'acs_release') and (sub_key != 'metadata') and (sub_key != 'year'):
												numerator = sub_data['numerators']['this']
												# data is one more rung down the ladder
												for sub_sub_key, sub_sub_data in sorted(sub_data.items()):
													doc_data = doc[top_level][category][sub_category][key][sub_key][sub_sub_key]
													process_sub_categories(sub_sub_key, sub_sub_data, numerator, doc_data)

											


	

													
	# normalize 'custom' fields and set them to equal this
	for top_level, top_level_data in sorted(doc.items()):
		if top_level != 'geography' and top_level != 'geo_metadata':
			for category, category_data in sorted(top_level_data.items()):
				print(category)
				for sub_category, sub_category_data in sorted(category_data.items()):


					if sub_category != 'metadata':
						print(sub_category)
						#print sub_category_data

						# special case for grouped bar charts where sub categories should total 100%
						if sub_category == 'marital_status_grouped' or sub_category == 'youth_school_enrollment_grouped' or sub_category == 'youth_school_employment_grouped' or sub_category == 'coverage_distribution':
							denominator = dict()

							keys = list(sub_category_data.keys())
							if 'metadata' in keys:
								keys.remove('metadata')
							if 'acs_release' in keys:
								keys.remove('acs_release')
							if 'name' in keys:
								keys.remove('name')
							if 'year' in keys:
								keys.remove('year')
							# print('First Keys:')
							# print(keys)

							#set up denom keys
							for key, data in sorted(sub_category_data.items()):
								keys = list(data.keys())
								for k in keys:
									# print(k)
									denominator[k] = None
			

							for key, data in sorted(sub_category_data.items()):
								keys = list(data.keys())
								if 'metadata' in keys:
									keys.remove('metadata')
								if 'acs_release' in keys:
									keys.remove('acs_release')
								if 'name' in keys:
									keys.remove('name')
								if 'universe'in keys:
									keys.remove('universe')
								if 'table_id'in keys:
									keys.remove('table_id')
								if 'year' in keys:
									keys.remove('year')
								# print('Second Keys:')
								# print(keys)
								for k in keys:
									# print('Key:' + k)
									if 'values' in sub_category_data[key][k]:
										if 'denominator' in sub_category_data[key][k]['values']:
											for j, d in sorted(data.items()):
												# print("j:" + j)
												# print(d)
												if j == k:
													found = d['values']['denominator']
													#print found
													if denominator[k] is None:
														denominator[k] = found
													elif denominator[k] < found:
														denominator[k] = found
													else:
														denominator[k] = denominator[k]	

													# print(denominator[k])

							for key, data in sorted(sub_category_data.items()):
								keys = list(data.keys())
								if 'metadata' in keys:
									keys.remove('metadata')
								if 'acs_release' in keys:
									keys.remove('acs_release')
								if 'name' in keys:
									keys.remove('name')
								if 'universe'in keys:
									keys.remove('universe')
								if 'table_id'in keys:
									keys.remove('table_id')
								if 'year' in keys:
									keys.remove('year')

								for k in keys:
									for j, d in sorted(data.items()):
										if j == k:
											if 'numerators' in d:
												if 'custom' in d['numerators']:
													numerator = d['numerators']['custom']
												else:
													numerator = None
											else:
												numerator = None

											for sub_key, sub_data in sorted(d.items()):
												#print sub_key
												#print numerator
												#print denominator[k]
												try:
													denominator_send = denominator[k]
												except KeyError as e:
													denominator_send = None
													pass
												normalize_sub_categories(sub_key, sub_data, numerator, denominator_send)													

						elif sub_category == 'occupancy_by_race':
							denominator = dict()

							# keys = list(sub_category_data.keys())
							# if 'metadata' in keys:
							# 	keys.remove('metadata')
							# if 'acs_release' in keys:
							# 	keys.remove('acs_release')
							# if 'name' in keys:
							# 	keys.remove('name')
							# # print('First Keys:')
							# # print(keys)

							for key, data in sorted(sub_category_data.items()):
								keys = list(data.keys())
								if 'metadata' in keys:
									keys.remove('metadata')
								if 'acs_release' in keys:
									keys.remove('acs_release')
								if 'name' in keys:
									keys.remove('name')
								if 'universe'in keys:
									keys.remove('universe')
								if 'table_id'in keys:
									keys.remove('table_id')
								if 'year' in keys:
									keys.remove('year')

								denominator[key] = None
								# for k in keys:
								# 	print(k)
								# 	denominator[key][k] = None
								# print('denominator:')
								# print(denominator[key])
								for k in keys:
									# print('Key:' + k)
									if 'values' in sub_category_data[key][k]:
										if 'denominator' in sub_category_data[key][k]['values']:
											for j, d in sorted(data.items()):
												# print("j:" + j)
												# print(d)
												if j == k:
													found = d['values']['denominator']
													# print(found)
													if denominator[key] is None:
														denominator[key] = found
													elif denominator[key] < found:
														denominator[key] = found
													else:
														denominator[key] = denominator[key]	

													# print(denominator[key][k])

							for key, data in sorted(sub_category_data.items()):
								keys = list(data.keys())
								print(keys)
								if 'metadata' in keys:
									keys.remove('metadata')
								if 'acs_release' in keys:
									keys.remove('acs_release')
								if 'name' in keys:
									keys.remove('name')
								if 'universe'in keys:
									keys.remove('universe')
								if 'table_id'in keys:
									keys.remove('table_id')
								if 'year' in keys:
									keys.remove('year')
								for k in keys:
									for j, d in sorted(data.items()):
										print(d)
										if j == k:
											if 'numerators' in d:
												if 'custom' in d['numerators']:
													numerator = d['numerators']['custom']
												else:
													numerator = None
											else:
												numerator = None

											for sub_key, sub_data in sorted(d.items()):
												print(sub_key)
												print(numerator)
												print(denominator[key])
												normalize_sub_categories(sub_key, sub_data, numerator, denominator[key])	


						else:
							#special case denominators
							if sub_category == 'child_care_center_chart_data' or sub_category == 'child_care_program_chart_data':
								denominator = doc[top_level]['child_care']['child_care_centers']['values']['custom']
							elif sub_category == 'child_care_capacity_chart_data':
								denominator = doc[top_level]['child_care']['child_care_capacity']['values']['custom']
							elif sub_category == 'by_characteristic' or sub_category == 'race_distribution':
								denominator = doc[top_level]['births']['total']['values']['custom']
							
							elif sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
								numerator = dict()
								denominator = dict()
							else:
								denominator = None
								# check if denominator is shallow
								if 'values' in sub_category_data:
									if 'denominator' in sub_category_data['values']:
										denominator = sub_category_data['values']['denominator']
									else:
										denominator = None
								else:
									denominator = None

							#get keys
							keys = list(sub_category_data.keys())
							if 'metadata' in keys:
								keys.remove('metadata')
							if 'acs_release' in keys:
								keys.remove('acs_release')
							if 'name' in keys:
								keys.remove('name')
							if 'year' in keys:
								keys.remove('year')
							
							if sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
								#print 'Keys 579:'
								#print keys
								if not denominator:
									for k in keys:
										denominator[k] = None
										if 'values' in sub_category_data[k]:
											if 'denominator' in sub_category_data[k]['values']:
												denominator[k] = sub_category_data[k]['values']['denominator']

							else:
								if denominator is None:
									for k in keys:
										if 'values' in sub_category_data[k]:
											if 'denominator' in sub_category_data[k]['values']:
												found = sub_category_data[k]['values']['denominator']
												if denominator is None:
													denominator = found
												elif denominator < found:
													denominator = found
												else:
													denominator = denominator

							if sub_category == 'children_distribution_by_age' and not numerator:
								for k in keys:
									if 'numerators' in sub_category_data[k]:
										if 'custom' in sub_category_data[k]['numerators']:
											numerator[k] = sub_category_data[k]['numerators']['custom']
							elif sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
								pass
							else:
								if 'numerators' in sub_category_data:
									if 'custom' in sub_category_data['numerators']:
										numerator = sub_category_data['numerators']['custom']
									else:
										numerator = None
								else:
									numerator = None

							# if sub_category == 'children_distribution_by_age':
							# 	print 'First Numerator:'
							# 	print numerator
							# 	print 'First Denominator:'
							# 	print denominator

							# special case for `poverty_family_educational_attainment` to flag if we've stored data for a parent key yet
							if sub_category == 'poverty_family_educational_attainment':
								parent_keys = list(sub_category_data.keys())
								if 'metadata' in parent_keys:
									parent_keys.remove('metadata')
								if 'acs_release' in parent_keys:
									parent_keys.remove('acs_release')
								if 'name' in parent_keys:
									parent_keys.remove('name')
								if 'year' in keys:
									keys.remove('year')

								for pk in parent_keys:
									numerator[pk] = dict()
									denominator[pk] = dict()

							for key, data in sorted(sub_category_data.items()):
								if sub_category == 'poverty_family_educational_attainment':
									print(key)
									print(data)

									# numerators and denominators for poverty_family_educational_attainment
								if (sub_category == 'poverty_family_educational_attainment') and (key != "metadata") and (key != "acs_release") and (key != "year"):
									if not numerator[key] and not denominator[key]:
										keys = list(data.keys())
										# print("Keys 721:")
										# print(keys)
										if 'metadata' in keys:
											keys.remove('metadata')
										if 'acs_release' in keys:
											keys.remove('acs_release')
										if 'name' in keys:
											keys.remove('name')
										if 'year' in keys:
											keys.remove('year')	

										for k in keys:
											if 'numerators' in data[k]:
												if 'custom' in data[k]['numerators']:
													numerator[key][k] = data[k]['numerators']['custom']

										for k in keys:
											if 'values' in data[k]:
												if 'denominator' in data[k]['values']:
													denominator[key][k] = data[k]['values']['denominator']																
										# print(numerator)
										# print(denominator)

								if (key == 'values') or (key == 'error') or (key == 'numerator_errors') or (key == 'error_ratio') or (key == 'index') or (key == 'numerators'):
									# special case for `per_capita_income_in_the_last_12_months`, `median_household_income` and `sat_all_subject`, `sat_math`, and `sat_reading_writing` keys
									if (sub_category == 'per_capita_income_in_the_last_12_months') or (sub_category == 'median_household_income') or (sub_category == 'sat_all_subject') or (sub_category == 'sat_math') or (sub_category == 'sat_reading_writing') or (sub_category == 'median_costs') or (sub_category == 'median_value'):
										normalize_by_geography(key, data)
									elif sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
										for k in keys:
											if key == k:
												try:
													denominator_send = denominator[k]
												except KeyError as e:
													denominator_send = None
													pass												
												normalize_sub_categories(key, data, numerator[k], denominator_send, sub_category)										
									else:
										normalize_sub_categories(key, data, numerator, denominator)

								elif (key != 'name') and (key != 'acs_release') and (key != 'metadata')and (key != 'year'):

									if denominator is None or not denominator:
										keys = list(data.keys())
										if 'metadata' in keys:
											keys.remove('metadata')
										if 'acs_release' in keys:
											keys.remove('acs_release')
										if 'name' in keys:
											keys.remove('name')
										if 'year' in keys:
											keys.remove('year')

										if sub_category == 'children_distribution_by_age':
											# print('Second Keys:')
											# print(keys)
											for k in keys:
												denominator[k] = None
												if 'values' in data[k]:
													if 'denominator' in data[k]['values']:
														denominator[k] = data[k]['values']['denominator']

										else:
											for k in keys:
												if 'values' in data[k]:
													if 'denominator' in data[k]['values']:
														found = data[k]['values']['denominator']
														if denominator is None:
															denominator = found
														elif denominator < found:
															denominator = found
														else:
															denominator = denominator


									if (sub_category == 'children_distribution_by_age') and not numerator:
										keys = list(data.keys())
										if 'metadata' in keys:
											keys.remove('metadata')
										if 'acs_release' in keys:
											keys.remove('acs_release')
										if 'name' in keys:
											keys.remove('name')	
										if 'year' in keys:
											keys.remove('year')									
										for k in keys:
											if 'numerators' in data[k]:
												if 'custom' in data[k]['numerators']:
													numerator[k] = data[k]['numerators']['custom']

									elif sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
										pass
									else:

										if 'numerators' in data:
											if 'custom' in data['numerators']:
												numerator = data['numerators']['custom']
											else:
												numerator = None
										else:
											numerator = None

									# if sub_category == 'children_distribution_by_age':
									# 	print 'Second Denominator:'
									# 	print denominator

									# if sub_category == 'children_distribution_by_age':
									# 	print 'Second Numerator:'
									# 	print numerator

									# data is one more rung down the ladder
									for sub_key, sub_data in sorted(data.items()):
										# if sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
										# 	print "Data 704:"
										# 	print data
										# 	print "Sub Key 706:"
										# 	print sub_key
										# 	print "Sub Data 708:"
										# 	print sub_data

										if (sub_key == 'values') or (sub_key == 'error') or (sub_key == 'numerator_errors') or (sub_key == 'error_ratio') or (sub_key == 'index') or (sub_key == 'numerators'):
											# special case for `per_capita_income_in_the_last_12_months`, `median_household_income` and `sat_all_subject`, `sat_math`, and `sat_reading_writing` keys
											if (key == 'per_capita_income_in_the_last_12_months') or (key == 'median_household_income') or (key == 'sat_all_subject') or (key == 'sat_math') or (key == 'sat_reading_writing') or (key == 'median_costs') or (key == 'median_value'):
												normalize_by_geography(sub_key, sub_data)
											elif sub_category == 'children_distribution_by_age':
												for k in keys:
													if key == k:
														# print "Sent to normalizer:"
														# print key
														# print k
														# print sub_key
														# print sub_data
														# print numerator[k]
														# print denominator[k]
														try:
															denominator_send = denominator[k]
														except KeyError as e:
															denominator_send = None
															pass
														normalize_sub_categories(sub_key, sub_data, numerator[k], denominator_send, sub_category)
											else:
												normalize_sub_categories(sub_key, sub_data, numerator, denominator)
											
										elif (sub_key != 'name') and (sub_key != 'acs_release') and (sub_key != 'metadata') and (sub_key != 'year'):
											if denominator is None or not bool(denominator):
												#get keys
												keys = list(sub_data.keys())
												if 'metadata' in keys:
													keys.remove('metadata')
												if 'acs_release' in keys:
													keys.remove('acs_release')
												if 'name' in keys:
													keys.remove('name')
												if 'year' in keys:
													keys.remove('year')
												if sub_category == 'children_distribution_by_age':
													# print 'Third Keys:'
													# print keys
													for k in keys:
														if 'values' in sub_data[k]:
															if 'denominator' in sub_data[k]['values']:
																denominator[k] = sub_data[k]['values']['denominator']

												else:
													for k in keys:
														if 'values' in sub_data[k]:
															if 'denominator' in sub_data[k]['values']:
																found = sub_data[k]['values']['denominator']
																if denominator is None:
																	denominator = found
																elif denominator < found:
																	denominator = found
																else:
																	denominator = denominator

											if (sub_category == 'children_distribution_by_age') and not numerator:
												keys = list(sub_data.keys())
												if 'metadata' in keys:
													keys.remove('metadata')
												if 'acs_release' in keys:
													keys.remove('acs_release')
												if 'name' in keys:
													keys.remove('name')
												if 'year' in keys:
													keys.remove('year')

												for k in keys:
													if 'numerators' in sub_data[k]:
														if 'custom' in sub_data[k]['numerators']:
															numerator[k] = sub_data[k]['numerators']['custom']

											elif sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
												pass
											else:

												if 'numerators' in sub_data:
													if 'custom' in sub_data['numerators']:
														numerator = sub_data['numerators']['custom']
													else:
														numerator = None
												else:
													numerator = None
											

											for sub_sub_key, sub_sub_data in sorted(sub_data.items()):
												# if sub_category == 'children_distribution_by_age' or sub_category == 'poverty_family_educational_attainment':
												# 	print "Data:"
												# 	print sub_data
												# 	print "Sub Key:"
												# 	print sub_sub_key
												# 	print "Sub Data:"
												# 	print sub_sub_data
												# 	print "Keys 790:"
												# 	print keys

												# special case for `per_capita_income_in_the_last_12_months`, `median_household_income` and `sat_all_subject`, `sat_math`, and `sat_reading_writing` keys
												if (sub_key == 'per_capita_income_in_the_last_12_months') or (sub_key == 'median_household_income') or (sub_key == 'sat_all_subject') or (sub_key == 'sat_math') or (sub_key == 'sat_reading_writing') or (sub_key == 'median_costs') or (sub_key == 'median_value'):
													normalize_by_geography(sub_sub_key, sub_sub_data)
												elif sub_category == 'children_distribution_by_age':
													for k in keys:
														if sub_key == k:	
															# print "Sent to normalizer:"
															# print sub_key
															# print k
															# print sub_sub_key
															# print sub_sub_data
															# print numerator[k]
															# print denominator[k]
															try:
																denominator_send = denominator[k]
															except KeyError as e:
																denominator_send = None
																pass					
															normalize_sub_categories(sub_sub_key, sub_sub_data, numerator[k], denominator_send, sub_category)

												elif sub_category == 'poverty_family_educational_attainment':
													for i, k in enumerate(keys):
														if sub_key == k:
															# print(key)
															# print(sub_key)
															# print(k)
															# print("Sent to normalizer:")
															# print(sub_sub_key)
															# print(sub_sub_data)
															# print(numerator)
															# print(denominator[key])
															try:
																denominator_send = denominator[key][k]
															except KeyError as e:
																denominator_send = None
																pass
															normalize_sub_categories(sub_sub_key, sub_sub_data, numerator[key][k], denominator_send, sub_category)

												else:
													normalize_sub_categories(sub_sub_key, sub_sub_data, numerator, denominator)
									
											


	# remove custom and denominator fields from dict
	for top_level, top_level_data in sorted(doc.items()):
		if top_level != 'geography' and top_level != 'geo_metadata':
			for category, category_data in sorted(top_level_data.items()):
				for sub_category, sub_category_data in sorted(category_data.items()):
					if isinstance(sub_category_data, dict):
						if 'values' in sub_category_data:
							if 'custom' in sub_category_data['values']:
								sub_category_data['values'].pop('custom', None)
							if 'denominator' in sub_category_data['values']:
								sub_category_data['values'].pop('denominator', None)
							if 'geos_in_use' in sub_category_data['values']:
								sub_category_data['values'].pop('geos_in_use', None)
						
						for key, data in sorted(sub_category_data.items()):
							if isinstance(data, dict):
								if 'values' in data:
									if 'custom' in data['values']:
										data['values'].pop('custom', None)
									if 'denominator' in data['values']:
										data['values'].pop('denominator', None)
									if 'geos_in_use' in data['values']:
										data['values'].pop('geos_in_use', None)
																		
								for sub_key, sub_data in sorted(data.items()):
									if isinstance(sub_data, dict):
										if 'values' in sub_data:
											if 'custom' in sub_data['values']:
												sub_data['values'].pop('custom', None)
											if 'denominator' in sub_data['values']:
												sub_data['values'].pop('denominator', None)
											if 'geos_in_use' in sub_data['values']:
												sub_data['values'].pop('geos_in_use', None)

										
										for sub_sub_key, sub_sub_data in sorted(sub_data.items()):
											if isinstance(sub_sub_data, dict):
												if 'values' in sub_sub_data:
													if 'custom' in sub_sub_data['values']:
														sub_sub_data['values'].pop('custom', None)
													if 'denominator' in sub_sub_data['values']:
														sub_sub_data['values'].pop('denominator', None)
													if 'geos_in_use' in sub_sub_data['values']:
														sub_sub_data['values'].pop('geos_in_use', None)
												


	square_miles = get_division(doc['geography']['this']['land_area'], 2589988)
	try:
		if square_miles < .1:
			square_miles = get_division(doc['geography']['this']['land_area'], 2589988, 3)
	except TypeError as e:
		square_miles = 0
		pass

	total_pop = doc['geography']['this']['total_population']
	population_density = get_division(total_pop, get_division(doc['geography']['this']['land_area'], 2589988, -1))
	doc['geo_metadata']['square_miles'] = square_miles
	doc['geo_metadata']['population_density'] = population_density

	return doc

