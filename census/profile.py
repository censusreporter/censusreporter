import json
import math
import operator
import requests
import time

from collections import OrderedDict
from django.conf import settings
from .utils import get_ratio, get_division, SUMMARY_LEVEL_DICT


import logging
logging.basicConfig()
logger = logging.getLogger(__name__)


class ApiClient(object):
	def __init__(self, base_url):
		self.base_url = base_url

	def _get(self, path, params=None):
		url = self.base_url + path
		print url
		print params
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
		return self._get('/1.0/geo/tiger2017/{}/parents'.format(geoid))

	def get_geoid_data(self, geoid):
		return self._get('/1.0/geo/tiger2017/{}'.format(geoid))

	def get_data(self, table_ids, geo_ids, acs='latest'):
		if hasattr(table_ids, '__iter__'):
			table_ids = ','.join(table_ids)

		if hasattr(geo_ids, '__iter__'):
			geo_ids = ','.join(geo_ids)

		return self._get('/1.0/data/show/{}'.format(acs), params=dict(table_ids=table_ids, geo_ids=geo_ids))

class D3ApiClient(object):
	def __init__(self, base_url):
		self.base_url = base_url

	def _get(self, table_id, field_name, geo_ids, layer_id):
		#https://services2.arcgis.com/HsXtOCMp1Nis1Ogr/arcgis/rest/services/Births_bySD_2014/FeatureServer/0/query?outFields=*&where=GEOID10%20in%20(2636660,2636630)&f=json
		url = self.base_url + '/' + table_id + '/FeatureServer/'+ layer_id +'/query?outFields=*&where='+ field_name +'%20in%20(' + geo_ids + ')&f=json'
		print url
		# using post
		r = requests.post(url)
		data = None
		if r.status_code == 200:
			data = r.json(object_pairs_hook=OrderedDict)
		else:
			raise Exception("Error fetching data: " + r.json().get("error"))

		return data

	def get_data(self, table_id, field_name, geo_ids, layer_id='0'):

		if hasattr(geo_ids, '__iter__'):
			geo_ids = ','.join(geo_ids)

		return self._get(table_id, field_name, geo_ids, layer_id)


def format_d3_data(years, table_name, title, universe, denominator_column_id, fields, state_data, county_data, tract_data, block_group_data, county_sd_data, msa_data, congressional_district_data, state_senate_data, state_house_data, school_district_data, zcta_data, d3_item_levels,
		):
	data = OrderedDict()
	# release notes
	data['release'] = OrderedDict()
	data['release']['id'] = "d3_open_data"
	data['release']['name'] = "Data Driven Detroit Open Data Portal"
	data['release']['years'] = years

	#table headings
	data['tables'] = OrderedDict()
	data['tables'][table_name] = OrderedDict()
	data['tables'][table_name]['title'] = title
	data['tables'][table_name]['universe'] = universe
	data['tables'][table_name]['denominator_column_id'] = denominator_column_id

	# column headings
	data['tables'][table_name]['columns'] = OrderedDict()

	for key, field in fields.iteritems():
		key = 'D3-' + key
		data['tables'][table_name]['columns'][key] = OrderedDict()
		data['tables'][table_name]['columns'][key]['name'] = field['name']
		data['tables'][table_name]['columns'][key]['indent'] = field['indent']

	# data and geography
	data['data'] = OrderedDict()
	data['geography'] = OrderedDict()
	for geo in d3_item_levels:
		data['geography'][geo['geoid']] = OrderedDict()
		data['geography'][geo['geoid']]['name'] = geo['display_name']
		data['data'][geo['geoid']] = OrderedDict()
		data['data'][geo['geoid']][table_name] = OrderedDict()
		data['data'][geo['geoid']][table_name]['estimate'] = OrderedDict()
		data['data'][geo['geoid']][table_name]['error'] = OrderedDict()
		if geo['sumlevel'] == '040' and state_data:
			try:
				for feature in state_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '050' and county_data:
			try:
				for feature in county_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '060' and county_sd_data:
			try:
				for feature in county_sd_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '140' and tract_data:
			try:
				for feature in tract_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0							
			except Exception as e:
				pass

		if geo['sumlevel'] == '150' and block_group_data:
			try:
				for feature in block_group_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '310' and msa_data:
			try:
				for feature in msa_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '500' and congressional_district_data:
			try:
				for feature in congressional_district_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '610' and state_senate_data:
			try:
				for feature in state_senate_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass

		if geo['sumlevel'] == '620' and state_house_data:
			try:
				for feature in state_house_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass


		if geo['sumlevel'] == '860' and zcta_data:
			try:
				for feature in zcta_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass
		
		if (geo['sumlevel'] == '950' or geo['sumlevel'] == '960' or geo['sumlevel'] == '970') and school_district_data:
			try:
				for feature in school_district_data['features']:
					for key, value in feature['attributes'].iteritems():
						key = 'D3-' + key
						data['data'][geo['geoid']][table_name]['estimate'][key] = value
						data['data'][geo['geoid']][table_name]['error'][key] = 0
			except Exception as e:
				pass




	return data

def _maybe_int(i):
	return int(i) if i else i

def percentify(val):
	return val * 100

def rateify(val):
	return val * 1000

def moe_add(moe_a, moe_b):
	# From http://www.census.gov/acs/www/Downloads/handbooks/ACSGeneralHandbook.pdf
	return math.sqrt(moe_a**2 + moe_b**2)

def moe_proportion(numerator, denominator, numerator_moe, denominator_moe):
	# From http://www.census.gov/acs/www/Downloads/handbooks/ACSGeneralHandbook.pdf
	# "Calculating MOEs for Derived Proportions" A-14 / A-15
	proportion = float(numerator) / denominator
	try:
		return math.sqrt(numerator_moe**2 - (proportion**2 * denominator_moe**2)) / float(denominator)
	except ValueError, e:
		return moe_ratio(numerator, denominator, numerator_moe, denominator_moe)

def moe_ratio(numerator, denominator, numerator_moe, denominator_moe):
	# From http://www.census.gov/acs/www/Downloads/handbooks/ACSGeneralHandbook.pdf
	# "Calculating MOEs for Derived Ratios" A-14 / A-15
	ratio = float(numerator) / denominator
	return math.sqrt(numerator_moe**2 + (ratio**2 * denominator_moe**2)) / float(denominator)

ops = {
	'+': operator.add,
	'-': operator.sub,
	'/': operator.div,
	'%': percentify,
	'%%': rateify,
}
moe_ops = {
	'+': moe_add,
	'-': moe_add,
	'/': moe_proportion,
	'%': percentify,
	'%%': rateify,
}
def value_rpn_calc(data, rpn_string):
	stack = []
	moe_stack = []
	numerator = None
	numerator_moe = None

	for token in rpn_string.split():

		if token in ops:
			b = stack.pop()
			b_moe = moe_stack.pop()

			if token in ('%', '%%'):
				# Single-argument operators
				if b is None:
					c = None
					c_moe = None
				else:
					c = ops[token](b)
					c_moe = moe_ops[token](b_moe)
			else:
				a = stack.pop()
				a_moe = moe_stack.pop()

				if a is None or b is None:
					c = None
					c_moe = None
				elif token == '/':
					# Broken out because MOE proportion needs both MOE and estimates
					# We're dealing with ratios, not pure division.
					if a == 0 or b == 0:
						c = 0
						c_moe = 0
					else:
						a = float(a)
						b = float(b)
						c = ops[token](a, b)
						c_moe = moe_proportion(a, b, a_moe, b_moe)
					numerator = a
					numerator_moe = round(a_moe, 1)
				else:
					c = ops[token](a, b)
					c_moe = moe_ops[token](a_moe, b_moe)
		elif token.startswith('B') or token.startswith('D3-'):
			try:
				c = data['estimate'][token]
				c_moe = data['error'][token]
			except KeyError as e:
				c = None
				c_moe = None
		else:
			c = float(token)
			c_moe = float(token)
		stack.append(c)
		moe_stack.append(c_moe)

	value = stack.pop()
	error = moe_stack.pop()

	return (value, error, numerator, numerator_moe)

def build_item(name, data, parents, rpn_string):
	val = OrderedDict([('name', name),
		('values', dict()),
		('error', dict()),
		('numerators', dict()),
		('numerator_errors', dict())])

	for parent in parents:
		label = parent['relation']
		geoid = parent['geoid']
		data_for_geoid = dict(estimate={}, error={})
		for table_id, table_data in data['data'][geoid].iteritems():
			data_for_geoid['estimate'].update(table_data['estimate'])
			data_for_geoid['error'].update(table_data['error'])

		value = None
		error = None
		numerator = None
		numerator_moe = None

		if data_for_geoid:
			(value, error, numerator, numerator_moe) = value_rpn_calc(data_for_geoid, rpn_string)

		# provide 2 decimals of precision, let client decide how much to use
		if value is not None:
			value = round(value, 2)
			# if error is 'None' should it be 0?
			error = round(error, 2) if error else 0

		if numerator is not None:
			numerator = round(numerator, 2)
			numerator_moe = round(numerator_moe, 2)

		val['values'][label] = value
		val['error'][label] = error
		val['numerators'][label] = numerator
		val['numerator_errors'][label] = numerator_moe

	return val

def add_metadata(dictionary, table_id, universe, acs_release):
	val = dict(table_id=table_id,
		universe=universe,
		acs_release=acs_release,)

	dictionary['metadata'] = val

def geo_profile(geoid, acs='latest'):
	api = ApiClient(settings.API_URL)
	d3_api = D3ApiClient(settings.D3_API_URL)

	item_levels = api.get_parent_geoids(geoid)['parents']
	comparison_geoids = [level['geoid'] for level in item_levels]

	# for D3 Open Data Portal pulls
	state_geoids = []
	county_geoids = []
	county_sd_geoids = []
	tract_geoids = []
	block_group_geoids = []
	msa_geoids = []
	congressional_district_geoids = []
	state_senate_geoids = []
	state_house_geoids = []
	zcta_geoids = []
	school_district_geoids = []
	d3_item_levels = []
	# iterate over levels and create geoids useful for d3 API
	for level in item_levels:
		#split geoid to remove the not useful part
		split_geoid = level['geoid'].split('US')
		if level['sumlevel'] == '040':
			d3_item_levels.append(level)
			state_geoids.append(split_geoid[1])
		if level['sumlevel'] == '050':
			d3_item_levels.append(level)
			county_geoids.append(split_geoid[1])
		if level['sumlevel'] == '060':
			d3_item_levels.append(level)
			county_sd_geoids.append(split_geoid[1])
		if level['sumlevel'] == '140':
			d3_item_levels.append(level)
			tract_geoids.append(split_geoid[1])
		if level['sumlevel'] == '150':
			d3_item_levels.append(level)
			block_group_geoids.append(split_geoid[1])
		if level['sumlevel'] == '310':
			d3_item_levels.append(level)
			msa_geoids.append(split_geoid[1])
		if level['sumlevel'] == '500':
			d3_item_levels.append(level)
			# remove the leading 26 to conform to the ODP dataset
			# cong_dist_geoid = split_geoid[1].replace("26", "", 1)
			# congressional_district_geoids.append(cong_dist_geoid)
			congressional_district_geoids.append(split_geoid[1])
		if level['sumlevel'] == '610':
			d3_item_levels.append(level)
			# state_senate_geoid = split_geoid[1].replace("260", "", 1)
			# state_senate_geoid = state_senate_geoid.lstrip("0")
			state_senate_geoids.append(split_geoid[1])
		if level['sumlevel'] == '620':
			d3_item_levels.append(level)
			# state_house_geoid = split_geoid[1].replace("260", "", 1)
			# state_house_geoid = state_house_geoid.lstrip("0")
			state_house_geoids.append(split_geoid[1])
		if level['sumlevel'] == '860':
			d3_item_levels.append(level)
			zcta_geoids.append(split_geoid[1])
		if level['sumlevel'] == '950' or level['sumlevel'] == '960' or level['sumlevel'] == '970':
			d3_item_levels.append(level)
			school_district_geoids.append(split_geoid[1])


	doc = OrderedDict([('geography', OrderedDict()),
					   ('demographics', dict()),
					   ('economics', dict()),
					   ('families', dict()),
					   ('housing', dict()),
					   ('social', dict()),])

	# get D3 data on Graduation Rates
	state_data = []
	county_data = []
	county_sd_data = []
	tract_data = []
	block_group_data = []
	msa_data = []
	congressional_district_data = []
	state_senate_data = []
	state_house_data = []
	school_district_data = []
	zcta_data = []	

	if state_geoids:
		state_data = d3_api.get_data('GraduationRate_2016_2017_StateOfMichigan__20181009', 'StateID', state_geoids)

	if county_geoids:
		county_data = d3_api.get_data('GraduationRates_2016_2017_byCounty__20181019', 'GEOID10', county_geoids)

	if county_sd_geoids:
		county_sd_data = d3_api.get_data('GraduationRates_2016_2017_byCountySubdivision__20181019', 'GEOID10', county_sd_geoids)

	# if tract_geoids:
	# 	tract_data = d3_api.get_data('GraduationRates_2016_2017_byTract__20181019', 'GEOID10', tract_geoids)

	# if block_group_geoids:
	# 	block_group_data = d3_api.get_data('GraduationRates_2016_2017_byBlockGroup__20181108', 'GEOID10', block_group_geoids)

	if msa_geoids:
		msa_data = d3_api.get_data('GraduationRates_2016_2017_byMSA__20181019', 'GeoID10_MSA', msa_geoids)

	if congressional_district_geoids:
		congressional_district_data = d3_api.get_data('GraduationRates_2016_2017_byCongressionalDistrict__20181019', 'GEOID', congressional_district_geoids)

	if state_senate_geoids:
		state_senate_data = d3_api.get_data('GraduationRates_2016_2017_byMIStateSenate__20181019', 'GEOID', state_senate_geoids)	

	if state_house_geoids:
		state_house_data = d3_api.get_data('GraduationRates_2016_2017_byHouseOfReps__20181019', 'GEOID', state_house_geoids)

	if school_district_geoids:
	 	school_district_data = d3_api.get_data('GraduationRates_2016_2017_bySchoolDistrict__20181019', 'GEOID10', school_district_geoids)

	if zcta_geoids:
		zcta_data = d3_api.get_data('GraduationRates_2016_2017_byZip__20181019', 'ZCTA5CE10', zcta_geoids)


	# take D3 ODP data and create structure like census_reporter structure

	fields = OrderedDict()
	fields['CohortCnt'] = OrderedDict()
	fields['CohortCnt']['name'] = "Number of students in the class that were on schedule to graduate in 2017"
	fields['CohortCnt']['indent'] = 0

	fields['GradCnt'] = OrderedDict()
	fields['GradCnt']['name'] = "Number of students in the class that graduated in 2017"
	fields['GradCnt']['indent'] = 1

	fields['GradRate'] = OrderedDict()
	fields['GradRate']['name'] = "Ratio of students that graduated in 2017 to total students in cohort"
	fields['GradRate']['indent'] = 1


	data = format_d3_data("2017", "D3-Graduation-Rates", "Graduation Rate", "Number of students in the class that were on schedule to graduate in 2017", "CohortCnt", fields, state_data, county_data, tract_data, block_group_data, county_sd_data, msa_data, congressional_district_data, state_senate_data, state_house_data, school_district_data, zcta_data, d3_item_levels,
		)

	graduation_dict = dict()
	doc['social']['graduation'] = graduation_dict

	graduation_dict['graduation_rate'] = build_item('Graduation Rate', data, d3_item_levels,
		'D3-GradCnt D3-CohortCnt / %')
	add_metadata(graduation_dict['graduation_rate'], 'D3-Graduation-Rates', 'Number of students in the class that were on schedule to graduate in 2017', 'D3 Open Data Portal, State of Michigan Center for Educational Performance and Information, 2017')

	graduation_chart_data = OrderedDict()
	doc['social']['graduation_chart_data'] = graduation_chart_data
	add_metadata(graduation_chart_data, 'D3-Graduation-Rates', 'Number of students in the class that were on schedule to graduate in 2017', 'D3 Open Data Portal, State of Michigan Center for Educational Performance and Information, 2017')

	graduation_chart_data['graduated'] = build_item('Graduated', data, d3_item_levels,
		'D3-GradCnt D3-CohortCnt / %')
	graduation_chart_data['not_graduated'] = build_item('Not Graduated', data, d3_item_levels,
		'D3-CohortCnt D3-GradCnt - D3-CohortCnt / %')


	# get D3 data on Child Care Centers
	state_data = []
	county_data = []
	county_sd_data = []
	tract_data = []
	block_group_data = []
	msa_data = []
	congressional_district_data = []
	state_senate_data = []
	state_house_data = []
	school_district_data = []
	zcta_data = []	

	if state_geoids:
		state_data = d3_api.get_data('LicensedChildCenters_StateOfMichigan_20180920', 'GEOID', state_geoids)

	if county_geoids:
		county_data = d3_api.get_data('LicensedChildCenters_by_County_20180920', 'GEOID10', county_geoids)

	if county_sd_geoids:
		county_sd_data = d3_api.get_data('LicensedChildCenters_by_CountySubdivision_20180920', 'GEOID10', county_sd_geoids)

	if tract_geoids:
		tract_data = d3_api.get_data('LicensedChildCenters_by_Tracts_20180920', 'GEOID10_Tract', tract_geoids)

	# if block_group_geoids:
	# 	block_group_data = d3_api.get_data('', 'GEOID10', block_group_geoids)

	if msa_geoids:
		msa_data = d3_api.get_data('LicensedChildCenters_by_MSA_20180920', 'GeoID10_MSA', msa_geoids)

	if congressional_district_geoids:
		congressional_district_data = d3_api.get_data('LicensedChildCenters_by_MICongressionalDistrict_20180920', 'GEOID', congressional_district_geoids)

	if state_senate_geoids:
		state_senate_data = d3_api.get_data('LicensedChildCenters_by_MISenate_20180920', 'GEOID', state_senate_geoids)

	if state_house_geoids:
		state_house_data = d3_api.get_data('LicensedChildCenters_by_MIHouseOfReps_20180920', 'GEOID', state_house_geoids)

	if school_district_geoids:
		school_district_data = d3_api.get_data('LicensedChildCenters_by_SchoolDistricts_20180920', 'GEOID10', school_district_geoids)

	if zcta_geoids:
		zcta_data = d3_api.get_data('LicensedChildCenters_by_ZIP_20180920', 'ZCTA', zcta_geoids)

	# take D3 ODP data and create structure like census_reporter structure

	fields = OrderedDict()
	fields['Centers'] = OrderedDict()
	fields['Centers']['name'] = "Number of licensed child care facilities"
	fields['Centers']['indent'] = 0

	fields['Capacity'] = OrderedDict()
	fields['Capacity']['name'] = "Capacity of licensed child care facilities"
	fields['Capacity']['indent'] = 1

	fields['GrpHmeCnt'] = OrderedDict()
	fields['GrpHmeCnt']['name'] = "Number of group homes"
	fields['GrpHmeCnt']['indent'] = 1

	fields['FamHmeCnt'] = OrderedDict()
	fields['FamHmeCnt']['name'] = "Number of family homes"
	fields['FamHmeCnt']['indent'] = 1

	fields['LicCenCnt'] = OrderedDict()	
	fields['LicCenCnt']['name'] = "Number of licensed child care centers"
	fields['LicCenCnt']['indent'] = 1

	fields['EarlyHSCnt'] = OrderedDict()	
	fields['EarlyHSCnt']['name'] = "Number of early head start programs"
	fields['EarlyHSCnt']['indent'] = 1

	fields['CapEarlyHS'] = OrderedDict()	
	fields['CapEarlyHS']['name'] = "Capacity of early head start programs"
	fields['CapEarlyHS']['indent'] = 2

	fields['GSRPCnt'] = OrderedDict()	
	fields['GSRPCnt']['name'] = "Number of GSRP programs"
	fields['GSRPCnt']['indent'] = 1

	fields['CapGSRP'] = OrderedDict()	
	fields['CapGSRP']['name'] = "Capacity of GSRP programs"
	fields['CapGSRP']['indent'] = 2

	fields['HSCnt'] = OrderedDict()	
	fields['HSCnt']['name'] = "Number of Head Start programs"
	fields['HSCnt']['indent'] = 1

	fields['CapHS'] = OrderedDict()	
	fields['CapHS']['name'] = "Capacity of Head Start programs"
	fields['CapHS']['indent'] = 2


	data = format_d3_data("2018", "D3-Child-Care-Centers", "Number of licensed child care facilities", "Number of licensed child care facilities", "Centers", fields, state_data, county_data, tract_data, block_group_data, county_sd_data, msa_data, congressional_district_data, state_senate_data, state_house_data, school_district_data, zcta_data, d3_item_levels,
		)

	child_care_dict = dict()
	doc['families']['child_care'] = child_care_dict

	child_care_dict['child_care_centers'] = build_item('Number of licensed child care facilities', data, d3_item_levels, 
		'D3-Centers')
	add_metadata(child_care_dict['child_care_centers'], 'D3-Child-Care-Centers', 'Number of licensed child care facilities', 'D3 Open Data Portal, Great Start to Quality, 2018') 

	child_care_dict['child_care_capacity'] = build_item('Capacity of licensed child care facilities', data, d3_item_levels, 
		'D3-Capacity')
	add_metadata(child_care_dict['child_care_capacity'], 'D3-Child-Care-Capacity', 'Capacity of licensed child care facilities', 'D3 Open Data Portal, Great Start to Quality, 2018') 	
	
	child_care_center_chart_data = OrderedDict()
	doc['families']['child_care']['child_care_center_chart_data'] = child_care_center_chart_data
	add_metadata(child_care_center_chart_data, 'D3-Child-Care-Centers', 'Licensed child care facilities', 'D3 Open Data Portal, Great Start to Quality, 2018')

	child_care_center_chart_data['LicCenCnt'] = build_item('Licensed child care centers', data, d3_item_levels,
		'D3-LicCenCnt D3-Centers / %')
	child_care_center_chart_data['GrpHmeCnt'] = build_item('Group homes', data, d3_item_levels,
		'D3-GrpHmeCnt D3-Centers / %')
	child_care_center_chart_data['FamHmeCnt'] = build_item('Family homes', data, d3_item_levels,
		'D3-FamHmeCnt D3-Centers / %')

	child_care_program_chart_data = OrderedDict()
	doc['families']['child_care']['child_care_program_chart_data'] = child_care_program_chart_data
	add_metadata(child_care_program_chart_data, 'D3-Child-Care-Programs', 'Licensed child care centers', 'D3 Open Data Portal, Great Start to Quality, 2018')

	child_care_program_chart_data['EarlyHSCnt'] = build_item('Early Head Start', data, d3_item_levels,
		'D3-EarlyHSCnt D3-LicCenCnt / %')
	child_care_program_chart_data['GSRPCnt'] = build_item('GSRP', data, d3_item_levels,
		'D3-GSRPCnt D3-LicCenCnt / %')
	child_care_program_chart_data['HSCnt'] = build_item('Head Start', data, d3_item_levels,
		'D3-HSCnt D3-LicCenCnt / %')

	child_care_capacity_chart_data = OrderedDict()
	doc['families']['child_care']['child_care_capacity_chart_data'] = child_care_capacity_chart_data
	add_metadata(child_care_capacity_chart_data, 'D3-Child-Care-Capacity', 'Capacity of licensed child care facilities', 'D3 Open Data Portal, Great Start to Quality, 2018')

	child_care_capacity_chart_data['CapEarlyHS'] = build_item('Early Head Start programs', data, d3_item_levels,
		'D3-CapEarlyHS D3-Capacity / %')
	child_care_capacity_chart_data['CapHS'] = build_item('Head Start programs', data, d3_item_levels,
		'D3-CapHS D3-Capacity / %')
	child_care_capacity_chart_data['CapGSRP'] = build_item('GSRP programs', data, d3_item_levels,
		'D3-CapGSRP D3-Capacity / %')



	# CR queries
	data = api.get_data('B01001', comparison_geoids, acs)
	acs_name = data['release']['name']
	doc['geography']['census_release'] = acs_name

	def convert_geography_data(row):
		return dict(full_name=row['display_name'],
					short_name=row['simple_name'],
					sumlevel=row['sumlevel'],
					land_area=row['aland'],
					full_geoid=row['full_geoid'])

	doc['geography']['parents'] = OrderedDict()

	for item_level in item_levels:
		name = item_level['relation']
		the_geoid = item_level['geoid']
		geoid_data = api.get_geoid_data(the_geoid)['properties']

		if name == 'this':
			doc['geography'][name] = convert_geography_data(geoid_data)
			doc['geography'][name]['total_population'] = _maybe_int(data['data'][the_geoid]['B01001']['estimate']['B01001001'])
		else:
			doc['geography']['parents'][name] = convert_geography_data(geoid_data)
			doc['geography']['parents'][name]['total_population'] = _maybe_int(data['data'][the_geoid]['B01001']['estimate']['B01001001'])


	# Demographics: Total number of Children
	child_pop_dict = dict()
	doc['demographics']['child_pop'] = child_pop_dict
	child_pop_dict['total'] = build_item('Number of children under 18', data, item_levels,
		'B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 +')
	add_metadata(child_pop_dict['total'], 'B01001', 'Total population', acs_name)

	# Demographics: Child sex
	child_sex_dict = OrderedDict()
	doc['demographics']['child_sex'] = child_sex_dict
	add_metadata(child_sex_dict, 'B01001', 'Population under 18 years of age', acs_name)
	child_sex_dict['percent_male'] = build_item('Male', data, item_levels,
		'B01001003 B01001004 + B01001005 + B01001006 + B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + / %')
	child_sex_dict['percent_female'] = build_item('Female', data, item_levels,
		'B01001027 B01001028 + B01001029 + B01001030 + B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + / %')

	# Demographics: Age
	#### SODC ####
	child_age_dict = dict()
	doc['demographics']['child_age'] = child_age_dict

	child_cat_dict = OrderedDict()
	child_age_dict['distribution_by_category'] = child_cat_dict
	# this isn't the correct metadata
	add_metadata(child_age_dict['distribution_by_category'], 'B01001', 'Population under 18 years of age', acs_name)
	child_cat_dict['percent_under_5'] = build_item('Under 5', data, item_levels,
		'B01001003 B01001027 + B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + / %')
	child_cat_dict['percent_5_to_9'] = build_item('5 to 9', data, item_levels,
		'B01001004 B01001028 + B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + / %')
	child_cat_dict['percent_10_to_14'] = build_item('10 to 14', data, item_levels,
		'B01001005 B01001029 + B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + / %')
	child_cat_dict['percent_15_to_17'] = build_item('15 to 17', data, item_levels,
		'B01001006 B01001030 + B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + / %')



	# Economics: Per-Capita Income
	data = api.get_data('B19301', comparison_geoids, acs)
	acs_name = data['release']['name']

	income_dict = dict()
	doc['economics']['income'] = income_dict

	income_dict['per_capita_income_in_the_last_12_months'] = build_item('Per capita income', data, item_levels,
		'B19301001')
	add_metadata(income_dict['per_capita_income_in_the_last_12_months'], 'B19301', 'Total population', acs_name)



	# Economics: Median Household Income
	data = api.get_data('B19013', comparison_geoids, acs)
	acs_name = data['release']['name']

	income_dict['median_household_income'] = build_item('Median household income', data, item_levels,
		'B19013001')
	add_metadata(income_dict['median_household_income'], 'B19013', 'Households', acs_name)



	# Economics: Household Income Distribution
	data = api.get_data('B19001', comparison_geoids, acs)
	acs_name = data['release']['name']

	income_distribution = OrderedDict()
	income_dict['household_distribution'] = income_distribution
	add_metadata(income_dict['household_distribution'], 'B19001', 'Households', acs_name)

	income_distribution['under_50'] = build_item('Under $50K', data, item_levels,
		'B19001002 B19001003 + B19001004 + B19001005 + B19001006 + B19001007 + B19001008 + B19001009 + B19001010 + B19001001 / %')
	income_distribution['50_to_100'] = build_item('$50K - $100K', data, item_levels,
		'B19001011 B19001012 + B19001013 + B19001001 / %')
	income_distribution['100_to_200'] = build_item('$100K - $200K', data, item_levels,
		'B19001014 B19001015 + B19001016 + B19001001 / %')
	income_distribution['over_200'] = build_item('Over $200K', data, item_levels,
		'B19001017 B19001001 / %')



	# Economics: Poverty Rate
	data = api.get_data('B17001', comparison_geoids, acs)
	acs_name = data['release']['name']

	poverty_dict = dict()
	doc['economics']['poverty'] = poverty_dict

	poverty_dict['percent_below_poverty_line'] = build_item('Persons below poverty line', data, item_levels,
		'B17001002 B17001001 / %')
	add_metadata(poverty_dict['percent_below_poverty_line'], 'B17001', 'Population for whom poverty status is determined', acs_name)

	poverty_children = OrderedDict()
	poverty_seniors = OrderedDict()
	poverty_dict['children'] = poverty_children
	add_metadata(poverty_dict['children'], 'B17001', 'Population for whom poverty status is determined', acs_name)
	poverty_dict['seniors'] = poverty_seniors
	add_metadata(poverty_dict['seniors'], 'B17001', 'Population for whom poverty status is determined', acs_name)

	poverty_children['Below'] = build_item('Children (Under 18) below poverty line', data, item_levels,
		'B17001004 B17001005 + B17001006 + B17001007 + B17001008 + B17001009 + B17001018 + B17001019 + B17001020 + B17001021 + B17001022 + B17001023 + B17001004 B17001005 + B17001006 + B17001007 + B17001008 + B17001009 + B17001018 + B17001019 + B17001020 + B17001021 + B17001022 + B17001023 + B17001033 + B17001034 + B17001035 + B17001036 + B17001037 + B17001038 + B17001047 + B17001048 + B17001049 + B17001050 + B17001051 + B17001052 + / %')
	add_metadata(poverty_children['Below'], 'B17001', 'Population for whom poverty status is determined', acs_name)	
	poverty_children['above'] = build_item('Non-poverty', data, item_levels,
		'B17001033 B17001034 + B17001035 + B17001036 + B17001037 + B17001038 + B17001047 + B17001048 + B17001049 + B17001050 + B17001051 + B17001052 + B17001004 B17001005 + B17001006 + B17001007 + B17001008 + B17001009 + B17001018 + B17001019 + B17001020 + B17001021 + B17001022 + B17001023 + B17001033 + B17001034 + B17001035 + B17001036 + B17001037 + B17001038 + B17001047 + B17001048 + B17001049 + B17001050 + B17001051 + B17001052 + / %')

	poverty_seniors['Below'] = build_item('Poverty', data, item_levels,
		'B17001015 B17001016 + B17001029 + B17001030 + B17001015 B17001016 + B17001029 + B17001030 + B17001044 + B17001045 + B17001058 + B17001059 + / %')
	poverty_seniors['above'] = build_item('Non-poverty', data, item_levels,
		'B17001044 B17001045 + B17001058 + B17001059 + B17001015 B17001016 + B17001029 + B17001030 + B17001044 + B17001045 + B17001058 + B17001059 + / %')

	# Economics: Child Poverty by age category
	poverty_children_distribution_by_age = OrderedDict()
	poverty_dict['children_distribution_by_age'] = poverty_children_distribution_by_age
	add_metadata(poverty_dict['children_distribution_by_age'], 'B17001', 'Population for whom poverty status is determined', acs_name)
	poverty_children_distribution_by_age['under_5'] = build_item('Under 5', data, item_levels,
		'B17001004 B17001018 + B17001004 B17001018 + B17001033 + B17001047 + / %')

	poverty_children_distribution_by_age['5_years'] = build_item('5', data, item_levels,
		'B17001005 B17001019 + B17001005 B17001019 + B17001034 + B17001048 + / %')

	poverty_children_distribution_by_age['6_to_11'] = build_item('6-11', data, item_levels,
		'B17001006 B17001020 + B17001006 B17001020 + B17001035 + B17001049 + / %')

	poverty_children_distribution_by_age['12_to_14'] = build_item('12-14', data, item_levels,
		'B17001007 B17001021 + B17001007 B17001021 + B17001036 + B17001050 + / %')

	poverty_children_distribution_by_age['15_years'] = build_item('15', data, item_levels,
		'B17001008 B17001022 + B17001008 B17001022 + B17001037 + B17001051 + / %')

	poverty_children_distribution_by_age['16_and_17'] = build_item('16-17', data, item_levels,
		'B17001009 B17001023 + B17001009 B17001023 + B17001038 + B17001052 + / %')



	# Economics: Poverty Status in the Past 12 Months of Families by Household Type by Educational Attainment of Householder
	data = api.get_data('B17018', comparison_geoids, acs)
	acs_name = data['release']['name']

	poverty_family_educational_attainment = OrderedDict()
	doc['economics']['poverty']['poverty_family_educational_attainment'] = poverty_family_educational_attainment
	add_metadata(poverty_family_educational_attainment, 'B17018', 'Families', acs_name)

	# Married Couples
	poverty_family_educational_attainment['married_couples'] = OrderedDict()
	poverty_family_educational_attainment['married_couples']['acs_release'] = acs_name
	poverty_family_educational_attainment['married_couples']['metadata'] = {
		'universe': 'Families',
		'table_id': 'B17018',
		'name': 'Married couples'
	}
	poverty_family_educational_attainment['married_couples']['-HS'] = build_item('Less than high school graduate', data, item_levels,
		'B17018004 B17018004 B17018021 + / %')	
	poverty_family_educational_attainment['married_couples']['HS'] = build_item('High school graduate (includes equivalency)', data, item_levels,
		'B17018005 B17018005 B17018022 + / %')	
	poverty_family_educational_attainment['married_couples']['-Coll'] = build_item('Some college, associate\'s degree', data, item_levels,
		'B17018006 B17018006 B17018023 + / %')	
	poverty_family_educational_attainment['married_couples']['Coll+'] = build_item('Bachelor\'s degree or higher', data, item_levels,
		'B17018007 B17018007 B17018024 + / %')	

	#Male Householder
	poverty_family_educational_attainment['male_householder'] = OrderedDict()
	poverty_family_educational_attainment['male_householder']['acs_release'] = acs_name
	poverty_family_educational_attainment['male_householder']['metadata'] = {
		'universe': 'Families',
		'table_id': 'B17018',
		'name': 'Male householder, no wife present'
	}
	poverty_family_educational_attainment['male_householder']['-HS'] = build_item('Less than high school graduate', data, item_levels,
		'B17018010 B17018010 B17018027 + / %')	
	poverty_family_educational_attainment['male_householder']['HS'] = build_item('High school graduate (includes equivalency)', data, item_levels,
		'B17018011 B17018011 B17018028 + / %')	
	poverty_family_educational_attainment['male_householder']['-Coll'] = build_item('Some college, associate\'s degree', data, item_levels,
		'B17018012 B17018012 B17018029 + / %')	
	poverty_family_educational_attainment['male_householder']['Coll+'] = build_item('Bachelor\'s degree or higher', data, item_levels,
		'B17018013 B17018013 B17018030 + / %')	

	#Female Householder
	poverty_family_educational_attainment['female_householder'] = OrderedDict()
	poverty_family_educational_attainment['female_householder']['acs_release'] = acs_name
	poverty_family_educational_attainment['female_householder']['metadata'] = {
		'universe': 'Families',
		'table_id': 'B17018',
		'name': 'Female householder, no husband present'
	}
	poverty_family_educational_attainment['female_householder']['-HS'] = build_item('Less than high school graduate', data, item_levels,
		'B17018015 B17018015 B17018032 + / %')	
	poverty_family_educational_attainment['female_householder']['HS'] = build_item('High school graduate (includes equivalency)', data, item_levels,
		'B17018016 B17018016 B17018033 + / %')	
	poverty_family_educational_attainment['female_householder']['-Coll'] = build_item('Some college, associate\'s degree', data, item_levels,
		'B17018017 B17018017 B17018034 + / %')	
	poverty_family_educational_attainment['female_householder']['Coll+'] = build_item('Bachelor\'s degree or higher', data, item_levels,
		'B17018018 B17018018 B17018035 + / %')	





	# Family and Economic Security: Vehicle Avaialabilty
	data = api.get_data(['B08006', 'B08014', 'B08015'], comparison_geoids, acs)
	acs_name = data['release']['name']

	employment_dict['mean_number_of_vehicles'] = build_item('Mean number of vehicles available', data, item_levels,
		'B08015001 B08006002 /')
	add_metadata(employment_dict['mean_number_of_vehicles'], 'B08006, B08015', 'Workers Whose Means of Transportation Is Car, Truck, or Van', acs_name)

	vehicle_availabilty_dict = OrderedDict()
	employment_dict['distribution_vehicle_availabilty'] = vehicle_availabilty_dict
	add_metadata(employment_dict['distribution_vehicle_availabilty'], 'B08006', 'Workers 16 years and over', acs_name)

	vehicle_availabilty_dict['No_vehicle_available'] = build_item('No vehicle available', data, item_levels,
		'B08014002 B08014001 / %')
	vehicle_availabilty_dict['1_vehicle_available'] = build_item('1 vehicle available', data, item_levels,
		'B08014003 B08014001 / %')
	vehicle_availabilty_dict['2_vehicles_available'] = build_item('2 vehicles available', data, item_levels,
		'B08014004 B08014001 / %')
	vehicle_availabilty_dict['3_vehicles_available'] = build_item('3 vehicles available', data, item_levels,
		'B08014005 B08014001 / %')
	vehicle_availabilty_dict['4_vehicles_available'] = build_item('4 vehicles available', data, item_levels,
		'B08014006 B08014001 / %')
	vehicle_availabilty_dict['5_or_more_vehicles_available'] = build_item('5+ vehicles available', data, item_levels,
		'B08014007 B08014001 / %')



	# Families: Family Types with Children
	#### Useful for SODC report! ####
	data = api.get_data('B09002', comparison_geoids, acs)
	acs_name = data['release']['name']

	family_types = dict()
	doc['families']['family_types'] = family_types

	children_family_type_dict = OrderedDict()
	family_types['children'] = children_family_type_dict
	add_metadata(children_family_type_dict, 'B09002', 'Own children under 18 years', acs_name)

	children_family_type_dict['married_couple'] = build_item('Married couple', data, item_levels,
		'B09002002 B09002001 / %')
	children_family_type_dict['male_householder'] = build_item('Male householder', data, item_levels,
		'B09002009 B09002001 / %')
	children_family_type_dict['female_householder'] = build_item('Female householder', data, item_levels,
		'B09002015 B09002001 / %')




	# Families: Percent of Families with Related Children Under 18
	#### SODC ####
	data = api.get_data('B11004', comparison_geoids, acs)
	acs_name = data['release']['name']

	families_with_children = dict()
	doc['families']['families_with_children'] = families_with_children

	families_with_children['percent_familes_with_children'] = build_item('Percent of families with related children under 18', data, item_levels, 
		'B11004003 B11004010 + B11004016 + B11004001 / %')
	add_metadata(families_with_children['percent_familes_with_children'], 'B11004', 'Family Type by Presence and Age of Related Children Under 18 Years', acs_name)



	# Families: Percent of Households with Children under 18
	#### SODC ####
	data = api.get_data('B11005', comparison_geoids, acs)
	acs_name = data['release']['name']

	households_with_children = dict()
	doc['families']['households_with_children'] = households_with_children
	households_with_children['percent_households_with_children'] = build_item('Percent of households with children under 18', data, item_levels, 
		'B11005002 B11005001 / %')
	add_metadata(households_with_children['percent_households_with_children'], 'B11005', 'Households by Presence of People Under 18 Years by Household Type', acs_name)



	# Families: Number of Households, Persons per Household, Household type distribution
	data = api.get_data(['B11001', 'B11002'], comparison_geoids, acs)
	acs_name = data['release']['name']

	households_dict = dict()
	doc['families']['households'] = households_dict

	households_dict['number_of_households'] = build_item('Number of households', data, item_levels,
		'B11001001')
	add_metadata(households_dict['number_of_households'], 'B11001', 'Households', acs_name)

	households_dict['persons_per_household'] = build_item('Persons per household', data, item_levels,
		'B11002001 B11001001 /')
	add_metadata(households_dict['persons_per_household'], 'B11001,b11002', 'Households', acs_name)

	households_distribution_dict = OrderedDict()
	households_dict['distribution'] = households_distribution_dict
	add_metadata(households_dict['distribution'], 'B11001', 'Households', acs_name)

	households_distribution_dict['married_couples'] = build_item('Married couples', data, item_levels,
		'B11002003 B11002001 / %')

	households_distribution_dict['male_householder'] = build_item('Male householder', data, item_levels,
		'B11002006 B11002001 / %')

	households_distribution_dict['female_householder'] = build_item('Female householder', data, item_levels,
		'B11002009 B11002001 / %')

	households_distribution_dict['nonfamily'] = build_item('Non-family', data, item_levels,
		'B11002012 B11002001 / %')


	# Social: School Enrollment
	data = api.get_data('B14003', comparison_geoids, acs)
	acs_name = data['release']['name']

	enrollment_dict = dict()
	doc['social']['enrollment'] = enrollment_dict

	enrollment_dict['enrolled'] = build_item('Number of children 5 to 9 years enrolled in school', data, item_levels,
		'B14003005 B14003014 + B14003033 + B14003042 + ')
	add_metadata(enrollment_dict['enrolled'], 'B14003', 'Population 5 to 9 years', acs_name)

	enrollment_dict['not_enrolled'] = build_item('Number of children 5 to 9 years not enrolled in school', data, item_levels,
		'B14003023 B14003051 + ')
	add_metadata(enrollment_dict['not_enrolled'], 'B14003', 'Population 5 to 9 years', acs_name)

	youth_school_enrollment_grouped = OrderedDict()
	enrollment_dict['youth_school_enrollment_grouped'] = youth_school_enrollment_grouped
	add_metadata(youth_school_enrollment_grouped, 'B14003', 'Population 5 to 9 years', acs_name)

	# repeating data temporarily to develop grouped column chart format
	youth_school_enrollment_grouped['enrolled_public'] = OrderedDict()
	youth_school_enrollment_grouped['enrolled_public']['acs_release'] = acs_name
	youth_school_enrollment_grouped['enrolled_public']['metadata'] = {
		'universe': 'Population 5 to 9 years',
		'table_id': 'B14003',
		'name': 'Enrolled, public'
	}
	youth_school_enrollment_grouped['enrolled_public']['male'] = build_item('Male', data, item_levels,
		'B14003005 B14003005 B14003014 + B14003023 + / %')
	youth_school_enrollment_grouped['enrolled_public']['female'] = build_item('Female', data, item_levels,
		'B14003033 B14003033 B14003042 + B14003051 + / %')

	youth_school_enrollment_grouped['enrolled_private'] = OrderedDict()
	youth_school_enrollment_grouped['enrolled_private']['acs_release'] = acs_name
	youth_school_enrollment_grouped['enrolled_private']['metadata'] = {
		'universe': 'Population 5 to 9 years',
		'table_id': 'B14003',
		'name': 'Enrolled, private'
	}
	youth_school_enrollment_grouped['enrolled_private']['male'] = build_item('Male', data, item_levels,
		'B14003014 B14003005 B14003014 + B14003023 + / %')
	youth_school_enrollment_grouped['enrolled_private']['female'] = build_item('Female', data, item_levels,
		'B14003042 B14003033 B14003042 + B14003051 + / %')

	youth_school_enrollment_grouped['not_enrolled'] = OrderedDict()
	youth_school_enrollment_grouped['not_enrolled']['acs_release'] = acs_name
	youth_school_enrollment_grouped['not_enrolled']['metadata'] = {
		'universe': 'Population 5 to 9 years',
		'table_id': 'B14003',
		'name': 'Not enrolled'
	}
	youth_school_enrollment_grouped['not_enrolled']['male'] = build_item('Male', data, item_levels,
		'B14003023 B14003005 B14003014 + B14003023 + / %')
	youth_school_enrollment_grouped['not_enrolled']['female'] = build_item('Female', data, item_levels,
		'B14003051 B14003033 B14003042 + B14003051 + / %')


	#### Housing Information Portal Data ####
	# Housing: Occupancy Distribution, Vacancy Distribution
	data = api.get_data(['B25002', 'B25106'], comparison_geoids, acs)
	acs_name = data['release']['name']

	units_dict = dict()
	doc['housing']['units'] = units_dict

	units_dict['number'] = build_item('Number of housing units', data, item_levels,
		'B25002001')
	add_metadata(units_dict['number'], 'B25002', 'Housing units', acs_name)

	occupancy_distribution_dict = OrderedDict()
	units_dict['occupancy_distribution'] = occupancy_distribution_dict
	add_metadata(units_dict['occupancy_distribution'], 'B25002', 'Housing units', acs_name)

	occupancy_distribution_dict['owner_occupied'] = build_item('Owner Occupied', data, item_levels,
		'B25106002 B25002001 / %')
	occupancy_distribution_dict['renter_occupied'] = build_item('Renter Occupied', data, item_levels,
		'B25106024 B25002001 / %')
	occupancy_distribution_dict['vacant'] = build_item('Vacant', data, item_levels,
		'B25002003 B25002001 / %')


	# Housing: Renter or Owner By Race
	data = api.get_data(['B25003B', 'B25003C', 'B25003D', 'B25003E', 'B25003F', 'B25003G', 'B25003H', 'B25003I'], comparison_geoids, acs)
	acs_name = data['release']['name']

	occupancy_by_race = OrderedDict()
	doc['housing']['units']['occupancy_by_race'] = occupancy_by_race
	add_metadata(occupancy_by_race, 'B25003B', 'Occupied Housing Units', acs_name)

	# Native
	occupancy_by_race['native'] = OrderedDict()
	occupancy_by_race['native']['acs_release'] = acs_name
	occupancy_by_race['native']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003C',
		'name': 'American Indian or Alaska Native'
	}
	occupancy_by_race['native']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003C002 B25003C001 / %')	
	occupancy_by_race['native']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003C003 B25003C001 / %')	

	#Asian
	occupancy_by_race['asian'] = OrderedDict()
	occupancy_by_race['asian']['acs_release'] = acs_name
	occupancy_by_race['asian']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003D',
		'name': 'Asian'
	}
	occupancy_by_race['native']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003D002 B25003D001 / %')	
	occupancy_by_race['native']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003D003 B25003D001 / %')

	#Black
	occupancy_by_race['black'] = OrderedDict()
	occupancy_by_race['black']['acs_release'] = acs_name
	occupancy_by_race['black']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003B',
		'name': 'Black'
	}
	occupancy_by_race['black']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003B002 B25003B001 / %')	
	occupancy_by_race['black']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003B003 B25003B001 / %')

	#Pacific Islander
	occupancy_by_race['pacific_islander'] = OrderedDict()
	occupancy_by_race['pacific_islander']['acs_release'] = acs_name
	occupancy_by_race['pacific_islander']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003E',
		'name': 'Native Hawaiian and Other Pacific Islander'
	}
	occupancy_by_race['pacific_islander']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003E002 B25003E001 / %')	
	occupancy_by_race['pacific_islander']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003E003 B25003E001 / %')

	#some other race
	occupancy_by_race['other'] = OrderedDict()
	occupancy_by_race['other']['acs_release'] = acs_name
	occupancy_by_race['other']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003F',
		'name': 'Some other race'
	}
	occupancy_by_race['other']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003F002 B25003F001 / %')	
	occupancy_by_race['other']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003F003 B25003F001 / %')

	#two or more races
	occupancy_by_race['two_more'] = OrderedDict()
	occupancy_by_race['two_more']['acs_release'] = acs_name
	occupancy_by_race['two_more']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003G',
		'name': 'Two or more races'
	}
	occupancy_by_race['two_more']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003G002 B25003G001 / %')	
	occupancy_by_race['two_more']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003G003 B25003G001 / %')

	#hispanic
	occupancy_by_race['hispanic'] = OrderedDict()
	occupancy_by_race['hispanic']['acs_release'] = acs_name
	occupancy_by_race['hispanic']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003I',
		'name': 'Hispanic or latino'
	}
	occupancy_by_race['hispanic']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003I002 B25003I001 / %')	
	occupancy_by_race['hispanic']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003I003 B25003I001 / %')

	#white nh
	occupancy_by_race['white'] = OrderedDict()
	occupancy_by_race['white']['acs_release'] = acs_name
	occupancy_by_race['white']['metadata'] = {
		'universe': 'Occupied Housing Units',
		'table_id': 'B25003H',
		'name': 'White'
	}
	occupancy_by_race['white']['Owner occupied'] = build_item('Owner occupied', data, item_levels,
		'B25003H002 B25003H001 / %')	
	occupancy_by_race['white']['Renter occupied'] = build_item('Renter occupied', data, item_levels,
		'B25003H003 B25003H001 / %')


	# Housing: Occupancy by Tenure Status
	data = api.get_data(['B25096', 'B25056'], comparison_geoids, acs)
	acs_name = data['release']['name']

	tenure_distribution_dict = OrderedDict()
	units_dict['tenure_distribution'] = tenure_distribution_dict
	add_metadata(units_dict['tenure_distribution'], 'B25096', 'Housing units', acs_name)

	tenure_distribution_dict['not_mortgaged'] = build_item('Not mortgaged', data, item_levels,
		'B25096012 B25056001 B25096001 + / %')
	tenure_distribution_dict['mortgaged'] = build_item('With a mortgage', data, item_levels,
		'B25096002 B25056001 B25096001 + / %')
	tenure_distribution_dict['no_cash_rent'] = build_item('No cash rent', data, item_levels,
		'B25056027 B25056001 B25096001 + / %')
	tenure_distribution_dict['cash_rent'] = build_item('With cash rent', data, item_levels,
		'B25056002 B25056001 B25096001 + / %')


	# Rental Unit Size
	data = api.get_data(['B25068'], comparison_geoids, acs)
	acs_name = data['release']['name']

	home_size_distribution_dict = OrderedDict()
	units_dict['home_size_distribution'] = home_size_distribution_dict
	add_metadata(units_dict['home_size_distribution'], 'B25096', 'Renter-occupied housing units', acs_name)

	home_size_distribution_dict['no_bedrooms'] = build_item('No bedrooms', data, item_levels,
		'B25068002 B25068001 / %')
	home_size_distribution_dict['one_bedroom'] = build_item('One bedroom', data, item_levels,
		'B25068011 B25068001 / %')
	home_size_distribution_dict['two_bedrooms'] = build_item('Two bedrooms', data, item_levels,
		'B25068020 B25068001 / %')
	home_size_distribution_dict['three_bedrooms'] = build_item('Three bedrooms', data, item_levels,
		'B25068029 B25068001 / %')


	# Rents
	data = api.get_data(['B25056'], comparison_geoids, acs)
	acs_name = data['release']['name']

	rent_distribution_dict = OrderedDict()
	units_dict['rent_distribution'] = rent_distribution_dict
	add_metadata(units_dict['rent_distribution'], 'B25096', 'Renter-occupied housing units', acs_name)

	rent_distribution_dict['lt_200'] = build_item('Rent Less than $200', data, item_levels,
		'B25068003 B25056004 + B25056005 + B25056002 / %')
	rent_distribution_dict['200_299'] = build_item('Rent $200 to $299', data, item_levels,
		'B25068006 B25056007 + B25056002 / %')
	rent_distribution_dict['300_499'] = build_item('Rent $300 to $499', data, item_levels,
		'B25068008 B25056009 + B25056010 + B25056011 + B25056002 / %')
	rent_distribution_dict['500_749'] = build_item('Rent $500 to $749', data, item_levels,
		'B25068012 B25056013 + B25056014 + B25056015 + B25056016 + B25056002 / %')
	rent_distribution_dict['750_999'] = build_item('Rent $750 to $999', data, item_levels,
		'B25068017 B25056018 + B25056019 + B25056002 / %')
	rent_distribution_dict['gte_1000'] = build_item('Rent $1,000 or More', data, item_levels,
		'B25068020 B25056021 + B25056022 + B25056023 + B25056024 + B25056025 + B25056026 + B25056002 / %')


	# Housing: Median Value and Distribution of Values
	data = api.get_data('B25077', comparison_geoids, acs)
	acs_name = data['release']['name']

	units_dict['median_value'] = build_item('Median value of owner-occupied housing units', data, item_levels,
		'B25077001')
	add_metadata(units_dict['median_value'], 'B25077', 'Owner-occupied housing units', acs_name)


	data = api.get_data('B25075', comparison_geoids, acs)
	acs_name = data['release']['name']

	value_distribution = OrderedDict()
	units_dict['value_distribution'] = value_distribution
	add_metadata(value_distribution, 'B25075', 'Owner-occupied housing units', acs_name)

	units_dict['total_value'] = build_item('Total value of owner-occupied housing units', data, item_levels,
		'B25075001')

	value_distribution['under_50'] = build_item('Under $50K', data, item_levels,
		'B25075002 B25075003 + B25075004 + B25075005 + B25075006 + B25075007 + B25075008 + B25075009 + B25075001 / %')
	value_distribution['50_to_100'] = build_item('$50K - $100K', data, item_levels,
		'B25075010 B25075011 + B25075012 + B25075013 + B25075014 + B25075001 / %')
	value_distribution['100_to_150'] = build_item('$100K - $150K', data, item_levels,
		'B25075015 B25075016 + B25075001 / %')
	value_distribution['150_to_200'] = build_item('$150K - $200K', data, item_levels,
		'B25075017 B25075018 + B25075001 / %')
	value_distribution['200_to_300'] = build_item('$200K - $300K', data, item_levels,
		'B25075019 B25075020 + B25075001 / %')
	value_distribution['300_to_500'] = build_item('$300K - $500K', data, item_levels,
		'B25075021 B25075022 + B25075001 / %')
	value_distribution['500_to_1000000'] = build_item('$500K - $1M', data, item_levels,
		'B25075023 B25075024 + B25075001 / %')
	value_distribution['over_1000000'] = build_item('Over $1M', data, item_levels,
		'B25075025 B25075001 / %')



	# Housing burden for renters and owners
	data = api.get_data(['B25070', 'B25091'], comparison_geoids, acs)
	acs_name = data['release']['name']

	housing_burden = OrderedDict()
	doc['housing']['units']['housing_burden'] = housing_burden
	add_metadata(housing_burden, 'B25070', 'Occupied housing hnits', acs_name)

	# Less than 30%
	housing_burden['lt_30'] = OrderedDict()
	housing_burden['lt_30']['acs_release'] = acs_name
	housing_burden['lt_30']['metadata'] = {
		'universe': 'Occupied housing units',
		'table_id': 'B25070',
		'name': 'Housing costs are less than 30% of household income in the past 12 months'
	}
	housing_burden['lt_30']['renter_occupied'] = build_item('Renter occupied', data, item_levels,
		'B25070002 B25070003 + B25070004 + B25070005 + B25070006 + B25070001 / %')	
	housing_burden['lt_30']['owner_w_mortgage'] = build_item('Owner with mortgage', data, item_levels,
		'B25091003 B25091004 + B25091005 + B25091006 + B25091007 + B25091002 / %')
	housing_burden['lt_30']['owner_w_o_mortgage'] = build_item('Owner without mortgage', data, item_levels,
		'B25091014 B25091015 + B25091016 + B25091017 + B25091018 + B25091013 / %')

	# 30% - 50%
	housing_burden['30_to_50'] = OrderedDict()
	housing_burden['30_to_50']['acs_release'] = acs_name
	housing_burden['30_to_50']['metadata'] = {
		'universe': 'Occupied housing units',
		'table_id': 'B25070',
		'name': 'Housing costs are 30% - 49.9% of household income in the past 12 months'
	}
	housing_burden['30_to_50']['renter_occupied'] = build_item('Renter occupied', data, item_levels,
		'B25070007 B25070008 + B25070009 + B25070001 / %')	
	housing_burden['30_to_50']['owner_w_mortgage'] = build_item('Owner with mortgage', data, item_levels,
		'B25091008 B25091009 + B25091010 + B25091002 / %')
	housing_burden['30_to_50']['owner_w_o_mortgage'] = build_item('Owner without mortgage', data, item_levels,
		'B25091019 B25091020 + B25091021 + B25091013 / %')

	# 50%+
	housing_burden['gte_50'] = OrderedDict()
	housing_burden['gte_50']['acs_release'] = acs_name
	housing_burden['gte_50']['metadata'] = {
		'universe': 'Occupied housing units',
		'table_id': 'B25070',
		'name': 'Housing costs are 50% or more of household income in the past 12 months'
	}
	housing_burden['gte_50']['renter_occupied'] = build_item('Renter occupied', data, item_levels,
		'B25070010 B25070001 / %')	
	housing_burden['gte_50']['owner_w_mortgage'] = build_item('Owner with mortgage', data, item_levels,
		'B25091011 B25091002 / %')
	housing_burden['gte_50']['owner_w_o_mortgage'] = build_item('Owner without mortgage', data, item_levels,
		'B25091022 B25091013 / %')


	# home size
	data = api.get_data('B25041', comparison_geoids, acs)
	acs_name = data['release']['name']

	size_distribution = OrderedDict()
	units_dict['size_distribution'] = size_distribution
	add_metadata(size_distribution, 'B25041', 'Housing units', acs_name)

	size_distribution['no_bedrooms'] = build_item('No bedrooms', data, item_levels,
		'B25041002 B25041001 / %')
	size_distribution['one_bedroom'] = build_item('One bedroom', data, item_levels,
		'B25041003 B25041001 / %')
	size_distribution['two_bedrooms'] = build_item('Two bedrooms', data, item_levels,
		'B25041004 B25041001 / %')
	size_distribution['three_bedrooms'] = build_item('Three bedrooms', data, item_levels,
		'B25041005 B25041001 / %')
	size_distribution['four_bedrooms'] = build_item('Four bedrooms', data, item_levels,
		'B25041006 B25041001 / %')
	size_distribution['five_plus_bedrooms'] = build_item('5 or more bedrooms', data, item_levels,
		'B25041007 B25041001 / %')


	# substandard housing
	data = api.get_data('B25123', comparison_geoids, acs)
	acs_name = data['release']['name']

	renter_condition_distribution = OrderedDict()
	units_dict['renter_condition_distribution'] = renter_condition_distribution
	add_metadata(renter_condition_distribution, 'B25123', 'Occupied housing units', acs_name)

	renter_condition_distribution['no_cond'] = build_item('No selected conditions', data, item_levels,
		'B25123013 B25123008 / %')
	renter_condition_distribution['one_cond'] = build_item('With one selected condition', data, item_levels,
		'B25123009 B25123008 / %')
	renter_condition_distribution['two_cond'] = build_item('With two selected conditions', data, item_levels,
		'B25123010 B25123008 / %')
	renter_condition_distribution['three_cond'] = build_item('With three selected conditions', data, item_levels,
		'B25123011 B25123008 / %')
	renter_condition_distribution['four_cond'] = build_item('With four selected conditions', data, item_levels,
		'B25123012 B25123008 / %')

	owner_condition_distribution = OrderedDict()
	units_dict['owner_condition_distribution'] = owner_condition_distribution
	add_metadata(owner_condition_distribution, 'B25041', 'Housing units', acs_name)

	owner_condition_distribution['no_cond'] = build_item('No selected conditions', data, item_levels,
		'B25123007 B25123002 / %')
	owner_condition_distribution['one_cond'] = build_item('With one selected condition', data, item_levels,
		'B25123003 B25123002 / %')
	owner_condition_distribution['two_cond'] = build_item('With two selected conditions', data, item_levels,
		'B25123004 B25123002 / %')
	owner_condition_distribution['three_cond'] = build_item('With three selected conditions', data, item_levels,
		'B25123005 B25123002 / %')
	owner_condition_distribution['four_cond'] = build_item('With four selected conditions', data, item_levels,
		'B25123006 B25123002 / %')


	# Utilities Included in Rent
	data = api.get_data('B25069', comparison_geoids, acs)
	acs_name = data['release']['name']

	utilities_distribution = OrderedDict()
	units_dict['utilities_distribution'] = utilities_distribution
	add_metadata(utilities_distribution, 'B25069', 'Renter-occupied housing units', acs_name)

	utilities_distribution['pay_extra'] = build_item('Pay extra for one or more utilities', data, item_levels,
		'B25069002 B25069001 / %')
	utilities_distribution['no_extra'] = build_item('No extra payment for any utilities', data, item_levels,
		'B25069003 B25069001 / %')


	#### END Housing Information Portal Data ####



	geo_metadata = api.get_geoid_data(geoid)

	if geo_metadata:
		geo_metadata = geo_metadata['properties']
		doc['geo_metadata'] = geo_metadata

		# add a few last things
		# make square miles http://www.census.gov/geo/www/geo_defn.html#AreaMeasurement
		square_miles = get_division(geo_metadata['aland'], 2589988)
		if square_miles < .1:
			square_miles = get_division(geo_metadata['aland'], 2589988, 3)
		total_pop = doc['geography']['this']['total_population']
		population_density = get_division(total_pop, get_division(geo_metadata['aland'], 2589988, -1))
		doc['geo_metadata']['square_miles'] = square_miles
		doc['geo_metadata']['population_density'] = population_density

	return doc


def find_dicts_with_key(dictionary, searchkey):
	stack = [dictionary]
	dict_list = []
	while stack:
		d = stack.pop()
		if searchkey in d:
			dict_list.append(d)
		for key, value in d.iteritems():
			if isinstance(value, dict) or isinstance(value, OrderedDict):
				stack.append(value)

	return dict_list

def enhance_api_data(api_data):
	dict_list = find_dicts_with_key(api_data, 'values')

	print dict_list

	for d in dict_list:
		raw = {}
		enhanced = {}
		try:
			geo_value = d['values']['this']
		except Exception as e:
			geo_value = None

		num_comparatives = 2

		# create our containers for transformation
		for obj in ['values', 'error', 'numerators', 'numerator_errors']:
			raw[obj] = d[obj]
			enhanced[obj] = OrderedDict()
		enhanced['index'] = OrderedDict()
		enhanced['error_ratio'] = OrderedDict()
		comparative_sumlevs = []

		# enhance
		for sumlevel in ['this', 'place', 'CBSA', 'county', 'state', 'nation']:

			# favor CBSA over county, but we don't want both
			if sumlevel == 'county' and 'CBSA' in enhanced['values']:
				continue

			# add the index value for comparatives
			if sumlevel in raw['values']:
				enhanced['values'][sumlevel] = raw['values'][sumlevel]
				if geo_value:
					enhanced['index'][sumlevel] = get_ratio(geo_value, raw['values'][sumlevel])
				else:
					enhanced['index'][sumlevel] = 0


				# add to our list of comparatives for the template to use
				if sumlevel != 'this':
					comparative_sumlevs.append(sumlevel)

			# add the moe ratios
			if (sumlevel in raw['values']) and (sumlevel in raw['error']):
				enhanced['error'][sumlevel] = raw['error'][sumlevel]
				enhanced['error_ratio'][sumlevel] = get_ratio(raw['error'][sumlevel], raw['values'][sumlevel], 3)

			# add the numerators and numerator_errors
			if sumlevel in raw['numerators']:
				enhanced['numerators'][sumlevel] = raw['numerators'][sumlevel]

			if (sumlevel in raw['numerators']) and (sumlevel in raw['numerator_errors']):
				enhanced['numerator_errors'][sumlevel] = raw['numerator_errors'][sumlevel]

			if len(enhanced['values']) >= (num_comparatives + 1):
				break

		# replace data with enhanced version
		for obj in ['values', 'index', 'error', 'error_ratio', 'numerators', 'numerator_errors']:
			d[obj] = enhanced[obj]

		api_data['geography']['comparatives'] = comparative_sumlevs

	# Put this down here to make sure geoid is valid before using it
	sumlevel = api_data['geography']['this']['sumlevel']
	api_data['geography']['this']['sumlevel_name'] = SUMMARY_LEVEL_DICT[sumlevel]['name']
	api_data['geography']['this']['short_geoid'] = api_data['geography']['this']['full_geoid'].split('US')[1]
	try:
		release_bits = api_data['geography']['census_release'].split(' ')
		api_data['geography']['census_release_year'] = release_bits[1][2:]
		api_data['geography']['census_release_level'] = release_level = release_bits[2][:1]
	except:
		pass

	# ProPublica Opportunity Gap app doesn't include smallest schools.
	# Originally, this also enabled links to Census narrative profiles,
	# but those disappeared.
	if release_level in ['1','3'] and sumlevel in ['950', '960', '970']:
		api_data['geography']['this']['show_extra_links'] = True

	return api_data

if __name__ == '__main__':
	print json.dumps(geo_profile('04000US55'), indent=2)
