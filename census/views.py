from __future__ import division
from collections import OrderedDict, defaultdict
from numpy import median
from urllib2 import unquote, quote
import cStringIO
import gzip
import re
import requests
import unicodecsv
import topics
import json
import boto
import boto.s3.connection

from django.conf import settings
from django.contrib import messages
from django.core.urlresolvers import reverse
from django.db.models import Q
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.template import loader, TemplateDoesNotExist, RequestContext
from django.utils import simplejson
from django.utils.safestring import SafeString
from django.utils.text import slugify
from django.views.generic import View, TemplateView

from .models import Geography, Table, Column, SummaryLevel, Dashboards
from .utils import LazyEncoder, get_max_value, get_object_or_none, parse_table_id, \
	 SUMMARY_LEVEL_DICT, NLTK_STOPWORDS, TOPIC_FILTERS, SUMLEV_CHOICES, ACS_RELEASES
from .profile import geo_profile, enhance_api_data
from .custom_profile import create_custom_profile
from .topics import TOPICS_MAP

from boto.s3.connection import S3Connection, Location
from boto.s3.key import Key

import logging
logging.basicConfig()
logger = logging.getLogger(__name__)

### UTILS ###

def render_json_to_response(context):
	'''
	Utility method for rendering a view's data to JSON response.
	'''
	result = simplejson.dumps(context, sort_keys=False, indent=4)
	return HttpResponse(result, mimetype='application/javascript')

def capitalize_first(str):
	"""Capitalizes only the first letter of the given string.

	:param str: string to capitalize
	:return: str with only the first letter capitalized
	"""
	if str == "": return ""
	return str[0].upper() + str[1:]

### HEALTH CHECK ###

class HealthcheckView(TemplateView):
	template_name = 'healthcheck.html'


## ERRORS ##

def server_error(request):
	response = render(request, "500.html")
	response.status_code = 500
	return response

def raise_404_with_messages(request, error_data={}):
	''' expects a dict containing error labels and messages for the user '''
	for k, v in error_data.items():
		error_text = '<strong>%s:</strong> %s' % (k.title(), v)
		messages.error(request, error_text)

	raise Http404


### TABLES ###
class TableSearchView(TemplateView):
	template_name = 'table/table_search.html'

	def get_context_data(self, *args, **kwargs):
		page_context = {}
		q = self.request.GET.get('q', None)
		topics = self.request.GET.get('topics', None)
		start = self.request.GET.get('start', 0)

		if q:
			api_endpoint = settings.API_URL + '/1.0/table/elasticsearch'
			api_params = {
				'q': q,
				'topics': topics,
				'start': start
			}
			r = requests.get(api_endpoint, params=api_params)
			status_code = r.status_code

			if status_code == 200:
				data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)

				# if we end up powering results list with javascript ...
				#page_context['results'] = SafeString(simplejson.dumps(data['results'], cls=LazyEncoder))

				page_context = data
				page_context['q'] = q
				page_context['topics'] = topics
				page_context['num_results'] = data['facets']['topics']['total']
				if topics:
					page_context['filters'] = topics.split(',')

				# pagination things
				start = int(start)
				results_page_length = len(data['results'])
				if page_context['num_results'] > results_page_length:
					page_context['results_count_set'] = '%s-%s' % (start+1, start+results_page_length)
				if 'next_page' in data['links']:
					page_context['next_offset'] = data['links']['next_page'].split('&start=')[1]
				if 'previous_page' in data['links']:
					page_context['previous_offset'] = data['links']['previous_page'].split('&start=')[1]


				page_context['q'] = q
			elif status_code == 404 or status_code == 400:
				error_data = simplejson.loads(r.text)
				raise_404_with_messages(self.request, error_data)
			else:
				raise Http404

		return page_context

class D3TableDetailViewBirths(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewBirths, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Births'
		table['table_title'] = 'Births by Race and Ethnicity and Characteristic'
		table['simple_table_title'] = 'Births by Race and Ethnicity and Characteristic'
		table['subject_area'] = 'Fertility'
		table['universe'] = 'Total births'
		table['denominator_column_id'] = 'TotalBirths'
		table['topics'] = ["fertility", "race", "health care"]

		table['columns'] = OrderedDict()
		table['columns']['TotalBirths'] = OrderedDict()
		table['columns']['TotalBirths']['column_title'] = 'Total births:'
		table['columns']['TotalBirths']['indent'] = 0
		table['columns']['TotalBirths']['parent_column_id'] = None

		table['columns']['NonHispWhite'] = OrderedDict()
		table['columns']['NonHispWhite']['column_title'] = 'Non-hispanic white births'
		table['columns']['NonHispWhite']['indent'] = 1
		table['columns']['NonHispWhite']['parent_column_id'] = 'TotalBirths'

		table['columns']['NonHispBlack'] = OrderedDict()
		table['columns']['NonHispBlack']['column_title'] = 'Non-hispanic black births'
		table['columns']['NonHispBlack']['indent'] = 1
		table['columns']['NonHispBlack']['parent_column_id'] = 'TotalBirths'

		table['columns']['NonHIspOther'] = OrderedDict()
		table['columns']['NonHIspOther']['column_title'] = 'Non-hispanic other births'
		table['columns']['NonHIspOther']['indent'] = 1
		table['columns']['NonHIspOther']['parent_column_id'] = 'TotalBirths'

		table['columns']['Hispanic'] = OrderedDict()
		table['columns']['Hispanic']['column_title'] = 'Hispanic births'
		table['columns']['Hispanic']['indent'] = 1
		table['columns']['Hispanic']['parent_column_id'] = 'TotalBirths'

		table['columns']['InadequatePrenatal'] = OrderedDict()
		table['columns']['InadequatePrenatal']['column_title'] = 'Births with inadequate prenatal care (defined as births rated \"Intermediate\" or \"Inadequate\" on the Kessner scale)'
		table['columns']['InadequatePrenatal']['indent'] = 1
		table['columns']['InadequatePrenatal']['parent_column_id'] = 'TotalBirths'

		table['columns']['LowBirthWeight'] = OrderedDict()
		table['columns']['LowBirthWeight']['column_title'] = 'Low birth weight births (defined as infants weighing under 2,500 grams)'
		table['columns']['LowBirthWeight']['indent'] = 1
		table['columns']['LowBirthWeight']['parent_column_id'] = 'TotalBirths'

		table['columns']['PreTerm'] = OrderedDict()
		table['columns']['PreTerm']['column_title'] = 'Pre-term births (defined as births occuring at less than 37 weeks of gestation)'
		table['columns']['PreTerm']['indent'] = 1
		table['columns']['PreTerm']['parent_column_id'] = 'TotalBirths'

		table['columns']['TeenMothers'] = OrderedDict()
		table['columns']['TeenMothers']['column_title'] = 'Births to teen mothers (under the age of 20 years)'
		table['columns']['TeenMothers']['indent'] = 1
		table['columns']['TeenMothers']['parent_column_id'] = 'TotalBirths'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewMathProficiency(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewMathProficiency, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Math-Proficiency'
		table['table_title'] = 'Third Grade Proficiency in Math'
		table['simple_table_title'] = 'Third Grade Proficiency in Math'
		table['subject_area'] = 'Education'
		table['universe'] = 'Total students taking Math Assessment'
		table['denominator_column_id'] = 'MATHNumAssessed_Calc'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['MATHNumAssessed_Calc'] = OrderedDict()
		table['columns']['MATHNumAssessed_Calc']['column_title'] = 'Total students taking Math Assessment:'
		table['columns']['MATHNumAssessed_Calc']['indent'] = 0
		table['columns']['MATHNumAssessed_Calc']['parent_column_id'] = None

		table['columns']['MATHTotalMet_Calc'] = OrderedDict()
		table['columns']['MATHTotalMet_Calc']['column_title'] = 'Number of students who met or exceeded expectations in Math'
		table['columns']['MATHTotalMet_Calc']['indent'] = 1
		table['columns']['MATHTotalMet_Calc']['parent_column_id'] = 'MATHNumAssessed_Calc'

		table['columns']['MATHTotalNotMet_Calc'] = OrderedDict()
		table['columns']['MATHTotalNotMet_Calc']['column_title'] = 'Number of students who did not meet expectations in Math'
		table['columns']['MATHTotalNotMet_Calc']['indent'] = 1
		table['columns']['MATHTotalNotMet_Calc']['parent_column_id'] = 'MATHNumAssessed_Calc'

		table['columns']['MATHPctMetCalc'] = OrderedDict()
		table['columns']['MATHPctMetCalc']['column_title'] = 'Percentage of students who met or exceeded expectations in Math'
		table['columns']['MATHPctMetCalc']['indent'] = 1
		table['columns']['MATHPctMetCalc']['parent_column_id'] = 'MATHNumAssessed_Calc'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	



class D3TableDetailViewELAProficiency(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewELAProficiency, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-ELA-Proficiency'
		table['table_title'] = 'Third Grade Proficiency in English Language Arts'
		table['simple_table_title'] = 'Third Grade Proficiency in English Language Arts'
		table['subject_area'] = 'Education'
		table['universe'] = 'Total students taking ELA Assessment'
		table['denominator_column_id'] = 'ELANumAssessed_Calc'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['ELANumAssessed_Calc'] = OrderedDict()
		table['columns']['ELANumAssessed_Calc']['column_title'] = 'Total students taking ELA Assessment:'
		table['columns']['ELANumAssessed_Calc']['indent'] = 0
		table['columns']['ELANumAssessed_Calc']['parent_column_id'] = None

		table['columns']['ELATotalMet_Calc'] = OrderedDict()
		table['columns']['ELATotalMet_Calc']['column_title'] = 'Number of students who met or exceeded expectations in ELA'
		table['columns']['ELATotalMet_Calc']['indent'] = 1
		table['columns']['ELATotalMet_Calc']['parent_column_id'] = 'ELANumAssessed_Calc'

		table['columns']['ELATotalNotMet_Calc'] = OrderedDict()
		table['columns']['ELATotalNotMet_Calc']['column_title'] = 'Number of students who did not meet expectations in ELA'
		table['columns']['ELATotalNotMet_Calc']['indent'] = 1
		table['columns']['ELATotalNotMet_Calc']['parent_column_id'] = 'ELANumAssessed_Calc'

		table['columns']['ELAPctMetCalc'] = OrderedDict()
		table['columns']['ELAPctMetCalc']['column_title'] = 'Percentage of students who met or exceeded ELA expectations'
		table['columns']['ELAPctMetCalc']['indent'] = 1
		table['columns']['ELAPctMetCalc']['parent_column_id'] = 'ELANumAssessed_Calc'


		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewGraduationRates(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewGraduationRates, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Graduation-Rates'
		table['table_title'] = 'High School Graduation Rate'
		table['simple_table_title'] = 'High School Graduation Rate'
		table['subject_area'] = 'Education'
		table['universe'] = 'Total students'
		table['denominator_column_id'] = 'CohortCount'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['CohortCount'] = OrderedDict()
		table['columns']['CohortCount']['column_title'] = 'Number of Students:'
		table['columns']['CohortCount']['indent'] = 0
		table['columns']['CohortCount']['parent_column_id'] = None

		table['columns']['GradCnt'] = OrderedDict()
		table['columns']['GradCnt']['column_title'] = 'Number of Graduates'
		table['columns']['GradCnt']['indent'] = 1
		table['columns']['GradCnt']['parent_column_id'] = 'CohortCount'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewInfantMortality(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewInfantMortality, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Infant-Mortality'
		table['table_title'] = 'Infant Mortality'
		table['simple_table_title'] = 'Infant Mortality'
		table['subject_area'] = 'Health care'
		table['universe'] = 'Number of infant deaths'
		table['denominator_column_id'] = 'InfantMort'
		table['topics'] = ["health care", "children", "fertilty"]

		table['columns'] = OrderedDict()
		table['columns']['InfantMort'] = OrderedDict()
		table['columns']['InfantMort']['column_title'] = 'Total infant deaths:'
		table['columns']['InfantMort']['indent'] = 0
		table['columns']['InfantMort']['parent_column_id'] = None

		table['columns']['SafeSleep'] = OrderedDict()
		table['columns']['SafeSleep']['column_title'] = 'Number of unsafe sleep related deaths'
		table['columns']['SafeSleep']['indent'] = 1
		table['columns']['SafeSleep']['parent_column_id'] = 'InfantMort'

		table['columns']['AssaultMal'] = OrderedDict()
		table['columns']['AssaultMal']['column_title'] = 'Number of assault or maltreatment related deaths'
		table['columns']['AssaultMal']['indent'] = 1
		table['columns']['AssaultMal']['parent_column_id'] = 'InfantMort'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewImmunization(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewImmunization, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Immunization'
		table['table_title'] = 'Immunizations'
		table['simple_table_title'] = 'Immunizations'
		table['subject_area'] = 'Health care'
		table['universe'] = 'Immunized children aged 19-35 months'
		table['denominator_column_id'] = 'Immunization_Population'
		table['topics'] = ["health care", "public health"]

		table['columns'] = OrderedDict()
		table['columns']['Immunization_Population'] = OrderedDict()
		table['columns']['Immunization_Population']['column_title'] = 'Immunized children aged 19-35 months:'
		table['columns']['Immunization_Population']['indent'] = 0
		table['columns']['Immunization_Population']['parent_column_id'] = None

		table['columns']['Fully_Immunized_43133142'] = OrderedDict()
		table['columns']['Fully_Immunized_43133142']['column_title'] = 'Number fully immunized'
		table['columns']['Fully_Immunized_43133142']['indent'] = 1
		table['columns']['Fully_Immunized_43133142']['parent_column_id'] = 'Immunization_Population'

		table['columns']['Partially_Immunized_431331'] = OrderedDict()
		table['columns']['Partially_Immunized_431331']['column_title'] = 'Number partially immunized (minus HepA)'
		table['columns']['Partially_Immunized_431331']['indent'] = 1
		table['columns']['Partially_Immunized_431331']['parent_column_id'] = 'Immunization_Population'

		table['columns']['Partially_Immunized_4313314'] = OrderedDict()
		table['columns']['Partially_Immunized_4313314']['column_title'] = 'Number partially immunized (minus HepA and PCV)'
		table['columns']['Partially_Immunized_4313314']['indent'] = 1
		table['columns']['Partially_Immunized_4313314']['parent_column_id'] = 'Immunization_Population'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewMedicaid(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewMedicaid, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Medicaid'
		table['table_title'] = 'Hospital visits through Medicaid'
		table['simple_table_title'] = 'Hospital visits through Medicaid'
		table['subject_area'] = 'Health care'
		table['universe'] = 'Total number of hospital or ER visits through Medicaid for children (under 18)'
		table['denominator_column_id'] = 'Under18_Tot'
		table['topics'] = ["health care", "public health"]

		table['columns'] = OrderedDict()
		table['columns']['Under18_Tot'] = OrderedDict()
		table['columns']['Under18_Tot']['column_title'] = 'Total number of hospital or ER visits through Medicaid for children (under 18):'
		table['columns']['Under18_Tot']['indent'] = 0
		table['columns']['Under18_Tot']['parent_column_id'] = None

		table['columns']['Under5_Tot'] = OrderedDict()
		table['columns']['Under5_Tot']['column_title'] = 'Total number of hospital or ER visits through Medicaid for children under 5:'
		table['columns']['Under5_Tot']['indent'] = 0
		table['columns']['Under5_Tot']['parent_column_id'] = None

		table['columns']['Under5_ER'] = OrderedDict()
		table['columns']['Under5_ER']['column_title'] = 'Total number of ER visits through Medicaid for children under 5'
		table['columns']['Under5_ER']['indent'] = 1
		table['columns']['Under5_ER']['parent_column_id'] = 'Under5_Tot'

		table['columns']['Under5_Hosp'] = OrderedDict()
		table['columns']['Under5_Hosp']['column_title'] = 'Total number of hospital visits through Medicaid for children under 5'
		table['columns']['Under5_Hosp']['indent'] = 1
		table['columns']['Under5_Hosp']['parent_column_id'] = 'Under5_Tot'

		table['columns']['FivePlus_Tot'] = OrderedDict()
		table['columns']['FivePlus_Tot']['column_title'] = 'Total number of hospital or ER visits through Medicaid for children over 5:'
		table['columns']['FivePlus_Tot']['indent'] = 0
		table['columns']['FivePlus_Tot']['parent_column_id'] = None

		table['columns']['FivePlus_ER'] = OrderedDict()
		table['columns']['FivePlus_ER']['column_title'] = 'Total number of ER visits through Medicaid for children over 5'
		table['columns']['FivePlus_ER']['indent'] = 1
		table['columns']['FivePlus_ER']['parent_column_id'] = 'FivePlus_Tot'

		table['columns']['Tot_ER_Visits'] = OrderedDict()
		table['columns']['Tot_ER_Visits']['column_title'] = 'Total number of ER visits through Medicaid for children (under 18)'
		table['columns']['Tot_ER_Visits']['indent'] = 0
		table['columns']['Tot_ER_Visits']['parent_column_id'] = 'Under18_Tot'

		table['columns']['Tot_Hosp_Visits'] = OrderedDict()
		table['columns']['Tot_Hosp_Visits']['column_title'] = 'Total number of hospital visits through Medicaid for children under 18'
		table['columns']['Tot_Hosp_Visits']['indent'] = 0
		table['columns']['Tot_Hosp_Visits']['parent_column_id'] = 'Under18_Tot'

		table['columns']['AsthmaCt'] = OrderedDict()
		table['columns']['AsthmaCt']['column_title'] = 'Total number of hospital or ER visits for children through Medicaid related to Asthma'
		table['columns']['AsthmaCt']['indent'] = 0
		table['columns']['AsthmaCt']['parent_column_id'] = 'Under18_Tot'

		table['columns']['Diabetes1Ct'] = OrderedDict()
		table['columns']['Diabetes1Ct']['column_title'] = 'Total number of hospital or ER visits for children through Medicaid related to Type 1 Diabetes'
		table['columns']['Diabetes1Ct']['indent'] = 0
		table['columns']['Diabetes1Ct']['parent_column_id'] = 'Under18_Tot'

		table['columns']['Diabetes2Ct'] = OrderedDict()
		table['columns']['Diabetes2Ct']['column_title'] = 'Total number of hospital or ER visits for children through Medicaid related to Type 2 Diabetes'
		table['columns']['Diabetes2Ct']['indent'] = 0
		table['columns']['Diabetes2Ct']['parent_column_id'] = 'Under18_Tot'

		table['columns']['DiabetesOtherCt'] = OrderedDict()
		table['columns']['DiabetesOtherCt']['column_title'] = 'Total number of hospital or ER visits for children through Medicaid related to other types of Diabetes (excluding Type 1 and 2)'
		table['columns']['DiabetesOtherCt']['indent'] = 0
		table['columns']['DiabetesOtherCt']['parent_column_id'] = 'Under18_Tot'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewChildCareCenters(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewChildCareCenters, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Child-Care-Centers'
		table['table_title'] = 'Licensed child care facilities'
		table['simple_table_title'] = 'Licensed child care facilities'
		table['subject_area'] = 'Education'
		table['universe'] = 'Number of licensed child care facilities'
		table['denominator_column_id'] = 'Centers'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['Centers'] = OrderedDict()
		table['columns']['Centers']['column_title'] = 'Number of licensed child care facilities:'
		table['columns']['Centers']['indent'] = 0
		table['columns']['Centers']['parent_column_id'] = None

		table['columns']['GrpHmeCnt'] = OrderedDict()
		table['columns']['GrpHmeCnt']['column_title'] = 'Number of group homes'
		table['columns']['GrpHmeCnt']['indent'] = 1
		table['columns']['GrpHmeCnt']['parent_column_id'] = 'Centers'

		table['columns']['FamHmeCnt'] = OrderedDict()
		table['columns']['FamHmeCnt']['column_title'] = 'Number of family homes'
		table['columns']['FamHmeCnt']['indent'] = 1
		table['columns']['FamHmeCnt']['parent_column_id'] = 'Centers'

		table['columns']['LicCenCnt'] = OrderedDict()
		table['columns']['LicCenCnt']['column_title'] = 'Number of licensed child care centers'
		table['columns']['LicCenCnt']['indent'] = 1
		table['columns']['LicCenCnt']['parent_column_id'] = 'Centers'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewChildCarePrograms(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewChildCarePrograms, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Child-Care-Programs'
		table['table_title'] = 'Child care programs'
		table['simple_table_title'] = 'Child care programs'
		table['subject_area'] = 'Education'
		table['universe'] = 'Number of licensed child care centers'
		table['denominator_column_id'] = 'LicCenCnt'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['LicCenCnt'] = OrderedDict()
		table['columns']['LicCenCnt']['column_title'] = 'Number of licensed child care centers:'
		table['columns']['LicCenCnt']['indent'] = 0
		table['columns']['LicCenCnt']['parent_column_id'] = None

		table['columns']['EarlyHSCnt'] = OrderedDict()
		table['columns']['EarlyHSCnt']['column_title'] = 'Number of early head start programs'
		table['columns']['EarlyHSCnt']['indent'] = 1
		table['columns']['EarlyHSCnt']['parent_column_id'] = 'LicCenCnt'

		table['columns']['GSRPCnt'] = OrderedDict()
		table['columns']['GSRPCnt']['column_title'] = 'Number of GSRP programs'
		table['columns']['GSRPCnt']['indent'] = 1
		table['columns']['GSRPCnt']['parent_column_id'] = 'LicCenCnt'

		table['columns']['HSCnt'] = OrderedDict()
		table['columns']['HSCnt']['column_title'] = 'Number of Head Start programs'
		table['columns']['HSCnt']['indent'] = 1
		table['columns']['HSCnt']['parent_column_id'] = 'LicCenCnt'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	



class D3TableDetailViewChildCareCapacity(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewChildCareCapacity, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Child-Care-Capacity'
		table['table_title'] = 'Capacity of licensed child care facilities'
		table['simple_table_title'] = 'Capacity of licensed child care facilities'
		table['subject_area'] = 'Education'
		table['universe'] = 'Capacity of licensed child care facilities'
		table['denominator_column_id'] = 'Capacity'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['Capacity'] = OrderedDict()
		table['columns']['Capacity']['column_title'] = 'Capacity of licensed child care facilities:'
		table['columns']['Capacity']['indent'] = 0
		table['columns']['Capacity']['parent_column_id'] = None

		table['columns']['CapEarlyHS'] = OrderedDict()
		table['columns']['CapEarlyHS']['column_title'] = 'Capacity of early head start programs'
		table['columns']['CapEarlyHS']['indent'] = 1
		table['columns']['CapEarlyHS']['parent_column_id'] = 'Capacity'

		table['columns']['CapGSRP'] = OrderedDict()
		table['columns']['CapGSRP']['column_title'] = 'Capacity of GSRP programs'
		table['columns']['CapGSRP']['indent'] = 1
		table['columns']['CapGSRP']['parent_column_id'] = 'Capacity'

		table['columns']['CapHS'] = OrderedDict()
		table['columns']['CapHS']['column_title'] = 'Capacity of Head Start programs'
		table['columns']['CapHS']['indent'] = 1
		table['columns']['CapHS']['parent_column_id'] = 'Capacity'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	



class D3TableDetailViewFreeReducedLunch(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewFreeReducedLunch, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-School-Lunch'
		table['table_title'] = 'Free and reduced school lunch eligibility'
		table['simple_table_title'] = 'Free and reduced school lunch eligibility'
		table['subject_area'] = 'Education'
		table['universe'] = 'Total number of student counts grade K-12, including ungraded'
		table['denominator_column_id'] = 'Total'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['Total'] = OrderedDict()
		table['columns']['Total']['column_title'] = 'Total number of student counts grade K-12, including ungraded:'
		table['columns']['Total']['indent'] = 0
		table['columns']['Total']['parent_column_id'] = None

		table['columns']['FreeEligible'] = OrderedDict()
		table['columns']['FreeEligible']['column_title'] = 'Number of students who records indicate that they are eligible for the free lunch program, are migrant or homeless students, or identified via direct certification process'
		table['columns']['FreeEligible']['indent'] = 1
		table['columns']['FreeEligible']['parent_column_id'] = 'Total'

		table['columns']['ReducedEligible'] = OrderedDict()
		table['columns']['ReducedEligible']['column_title'] = 'Number of students who records indicate that they are eligible for the reduced price lunch program and are not a migrant or homeless students, or were not identified via direct certification process'
		table['columns']['ReducedEligible']['indent'] = 1
		table['columns']['ReducedEligible']['parent_column_id'] = 'Total'

		table['columns']['NotEligible'] = OrderedDict()
		table['columns']['NotEligible']['column_title'] = 'Student records indicate they are not eligible for free or reduced lunch programs'
		table['columns']['NotEligible']['indent'] = 1
		table['columns']['NotEligible']['parent_column_id'] = 'Total'

		table['columns']['FreeReducedEligible'] = OrderedDict()
		table['columns']['FreeReducedEligible']['column_title'] = 'The number of students eligible for free or reduced lunches as measured above'
		table['columns']['FreeReducedEligible']['indent'] = 1
		table['columns']['FreeReducedEligible']['parent_column_id'] = 'Total'


		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewCollegeReadiness(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewCollegeReadiness, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-College-Readiness'
		table['table_title'] = 'Student college readiness assessment'
		table['simple_table_title'] = 'Student college readiness assessment'
		table['subject_area'] = 'Education'
		table['universe'] = 'The number of students who took the SAT assessment in all subjects'
		table['denominator_column_id'] = 'AllSbjtNumAssessed'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['AllSbjtNumAssessed'] = OrderedDict()
		table['columns']['AllSbjtNumAssessed']['column_title'] = 'The number of students who took the SAT assessment in all subjects:'
		table['columns']['AllSbjtNumAssessed']['indent'] = 0
		table['columns']['AllSbjtNumAssessed']['parent_column_id'] = None

		table['columns']['AllSbjtNumReady'] = OrderedDict()
		table['columns']['AllSbjtNumReady']['column_title'] = 'The number of students who scored at or above college readiness proficiency on the SAT test in all subjects'
		table['columns']['AllSbjtNumReady']['indent'] = 1
		table['columns']['AllSbjtNumReady']['parent_column_id'] = 'AllSbjtNumAssessed'

		table['columns']['MathNumAssessed'] = OrderedDict()
		table['columns']['MathNumAssessed']['column_title'] = 'The number of students who took the math SAT assessment'
		table['columns']['MathNumAssessed']['indent'] = 1
		table['columns']['MathNumAssessed']['parent_column_id'] = 'AllSbjtNumAssessed'

		table['columns']['MathNumReady'] = OrderedDict()
		table['columns']['MathNumReady']['column_title'] = 'The number of students who scored at or above college readiness proficiency on the SAT test in math'
		table['columns']['MathNumReady']['indent'] = 2
		table['columns']['MathNumReady']['parent_column_id'] = 'MathNumAssessed'

		table['columns']['EBRWNumAssessed'] = OrderedDict()
		table['columns']['EBRWNumAssessed']['column_title'] = 'The number of students who took the evidenced-based reading and writing SAT assessment'
		table['columns']['EBRWNumAssessed']['indent'] = 1
		table['columns']['EBRWNumAssessed']['parent_column_id'] = 'AllSbjtNumAssessed'
		
		table['columns']['EBRWNumReady'] = OrderedDict()
		table['columns']['EBRWNumReady']['column_title'] = 'The number of students who scored at or above college readiness proficiency on the SAT test in evidenced-based reading and writing'
		table['columns']['EBRWNumReady']['indent'] = 2
		table['columns']['EBRWNumReady']['parent_column_id'] = 'EBRWNumAssessed'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewLeadBloodLevels(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewLeadBloodLevels, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Blood-Lead'
		table['table_title'] = 'Blood lead levels'
		table['simple_table_title'] = 'Blood lead levels'
		table['subject_area'] = 'Health'
		table['universe'] = 'Number of individuals who were tested'
		table['denominator_column_id'] = 'CntTested'
		table['topics'] = ["health", "children"]

		table['columns'] = OrderedDict()
		table['columns']['CntTested'] = OrderedDict()
		table['columns']['CntTested']['column_title'] = 'Number of individuals who were tested:'
		table['columns']['CntTested']['indent'] = 0
		table['columns']['CntTested']['parent_column_id'] = None

		table['columns']['EBLL'] = OrderedDict()
		table['columns']['EBLL']['column_title'] = 'Number of individuals tested with an elevated blood lead level, defined as > 4.5 micrograms per deciliter'
		table['columns']['EBLL']['indent'] = 1
		table['columns']['EBLL']['parent_column_id'] = 'CntTested'

		table['columns']['Under6CntTested'] = OrderedDict()
		table['columns']['Under6CntTested']['column_title'] = 'Number of individuals, under 6 years of age, who were tested'
		table['columns']['Under6CntTested']['indent'] = 1
		table['columns']['Under6CntTested']['parent_column_id'] = 'CntTested'

		table['columns']['Under6EBLL'] = OrderedDict()
		table['columns']['Under6EBLL']['column_title'] = 'Number of individuals tested, under 6 years of age, with an elevated blood lead level, defined as > 4.5 micrograms per deciliter'
		table['columns']['Under6EBLL']['indent'] = 2
		table['columns']['Under6EBLL']['parent_column_id'] = 'Under6CntTested'

		table['columns']['Under18CntTested'] = OrderedDict()
		table['columns']['Under18CntTested']['column_title'] = 'Number of individuals, under 18 years of age, who were tested'
		table['columns']['Under18CntTested']['indent'] = 1
		table['columns']['Under18CntTested']['parent_column_id'] = 'CntTested'

		table['columns']['Under18EBLL'] = OrderedDict()
		table['columns']['Under18EBLL']['column_title'] = 'Number of individuals tested, under 18 years of age, with an elevated blood lead level, defined as  > 4.5 micrograms per deciliter'
		table['columns']['Under18EBLL']['indent'] = 2
		table['columns']['Under18EBLL']['parent_column_id'] = 'Under18CntTested'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewCollegeEnrollment(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewCollegeEnrollment, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-College-Enrollment'
		table['table_title'] = 'College enrollment'
		table['simple_table_title'] = 'College enrollment'
		table['subject_area'] = 'Education'
		table['universe'] = 'Number of public high school graduates who received a diploma during the high school graduation year'
		table['denominator_column_id'] = 'TotGrad'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['TotGrad'] = OrderedDict()
		table['columns']['TotGrad']['column_title'] = 'Number of public high school graduates who received a diploma during the high school graduation year:'
		table['columns']['TotGrad']['indent'] = 0
		table['columns']['TotGrad']['parent_column_id'] = None

		table['columns']['TotEnrl'] = OrderedDict()
		table['columns']['TotEnrl']['column_title'] = 'Number of public high school graduates who have enrolled in college within 12 months of graduation'
		table['columns']['TotEnrl']['indent'] = 1
		table['columns']['TotEnrl']['parent_column_id'] = 'TotGrad'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewStudentMobility(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewStudentMobility, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Student-Mobility'
		table['table_title'] = 'Student mobility'
		table['simple_table_title'] = 'Student mobility'
		table['subject_area'] = 'Education'
		table['universe'] = 'Number of public school students'
		table['denominator_column_id'] = 's_count'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['s_count'] = OrderedDict()
		table['columns']['s_count']['column_title'] = 'Number of public school students:'
		table['columns']['s_count']['indent'] = 0
		table['columns']['s_count']['parent_column_id'] = None

		table['columns']['s_mobile'] = OrderedDict()
		table['columns']['s_mobile']['column_title'] = 'Number of public school students either leaving or entering a new school during the school year'
		table['columns']['s_mobile']['indent'] = 1
		table['columns']['s_mobile']['parent_column_id'] = 's_count'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailViewChronicAbsenteeism(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailViewChronicAbsenteeism, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Chronic-Absenteeism'
		table['table_title'] = 'Chronic absenteeism'
		table['simple_table_title'] = 'Chronic absenteeism'
		table['subject_area'] = 'Education'
		table['universe'] = 'Number of public school students'
		table['denominator_column_id'] = 'n_total'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['n_total'] = OrderedDict()
		table['columns']['n_total']['column_title'] = 'Number of public school students:'
		table['columns']['n_total']['indent'] = 0
		table['columns']['n_total']['parent_column_id'] = None

		table['columns']['n_chronabs'] = OrderedDict()
		table['columns']['n_chronabs']['column_title'] = 'Number of public school students missing 10% or more school days'
		table['columns']['n_chronabs']['indent'] = 1
		table['columns']['n_chronabs']['parent_column_id'] = 'n_total'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	


class D3TableDetailView8thGradeMath(TemplateView):
	template_name = 'table/table_detail.html'

	def dispatch(self, *args, **kwargs):

		try:
			return super(D3TableDetailView8thGradeMath, self).dispatch(*args, **kwargs)
		except Http404, e:
			raise e

	def get_context_data(self, *args, **kwargs):
		table = OrderedDict()
		table['table_id'] = 'D3-Eighth-Grade-Math-Assessment'
		table['table_title'] = 'Eighth grade math assessment'
		table['simple_table_title'] = 'Eighth grade math assessment'
		table['subject_area'] = 'Education'
		table['universe'] = 'Number of students assessed in Math'
		table['denominator_column_id'] = 'numberasse'
		table['topics'] = ["education", "children"]

		table['columns'] = OrderedDict()
		table['columns']['numberasse'] = OrderedDict()
		table['columns']['numberasse']['column_title'] = 'Number of public school students:'
		table['columns']['numberasse']['indent'] = 0
		table['columns']['numberasse']['parent_column_id'] = None

		table['columns']['totalmet'] = OrderedDict()
		table['columns']['totalmet']['column_title'] = 'Number of students who met or exceeded grade level standards in Math'
		table['columns']['totalmet']['indent'] = 1
		table['columns']['totalmet']['parent_column_id'] = 'numberasse'

		page_context = {
			'table': table,
			'tabulation': {'table_versions': ''}
		}

		return page_context	



class TableDetailView(TemplateView):
	template_name = 'table/table_detail.html'
	RELEASE_TRANSLATE_DICT = {
		'one_yr': '1-Year',
		'three_yr': '3-Year',
		'five_yr': '5-Year',
	}
	TABLE_TYPE_TRANSLATE_DICT = {
		'B': 'Detailed',
		'C': 'Collapsed',
	}

	def dispatch(self, *args, **kwargs):
		table_argument = self.kwargs.get('table', None)
		# canonicalize
		if table_argument and not table_argument == table_argument.upper():
			return HttpResponseRedirect(
						reverse('table_detail', args=(table_argument.upper(),))
					)

		self.table_code = table_argument
		self.table_group = self.table_code[0]
		self.tabulation_code = re.sub("\D", "", self.table_code)

		try:
			return super(TableDetailView, self).dispatch(*args, **kwargs)
		except Http404, e:
			# Check if core table doesn't exist, but has iterations; if so,
			# redirect to the first iteration.
			if table_argument.endswith('PR'):
				table_argument = table_argument.replace('PR', 'APR')
			else:
				table_argument = table_argument + 'A'
			endpoint = settings.API_URL + '/2.0/table/latest/%s' % table_argument

			if requests.get(endpoint).status_code == 200:
				return HttpResponseRedirect(
					reverse('table_detail', args = (table_argument,))
				)
			raise e

	def get_tabulation_data(self, table_code):
		endpoint = settings.API_URL + '/1.0/tabulation/%s' % table_code
		r = requests.get(endpoint)
		status_code = r.status_code

		# make sure we've requested a legit tabulation code
		if status_code == 200:
			tabulation_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
		elif status_code == 404 or status_code == 400:
			error_data = simplejson.loads(r.text)
			raise_404_with_messages(self.request, error_data)
		else:
			raise Http404

		# factories for organizing metadata on arbitrary sets of tables
		def table_dict_factory():
			return {
				'version_name': 'Standard Table',
				'releases': {
					'one_yr': '',
					'three_yr': '',
					'five_yr': '',
				},
			}

		def table_ordereddict_factory():
			return OrderedDict()

		def table_expanded_factory():
			return {
				'table_metadata': self.get_table_data(table_code)
			}

		tables = OrderedDict()
		table_grid = OrderedDict()
		tables_expanded = OrderedDict()
		default_table = defaultdict(table_dict_factory)
		default_table_groups = defaultdict(table_ordereddict_factory)
		default_table_list = defaultdict(table_ordereddict_factory)
		default_expanded_list = defaultdict(table_ordereddict_factory)
		default_expanded_table = defaultdict(table_expanded_factory)

		# take API data and shape into dicts for:
		# * a grid with each table variant and which releases it's available for
		# * a list of each primary table, with its column metadata from the API
		for release in tabulation_data['tables_by_release']:
			# Sort data by length to have all the PR tables at the end.
			# Note that sorted() is guaranteed to be stable, per Python docs,
			# meaning that keys that compare equal (are equal length) will
			# remain in the same relative order. Assuming they were alphabetical
			# before this, this is guaranteed to list tables as
			# tableA, ... , tableI, tableAPR, ... , tableIPR.
			sorted_data = sorted(tabulation_data['tables_by_release'][release],
								 key = lambda code: len(code))
			for table_code in sorted_data:
				# is this a B or C table?
				parsed = parse_table_id(table_code)
				letter_code = parsed['table_type']
				tables[letter_code] = default_table_groups[letter_code]

				# keep the grids separate, track which releases a table is in
				tables[letter_code] = default_table_list[letter_code]
				tables[letter_code][table_code] = default_table[table_code]
				tables[letter_code][table_code]['releases'][release] = self.RELEASE_TRANSLATE_DICT[release]

				# get the variant names
				if parsed['racial']:
					if parsed['puerto_rico']:
						tables[letter_code][table_code]['version_name'] = parsed['race'] + " (Puerto Rico)"
					else:
						tables[letter_code][table_code]['version_name'] = parsed['race']
				elif parsed['puerto_rico']:
					tables[letter_code][table_code]['version_name'] = "Standard Table (Puerto Rico)"

		tabulation_data['table_versions'] = tables.pop(self.table_group, None)
		tabulation_data['related_tables'] = {
			'grid': tables,
			'preview': {},
		}

		for group, group_values in tables.iteritems():
			preview_table = next(group_values.iteritems())[0]
			try:
				tabulation_data['related_tables']['preview'][preview_table] = self.get_table_data(preview_table)
				tabulation_data['related_tables']['preview'][preview_table]['table_type'] = self.TABLE_TYPE_TRANSLATE_DICT[preview_table.upper()[0]]
			except ValueError:
				continue

		return tabulation_data

	def get_topic_pages(self, table_topics):
		related_topic_pages = []
		for key, values in TOPICS_MAP.iteritems():
			topics = values.get('topics', [])
			matches = set(topics).intersection(table_topics)
			if matches:
				related_topic_pages.append((key, TOPICS_MAP[key]['title']))

		return related_topic_pages

	def get_table_data(self, table_code):
		endpoint = settings.API_URL + '/2.0/table/latest/%s' % table_code
		r = requests.get(endpoint)

		if r.status_code == 200:
			print simplejson.loads(r.text, object_pairs_hook=OrderedDict)
			return simplejson.loads(r.text, object_pairs_hook=OrderedDict)
		if r.status_code == 400:
			raise ValueError("No table data for that table")
		else:
			raise Http404

	def get_context_data(self, *args, **kwargs):
		page_context = {
			'table': self.get_table_data(self.table_code),
			'tabulation': self.get_tabulation_data(self.tabulation_code),
		}
		page_context['related_topic_pages'] = self.get_topic_pages(page_context['table']['topics'])

		return page_context


### PROFILES ###
class GeographySearchView(TemplateView):
	template_name = 'profile/profile_search.html'

	def get_context_data(self, *args, **kwargs):
		page_context = {}
		q = self.request.GET.get('q', None)
		sumlevs = self.request.GET.get('sumlevs', None)
		start = self.request.GET.get('start', 0)

		if q:
			api_endpoint = settings.API_URL + '/1.0/geo/elasticsearch'
			api_params = {
				'q': q,
				'sumlevs': sumlevs,
				'start': start
			}
			r = requests.get(api_endpoint, params=api_params)
			status_code = r.status_code

			if status_code == 200:
				data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)

				# if we end up powering results list with javascript ...
				#page_context['results'] = SafeString(simplejson.dumps(data['results'], cls=LazyEncoder))
				#page_context['facets'] = SafeString(simplejson.dumps(data['facets'], cls=LazyEncoder))

				page_context = data
				page_context['q'] = q
				page_context['filters'] = sumlevs
				page_context['num_results'] = data['facets']['sumlev']['total']

				# pagination things
				start = int(start)
				results_page_length = len(data['results'])
				if page_context['num_results'] > results_page_length:
					page_context['results_count_set'] = '%s-%s' % (start+1, start+results_page_length)
				if 'next_page' in data['links']:
					page_context['next_offset'] = data['links']['next_page'].split('&start=')[1]
				if 'previous_page' in data['links']:
					page_context['previous_offset'] = data['links']['previous_page'].split('&start=')[1]
			elif status_code == 404 or status_code == 400:
				error_data = simplejson.loads(r.text)
				raise_404_with_messages(self.request, error_data)
			else:
				raise Http404

		return page_context

class GeographyDetailView(TemplateView):
	template_name = 'profile/profile_detail.html'

	def parse_fragment(self,fragment):
		"""Given a URL, return a (geoid,slug) tuple. slug may be None.
		GeoIDs are not tested for structure, but are simply the part of the URL
		before any '-' character, also allowing for the curiosity of Vermont
		legislative districts.
		(see https://github.com/censusreporter/censusreporter/issues/50)
		"""
		parts = fragment.split('-',1)
		if len(parts) == 1:
			return (fragment,None)

		geoid,slug = parts
		if len(slug) == 1:
			geoid = '{}-{}'.format(geoid,slug)
			slug = None
		else:
			parts = slug.split('-')
			if len(parts) > 1 and len(parts[0]) == 1:
				geoid = '{}-{}'.format(geoid,parts[0])
				slug = '-'.join(parts[1:])

		return (geoid,slug)

	def dispatch(self, *args, **kwargs):

		self.geo_id, self.slug = self.parse_fragment(kwargs.get('fragment'))

		if self.slug is None:
			geo = self.get_geography(self.geo_id)
			if geo:
				try:
					# if possible, redirect to slugged URL
					slug = slugify(geo['properties']['display_name'])
					fragment = '{}-{}'.format(self.geo_id, slug)
					return HttpResponseRedirect(
						reverse('geography_detail', args=(fragment,)
					))
				except Exception, e:
					# if we have a strange situation where there's no
					# display name attached to the geography, we should
					# go ahead and display the profile page
					logger.warn(e)
					logger.warn("Geography {} has no display_name".format(self.geo_id))
					pass
			else:
				# if we get nothing from the API, pass through for 404
				pass

		return super(GeographyDetailView, self).dispatch(*args, **kwargs)

	def get_geography(self, geo_id):
		endpoint = settings.API_URL + '/1.0/geo/tiger2017/%s' % self.geo_id
		r = requests.get(endpoint)
		status_code = r.status_code

		if status_code == 200:
			geo_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
			return geo_data
		return None

	def s3_keyname(self, geo_id):
		return '/1.0/data/hip-profiles/2017/%s.json' % geo_id.upper()

	def make_s3(self):
		if settings.AWS_KEY and settings.AWS_SECRET:
			s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
			logger.warn(s3)
			lookup = s3.lookup('d3-sd-child')
		else:
			try:
				s3 = S3Connection()
			except:
				s3 = None
		return s3

	def s3_profile_key(self, geo_id):
		s3 = self.make_s3()

		key = None
		if s3:  
			bucket = s3.get_bucket('d3-sd-child')
			keyname = self.s3_keyname(geo_id)
			key = Key(bucket, keyname)
		
		return key

	def write_profile_json(self, s3_key, data):
		s3_key.metadata['Content-Type'] = 'application/json'
		s3_key.metadata['Content-Encoding'] = 'gzip'
		s3_key.storage_class = 'REDUCED_REDUNDANCY'

		# create gzipped version of json in memory
		memfile = cStringIO.StringIO()
		#memfile.write(data)
		with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
			gzip_data.write(data)
		memfile.seek(0)

		# store static version on S3
		s3_key.set_contents_from_file(memfile)

	def get_context_data(self, *args, **kwargs):
		geography_id = self.geo_id

		try:
			s3_key = self.s3_profile_key(geography_id)
		except:
			s3_key = None

		if s3_key and s3_key.exists():
			memfile = cStringIO.StringIO()
			s3_key.get_file(memfile)
			memfile.seek(0)
			compressed = gzip.GzipFile(fileobj=memfile)

			# Read the decompressed JSON from S3
			profile_data_json = compressed.read()
			# Load it into a Python dict for the template
			profile_data = simplejson.loads(profile_data_json)
			# Also mark it as safe for the charts on the profile
			profile_data_json = SafeString(profile_data_json)
		else:
			profile_data = geo_profile(geography_id, 'acs2017_5yr')

			if profile_data:
				profile_data = enhance_api_data(profile_data)

				profile_data_json = SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))

				if s3_key is None:
					logger.warn("Could not save to S3 because there was no connection to S3.")
				else:
					self.write_profile_json(s3_key, profile_data_json)

			else:
				raise Http404

		page_context = {
			'profile_data_json': profile_data_json
		}
		page_context.update(profile_data)

		return page_context

class TimeSeriesGeographyDetailView(TemplateView):
	template_name = 'profile/time_series_profile_detail.html'

	def parse_fragment(self,fragment):
		"""Given a URL, return a (geoid,slug) tuple. slug may be None.
		GeoIDs are not tested for structure, but are simply the part of the URL
		before any '-' character, also allowing for the curiosity of Vermont
		legislative districts.
		(see https://github.com/censusreporter/censusreporter/issues/50)
		"""
		parts = fragment.split('-',1)
		if len(parts) == 1:
			return (fragment,None)

		geoid,slug = parts
		if len(slug) == 1:
			geoid = '{}-{}'.format(geoid,slug)
			slug = None
		else:
			parts = slug.split('-')
			if len(parts) > 1 and len(parts[0]) == 1:
				geoid = '{}-{}'.format(geoid,parts[0])
				slug = '-'.join(parts[1:])

		return (geoid,slug)

	def dispatch(self, *args, **kwargs):

		self.geo_id, self.slug = self.parse_fragment(kwargs.get('fragment'))
		self.current_year = 2017
		self.past_year = 2012

		if self.slug is None:
			geo = self.get_geography(self.geo_id)
			if geo:
				try:
					# if possible, redirect to slugged URL
					slug = slugify(geo['properties']['display_name'])
					fragment = '{}-{}'.format(self.geo_id, slug)
					return HttpResponseRedirect(
						reverse('geography_detail', args=(fragment,)
					))
				except Exception, e:
					# if we have a strange situation where there's no
					# display name attached to the geography, we should
					# go ahead and display the profile page
					logger.warn(e)
					logger.warn("Geography {} has no display_name".format(self.geo_id))
					pass
			else:
				# if we get nothing from the API, pass through for 404
				pass

		return super(TimeSeriesGeographyDetailView, self).dispatch(*args, **kwargs)

	def get_geography(self, geo_id):
		endpoint = settings.API_URL + '/1.0/geo/tiger2017/%s' % self.geo_id
		r = requests.get(endpoint)
		status_code = r.status_code

		if status_code == 200:
			geo_data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
			return geo_data
		return None

	def s3_keyname(self, year, geo_id):
		return '/1.0/data/hip-profiles/%s/%s.json' % (year, geo_id.upper())

	def make_s3(self):
		if settings.AWS_KEY and settings.AWS_SECRET:
			s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
			logger.warn(s3)
			lookup = s3.lookup('d3-sd-child')
		else:
			try:
				s3 = S3Connection()
			except:
				s3 = None
		return s3

	def s3_profile_key(self, year, geo_id):
		s3 = self.make_s3()

		key = None
		if s3:  
			bucket = s3.get_bucket('d3-sd-child')
			keyname = self.s3_keyname(year, geo_id)
			key = Key(bucket, keyname)
		
		return key

	def write_profile_json(self, s3_key, data):
		s3_key.metadata['Content-Type'] = 'application/json'
		s3_key.metadata['Content-Encoding'] = 'gzip'
		s3_key.storage_class = 'REDUCED_REDUNDANCY'

		# create gzipped version of json in memory
		memfile = cStringIO.StringIO()
		#memfile.write(data)
		with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
			gzip_data.write(data)
		memfile.seek(0)

		# store static version on S3
		s3_key.set_contents_from_file(memfile)


	def get_context_data(self, *args, **kwargs):
		geography_id = self.geo_id
		current_year = self.current_year
		past_year = self.past_year

		# current year
		try:
			s3_key = self.s3_profile_key(current_year, geography_id)
		except:
			s3_key = None

		if s3_key and s3_key.exists():
			memfile = cStringIO.StringIO()
			s3_key.get_file(memfile)
			memfile.seek(0)
			compressed = gzip.GzipFile(fileobj=memfile)

			# Read the decompressed JSON from S3
			profile_data_json_current_year = compressed.read()
			# Load it into a Python dict for the template
			profile_data_current_year = simplejson.loads(profile_data_json_current_year)
			# Also mark it as safe for the charts on the profile
			profile_data_json_current_year = SafeString(profile_data_json_current_year)
		else:
			profile_data_current_year = geo_profile(geography_id, 'acs2017_5yr')

			if profile_data_current_year:
				profile_data_current_year = enhance_api_data(profile_data_current_year)

				profile_data_json_current_year = SafeString(simplejson.dumps(profile_data_current_year, cls=LazyEncoder))

				if s3_key is None:
					logger.warn("Could not save to S3 because there was no connection to S3.")
				else:
					self.write_profile_json(s3_key, profile_data_current_year)

			else:
				raise Http404


		page_context_current_year = {
			'profile_data_json_current_year': profile_data_json_current_year
		}
		page_context_current_year.update(profile_data_current_year)
 

		# past year
		try:
			s3_key = self.s3_profile_key(past_year, geography_id)
		except:
			s3_key = None

		if s3_key and s3_key.exists():
			memfile = cStringIO.StringIO()
			s3_key.get_file(memfile)
			memfile.seek(0)
			compressed = gzip.GzipFile(fileobj=memfile)

			# Read the decompressed JSON from S3
			profile_data_json_past_year = compressed.read()
			# Load it into a Python dict for the template
			profile_data_past_year = simplejson.loads(profile_data_json_past_year)
			# Also mark it as safe for the charts on the profile
			profile_data_json_past_year = SafeString(profile_data_json_past_year)
		else:
			profile_data_past_year = geo_profile(geography_id, 'acs2012_5yr')

			if profile_data_past_year:
				profile_data_past_year= enhance_api_data(profile_data_past_year)

				profile_data_json_past_year = SafeString(simplejson.dumps(profile_data_past_year, cls=LazyEncoder))

				if s3_key is None:
					logger.warn("Could not save to S3 because there was no connection to S3.")
				else:
					self.write_profile_json(s3_key, profile_data_json_past_year)

			else:
				raise Http404


		page_context_past_year = {
			'profile_data_json_past_year': profile_data_json_past_year
		}
		page_context_past_year.update(profile_data_past_year)

		page_context = {
			'current_year': current_year,
			'past_year': past_year,
			'profile_data_current_year': profile_data_current_year,
			'profile_data_past_year': profile_data_past_year, 
			'profile_data_json_current_year': page_context_current_year['profile_data_json_current_year'],
			'profile_data_json_past_year': page_context_past_year['profile_data_json_past_year'],
		}

		return page_context


class CustomGeographyDetailView(TemplateView):
	template_name = 'profile/custom_profile_detail.html'

	def dispatch(self, *args, **kwargs):

		self.slug = kwargs.get('fragment')

		if self.slug is None:
			# if folk come here without a slug, pass through for 404
			pass

		return super(CustomGeographyDetailView, self).dispatch(*args, **kwargs)

	def s3_keyname(self):
		return '/1.0/data/hip-custom-profiles/%s.json' % (self.slug.upper())

	def make_s3(self):
		if settings.AWS_KEY and settings.AWS_SECRET:
			s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
			logger.warn(s3)
			lookup = s3.lookup('d3-sd-child')
		else:
			try:
				s3 = S3Connection()
			except:
				s3 = None
		return s3

	def s3_profile_key(self):
		s3 = self.make_s3()
		key = None
		if s3:  
			bucket = s3.get_bucket('d3-sd-child')
			keyname = self.s3_keyname()
			key = Key(bucket, keyname)
		
		return key

	def write_profile_json(self, s3_key, data):
		s3_key.metadata['Content-Type'] = 'application/json'
		s3_key.metadata['Content-Encoding'] = 'gzip'
		s3_key.storage_class = 'REDUCED_REDUNDANCY'

		# create gzipped version of json in memory
		memfile = cStringIO.StringIO()
		#memfile.write(data)
		with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
			gzip_data.write(data)
		memfile.seek(0)

		# store static version on S3
		s3_key.set_contents_from_file(memfile)


	def get_context_data(self, *args, **kwargs):

		try:
			s3_key = self.s3_profile_key()
		except:
			s3_key = None

		print s3_key

		if s3_key and s3_key.exists():
			memfile = cStringIO.StringIO()
			s3_key.get_file(memfile)
			memfile.seek(0)
			compressed = gzip.GzipFile(fileobj=memfile)

			# Read the decompressed JSON from S3
			profile_data_json = compressed.read()
			# Load it into a Python dict for the template
			profile_data = simplejson.loads(profile_data_json)
			# Also mark it as safe for the charts on the profile
			profile_data_json = SafeString(profile_data_json)
		else:
			profile_data = create_custom_profile(self.slug, 'custom')

			if profile_data:
				# profile_data = enhance_api_data(profile_data)

				profile_data_json = SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))

				if s3_key is None:
					logger.warn("Could not save to S3 because there was no connection to S3.")
				else:
					self.write_profile_json(s3_key, profile_data_json)

			else:
				raise Http404

		page_context = {
			'profile_data_json': profile_data_json
		}
		page_context.update(profile_data)

		return page_context


class DistrictGeographyDetailView(TemplateView):
	template_name = 'profile/custom_profile_detail.html'

	def dispatch(self, *args, **kwargs):

		self.slug = kwargs.get('fragment')

		if self.slug is None:
			# if folk come here without a slug, pass through for 404
			pass

		return super(DistrictGeographyDetailView, self).dispatch(*args, **kwargs)

	def s3_keyname(self):
		return '/1.0/data/districts/%s.json' % (self.slug.upper())

	def make_s3(self):
		if settings.AWS_KEY and settings.AWS_SECRET:
			s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
			logger.warn(s3)
			lookup = s3.lookup('d3-sd-child')
		else:
			try:
				s3 = S3Connection()
			except:
				s3 = None
		return s3

	def s3_profile_key(self):
		s3 = self.make_s3()
		key = None
		if s3:  
			bucket = s3.get_bucket('d3-sd-child')
			keyname = self.s3_keyname()
			key = Key(bucket, keyname)
		
		return key

	def write_profile_json(self, s3_key, data):
		s3_key.metadata['Content-Type'] = 'application/json'
		s3_key.metadata['Content-Encoding'] = 'gzip'
		s3_key.storage_class = 'REDUCED_REDUNDANCY'

		# create gzipped version of json in memory
		memfile = cStringIO.StringIO()
		#memfile.write(data)
		with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
			gzip_data.write(data)
		memfile.seek(0)

		# store static version on S3
		s3_key.set_contents_from_file(memfile)


	def get_context_data(self, *args, **kwargs):

		try:
			s3_key = self.s3_profile_key()
		except:
			s3_key = None

		print s3_key

		if s3_key and s3_key.exists():
			memfile = cStringIO.StringIO()
			s3_key.get_file(memfile)
			memfile.seek(0)
			compressed = gzip.GzipFile(fileobj=memfile)

			# Read the decompressed JSON from S3
			profile_data_json = compressed.read()
			# Load it into a Python dict for the template
			profile_data = simplejson.loads(profile_data_json)
			# Also mark it as safe for the charts on the profile
			profile_data_json = SafeString(profile_data_json)
		else:
			profile_data = create_custom_profile(self.slug, 'district')

			if profile_data:
				# profile_data = enhance_api_data(profile_data)

				profile_data_json = SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))

				if s3_key is None:
					logger.warn("Could not save to S3 because there was no connection to S3.")
				else:
					self.write_profile_json(s3_key, profile_data_json)

			else:
				raise Http404

		page_context = {
			'profile_data_json': profile_data_json
		}
		page_context.update(profile_data)

		return page_context


class TopicView(TemplateView):
	template_name = 'topics/topics_list.html'

	def get_context_data(self, *args, **kwargs):
		if 'topic_slug' in kwargs:
			topic_slug = kwargs['topic_slug']
			try:
				page_context = {
					'topic': TOPICS_MAP[topic_slug],
				}
				self.template_name = 'topics/%s' % TOPICS_MAP[topic_slug]['template_name']
			except:
				raise Http404
		else:
			page_context = {
				'topic': {
					'title': 'Topics',
					'slug': '',
					'description': 'Pages describing the concepts and tables covered by the Census and American Community Survey.',
				},
				'topics_list': sort_topics(TOPICS_MAP)
			}

		return page_context


### EXAMPLES ###

class ExampleView(TemplateView):
	'''
	Simple router for flat example pages. A request to '/examples/slug-name/'
	will attempt to find a corresponding template at `examples/slug_name.html`.
	'''
	def get_template_names(self):
		template = 'examples/%s.html' % (self.kwargs['example_slug'].replace('-', '_'))
		try:
			loader.get_template(template)
			return template
		except TemplateDoesNotExist:
			raise Http404


### COMPARISONS ###

class DataView(TemplateView):
	template_name = 'data/data_table.html'

	def dispatch(self, *args, **kwargs):
		self.table = self.request.GET.get('table', None)
		self.primary_geo_id = self.request.GET.get('primary_geo_id', None)
		self.geo_ids = self.request.GET.get('geo_ids', '01000US')
		self.release_slug = self.request.GET.get('release', None)
		self.release = ACS_RELEASES.get(self.release_slug, None)

		if not self.table or not self.geo_ids:
			errors = {
				'Missing': 'This view requires `table` and `geo_ids` parameters in the querystring.'
			}
			raise_404_with_messages(self.request, errors)

		self.format = self.kwargs.get('format', None)
		if self.format in ['table', 'distribution', 'map']:
			self.template_name = 'data/data_%s.html' % self.format
		else:
			raise Http404

		return super(DataView, self).dispatch(*args, **kwargs)

	

	def get_context_data(self, *args, **kwargs):
		if self.table.startswith('D3-'):
			# what level are the geoids
			state_geoids = []
			county_geoids = []
			county_sd_geoids = []
			tract_geoids = []
			block_group_geoids = []
			msa_geoids = []
			congressional_district_geoids = []
			state_senate_geoids = []
			state_house_geoids = []
			school_district_geoids = []
			zcta_geoids = []
			d3_all_geoids = []

			geo_ids = self.geo_ids.split(",")  
			for geo_id in geo_ids:
				if geo_id.find('|') != -1:
					childGeoAPI = settings.API_URL + '/1.0/geo/show/tiger2017'
					api_params = {
						'geo_ids': geo_id,
					}
					r = requests.get(childGeoAPI, params=api_params)
					status_code = r.status_code

					if status_code == 200:
						data = simplejson.loads(r.text)
						for key in data:
							if key == 'features':
								for value in data[key]:
									d3_all_geoids.append(value['properties']['geoid'])

					elif status_code == 404 or status_code == 400:
						error_data = simplejson.loads(r.text)
						raise_404_with_messages(self.request, error_data)
					else:
						raise Http404

				else:
					d3_all_geoids.append(geo_id)


			# now that we have all geoids, let's group them by type
			for geoid in d3_all_geoids:
				split_geoid = geoid.split('US') 
				if geoid.startswith('040'):
					state_geoids.append(split_geoid[1])
				if geoid.startswith('050'):
					county_geoids.append(split_geoid[1])
				if geoid.startswith('060'):
					county_sd_geoids.append(split_geoid[1])
				if geoid.startswith('140'):
					tract_geoids.append(split_geoid[1])
				if geoid.startswith('150'):
					block_group_geoids.append(split_geoid[1])
				if geoid.startswith('310'):
					msa_geoids.append(split_geoid[1])
				if geoid.startswith('500'):
					cong_dist_geoid = split_geoid[1].replace("26", "", 1)
					congressional_district_geoids.append(cong_dist_geoid)
				if geoid.startswith('610'):
					state_senate_geoid = split_geoid[1].replace("260", "", 1)
					state_senate_geoid = state_senate_geoid.lstrip("0")
					state_senate_geoids.append(state_senate_geoid)
				if geoid.startswith('620'):
					state_house_geoid = split_geoid[1].replace("260", "", 1)
					state_house_geoid = state_house_geoid.lstrip("0")
					state_house_geoids.append(state_house_geoid)
				if geoid.startswith('860'):
					zcta_geoids.append(split_geoid[1])
				if geoid.startswith('950') or geoid.startswith('960') or geoid.startswith('970'):	
					school_district_geoids.append(split_geoid[1])

			# now that we have all of the geoids, let's set up particulars for the table
			d3_state_link = None
			d3_county_link = None
			d3_county_sd_link = None
			d3_tract_link = None
			d3_block_group_link = None
			d3_msa_link = None
			d3_congressional_district_link = None
			d3_state_senate_link = None
			d3_state_house_link = None
			d3_school_district_link = None
			d3_zcta_link = None

			# for Births data
			#https://services2.arcgis.com/HsXtOCMp1Nis1Ogr/arcgis/rest/services/Births_bySD_2014/FeatureServer/0/query?outFields=*&where=GEOID10%20in%20(2636660,2636630)&f=pgeojson
			if state_geoids and self.table == 'D3-Births':
				table_id = 'Births_StateOfMichigan_2016'
				field_name = 'StateID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_County_2016'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_CountySubdivision_2016'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_Tract_2016'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if block_group_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_BlockGroup_2016'
				field_name = 'GEOID10'
				if hasattr(block_group_geoids, '__iter__'):
					block_group_geoids = ','.join(block_group_geoids)
				d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_MSA_2016'
				field_name = 'GeoID10_MSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_CongressionalDistricts_2016'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_MISenateDistrict_2016'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_MIHouseOfRepDistrict_2016'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_SchoolDistrict_2016'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-Births':
				table_id = 'Births_by_ZIP_2016'
				field_name = 'ZCTA5CE10'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for ELA and Math data
			#https://services2.arcgis.com/HsXtOCMp1Nis1Ogr/arcgis/rest/services/ThirdGrade_ELA_Math_Scores_bySchoolDistrict_08032017/FeatureServer/0/query?outFields=*&where=GEOID10%20in%20(2636660,2636630)&f=pgeojson
			if state_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Scores_Michigan_08032017'
				field_name = 'StateID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Score_byCounty_08032017'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Scores_byCities_08032017'
				field_name = 'GeoID10_1'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Scores_byTract_08032017'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if msa_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Scores_byMSA_08032017'
				field_name = 'GeoID10_MSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if school_district_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Scores_bySchoolDistrict_08032017'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and (self.table == 'D3-Math-Proficiency' or self.table == 'D3-ELA-Proficiency'):
				table_id = 'ThirdGrade_ELA_Math_Scores_byZip_08032017'
				field_name = 'ZCTA5CE10'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for graduation data
			#https://services2.arcgis.com/HsXtOCMp1Nis1Ogr/arcgis/rest/services/ThirdGrade_ELA_Math_Scores_bySchoolDistrict_08032017/FeatureServer/0/query?outFields=*&where=GEOID10%20in%20(2636660,2636630)&f=pgeojson
			if state_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRate_2016_2017_StateOfMichigan__20181009'
				field_name = 'StateID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byCounty__20181019'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byCountySubdivision__20181019'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			# if tract_geoids and self.table == 'D3-Graduation-Rates':
			# 	table_id = 'GraduationRates_byTract_08312017'
			# 	field_name = 'GEOID10'
			# 	if hasattr(tract_geoids, '__iter__'):
			# 		tract_geoids = ','.join(tract_geoids)
			# 	d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if msa_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byMSA__20181019'
				field_name = 'GeoID10_MSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byCongressionalDistrict__20181019'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byMIStateSenate__20181019'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byHouseOfReps__20181019'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_bySchoolDistrict__20181019'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-Graduation-Rates':
				table_id = 'GraduationRates_2016_2017_byZip__20181019'
				field_name = 'ZCTA5CE10'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for infant mortality data
			#https://services2.arcgis.com/HsXtOCMp1Nis1Ogr/arcgis/rest/services/MI_USCongressionalDistrict_InfantMort_Suppressed/FeatureServer/0/query?outFields=*&where=DISTRICT%20in%20(13)&f=json
			if state_geoids and self.table == 'D3-Infant-Mortality':
				table_id = 'MI_Statewide_InfantMort_Suppressed'
				field_name = 'StateID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-Infant-Mortality':
				table_id = 'MI_InfantMort_County_Suppressed'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-Infant-Mortality':
				table_id = 'MI_InfantMort_CouSub_Suppressed'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if congressional_district_geoids and self.table == 'D3-Infant-Mortality':
				table_id = 'MI_USCongressionalDistrict_InfantMort_Suppressed'
				field_name = 'DISTRICT'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'

			# for immunization data
			if state_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_StateofMichigan'
				field_name = 'GEOID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'

			if congressional_district_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_US_Congress'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'				

			if state_senate_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_US_Senate'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'				
			
			if state_house_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_State_House'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'				

			if county_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_Counties'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_WayneCo_Sub'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-Immunization':
				table_id = 'Immunization_2015_Census_Tract'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'


			# for Medicaid CY2017 data
			if state_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_StateOfMichigan_20181106'
				field_name = 'StateID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byCounty_20181106'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byCountySub_20181106'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byTract_20181106'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if block_group_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byBlockGroup_20181106'
				field_name = 'GEOID10'
				if hasattr(block_group_geoids, '__iter__'):
					block_group_geoids = ','.join(block_group_geoids)
				d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byMSA_20181106'
				field_name = 'GEOIDMSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byMICongressionalDistrict_20181106'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byMISenateDistrict_20181106'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byMIHouseOfRepDistrict_20181106'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_bySchDist_20181106'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-Medicaid':
				table_id = 'Medicaid_CY2017_byZIP_20181106'
				field_name = 'ZCTA5CE10'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for Child Care Centers
			if state_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_StateOfMichigan_20180920'
				field_name = 'GEOID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_County_20180920'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_CountySubdivision_20180920'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_Tracts_20180920'
				field_name = 'GEOID10_Tract'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			# if block_group_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
			# 	table_id = ''
			# 	field_name = 'GEOID10'
			# 	if hasattr(block_group_geoids, '__iter__'):
			# 		block_group_geoids = ','.join(block_group_geoids)
			# 	d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_MSA_20180920'
				field_name = 'GeoID10_MSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_MICongressionalDistrict_20180920'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_MISenate_20180920'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_MIHouseOfReps_20180920'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_SchoolDistricts_20180920'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and (self.table == 'D3-Child-Care-Centers' or self.table == 'D3-Child-Care-Programs' or self.table == 'D3-Child-Care-Capacity'):
				table_id = 'LicensedChildCenters_by_ZIP_20180920'
				field_name = 'ZCTA'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for Free and Reduced Lunch
			if state_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_StateOfMichigan_20181105'
				field_name = 'GEOID10'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByCounty_20181105'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByCountySub_20181105'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByTract_20181105'
				field_name = 'GEOID10_Tract'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if block_group_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByBlockGroup_20181105'
				field_name = 'GEOID10'
				if hasattr(block_group_geoids, '__iter__'):
					block_group_geoids = ','.join(block_group_geoids)
				d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByMSA_20181105'
				field_name = 'GEOID10'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByCongressionalDistrict_20181105'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByMISenateDist_20181105'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByMIHouseOfRepsDist_20181105'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_BySchoolDistrict_20181105'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-School-Lunch':
				table_id = 'FreeAndReducedLunch_Fall207_ByZIP_20181105'
				field_name = 'ZCTA5CE10'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for College Readiness
			if state_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_StateOfMichigan_20181107'
				field_name = 'GEOID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byCnty_20181107'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byCntySub_20181107'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byTract_20181107'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if block_group_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byBlockGroup_20181107'
				field_name = 'GEOID10'
				if hasattr(block_group_geoids, '__iter__'):
					block_group_geoids = ','.join(block_group_geoids)
				d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byMSA_20181107'
				field_name = 'GEOID10'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byCongDist_20181107'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byMISenate_20181107'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byMIHouseOrRep_20181107'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_bySchoolDistrict_20181107'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-College-Readiness':
				table_id = 'CollegeReadiness_2017_2018_byZip_20181107'
				field_name = 'ZCTA'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'


			# for College Enrollment
			if state_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_StateOfMichigan_20181106'
				field_name = 'GEOID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byCounty_20181106'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byCountySub_20181106'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byTract_20181106'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if block_group_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byBlockGroup_20181106'
				field_name = 'GEOID10'
				if hasattr(block_group_geoids, '__iter__'):
					block_group_geoids = ','.join(block_group_geoids)
				d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byMSA_20181106'
				field_name = 'GeoID10_MSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byMICongressionalDistrict_20181106'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byMISenateDistrict_20181106'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byMIHouseOfRepDistrict_20181106'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2016_2017_bySchDist__20181106'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-College-Enrollment':
				table_id = 'CollegeEnrollment_2017_byZip_20181106'
				field_name = 'ZCTA'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'

			# for Blood Lead Levels
			if state_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_Michigan_20181129'
				field_name = 'StateID'
				if hasattr(state_geoids, '__iter__'):
					state_geoids = ','.join(state_geoids)
				d3_state_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_geoids +')'
				
			if county_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byCnty_20181129'
				field_name = 'GEOID10'
				if hasattr(county_geoids, '__iter__'):
					county_geoids = ','.join(county_geoids)
				d3_county_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_geoids +')'

			if county_sd_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byCntySub_20181129'
				field_name = 'GEOID10'
				if hasattr(county_sd_geoids, '__iter__'):
					county_sd_geoids = ','.join(county_sd_geoids)
				d3_county_sd_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ county_sd_geoids +')'

			if tract_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byTract_20181129'
				field_name = 'GEOID10'
				if hasattr(tract_geoids, '__iter__'):
					tract_geoids = ','.join(tract_geoids)
				d3_tract_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ tract_geoids +')'

			if block_group_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byBG_20181129'
				field_name = 'GEOID10'
				if hasattr(block_group_geoids, '__iter__'):
					block_group_geoids = ','.join(block_group_geoids)
				d3_block_group_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ block_group_geoids +')'

			if msa_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byMSA_20181129'
				field_name = 'GeoID10_MSA'
				if hasattr(msa_geoids, '__iter__'):
					msa_geoids = ','.join(msa_geoids)
				d3_msa_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ msa_geoids +')'	

			if congressional_district_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byCongDist_20181129'
				field_name = 'GEOID'
				if hasattr(congressional_district_geoids, '__iter__'):
					congressional_district_geoids = ','.join(congressional_district_geoids)
				d3_congressional_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ congressional_district_geoids +')'	

			if state_senate_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byMISenate_20181129'
				field_name = 'GEOID'
				if hasattr(state_senate_geoids, '__iter__'):
					state_senate_geoids = ','.join(state_senate_geoids)
				d3_state_senate_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_senate_geoids +')'	

			if state_house_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byMIHouse_20181129'
				field_name = 'GEOID'
				if hasattr(state_house_geoids, '__iter__'):
					state_house_geoids = ','.join(state_house_geoids)
				d3_state_house_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ state_house_geoids +')'	

			if school_district_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_bySchoolDistrict_20181129'
				field_name = 'GEOID10'
				if hasattr(school_district_geoids, '__iter__'):
					school_district_geoids = ','.join(school_district_geoids)
				d3_school_district_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ school_district_geoids +')'	

			if zcta_geoids and self.table == 'D3-Blood-Lead':
				table_id = 'LeadBloodLevels_2017_byZip_20181129'
				field_name = 'ZCTA'
				if hasattr(zcta_geoids, '__iter__'):
					zcta_geoids = ','.join(zcta_geoids)
				d3_zcta_link = settings.D3_API_URL + '/'+ table_id +'/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20('+ zcta_geoids +')'

			d3_links = True
			download_link_prefix = None

		else:
			d3_links = False
			d3_state_link = None
			d3_county_link = None
			d3_county_sd_link = None
			d3_tract_link = None
			d3_block_group_link = None
			d3_msa_link = None
			d3_congressional_district_link = None
			d3_school_district_link = None
			d3_zcta_link = None
			download_link_prefix = settings.API_URL + '/1.0/data/download/latest?table_ids=%s&geo_ids=%s' % (self.table, self.geo_ids)

		page_context = {
			'table': self.table or '',
			'primary_geo_id': self.primary_geo_id or '',
			'geo_ids': self.geo_ids or '',
			'release': self.release or '',
			'data_format': self.format,
			'download_link_prefix': download_link_prefix,
			'd3_state_link': d3_state_link,
			'd3_county_link': d3_county_link,
			'd3_county_sd_link': d3_county_sd_link,
			'd3_tract_link': d3_tract_link,
			'd3_block_group_link': d3_block_group_link,
			'd3_msa_link': d3_msa_link,
			'd3_congressional_district_link': d3_congressional_district_link,
			'd3_school_district_link': d3_school_district_link,
			'd3_zcta_link': d3_zcta_link,
			'd3_links': d3_links,
		}

		return page_context


class HomepageView(TemplateView):
	template_name = 'new_homepage.html'
	def get_context_data(self, *args, **kwargs):
		excluded_topics = ('getting-started', 'topic-codes')
		page_context = {
			'hide_nav_tools': False,
			'topics_list': sort_topics(TOPICS_MAP, excluded_topics),
		}

		return page_context

class CustomDrawnProfilesView(TemplateView):
	template_name = 'gallery/custom_drawn_profiles.html'
	def get_context_data(self, *args, **kwargs):
		dashboards = Dashboards.objects.all().order_by('dashboard_name')

		page_context = {
			'dashboards': dashboards,
		}

		return page_context

class ComparisonBuilder(TemplateView):
	template_name = 'compare/comparison_builder.html'

	def get_context_data(self, *args, **kwargs):
		page_context = {
			'hide_nav_compare': True,
		}

		page_context.update({
			'topic_demographic_filters': TOPIC_FILTERS['Demographics'],
			'topic_economic_filters': TOPIC_FILTERS['Economics'],
			'topic_family_filters': TOPIC_FILTERS['Families'],
			'topic_housing_filters': TOPIC_FILTERS['Housing'],
			'topic_social_filters': TOPIC_FILTERS['Social'],
			'sumlev_choices': SUMLEV_CHOICES,
			'sumlev_standard_choices': SUMLEV_CHOICES['Standard'],
			'sumlev_legislative_choices': SUMLEV_CHOICES['Legislative'],
			'sumlev_school_choices': SUMLEV_CHOICES['Schools'],
		})

		return page_context

class S3Conn(object):
	def make_s3(self):
		if settings.AWS_KEY and settings.AWS_SECRET:
			s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
			logger.warn(s3)
		else:
			try:
				s3 = S3Connection()
			except:
				s3 = None
		return s3

	def s3_key(self, key_name):
		s3 = self.make_s3()

		key = None
		if s3:
			bucket = s3.get_bucket('d3-sd-child')
			key = Key(bucket, key_name)
		return key

	def write_json(self, s3_key, data):
		s3_key.metadata['Content-Type'] = 'application/json'
		s3_key.metadata['Content-Encoding'] = 'gzip'
		s3_key.storage_class = 'REDUCED_REDUNDANCY'

		# create gzipped version of json in memory
		memfile = cStringIO.StringIO()
		#memfile.write(data)
		with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
			gzip_data.write(data)
		memfile.seek(0)

		# store static version on S3
		s3_key.set_contents_from_file(memfile)

class MakeJSONView(View):
	def post(self, request, *args, **kwargs):
		post_data = self.request.POST

		if 'chart_data' in post_data:
			chart_data = simplejson.loads(post_data['chart_data'], object_pairs_hook=OrderedDict)
		if 'geography' in post_data:
			geography = simplejson.loads(post_data['geography'], object_pairs_hook=OrderedDict)
		if 'geo_metadata' in post_data:
			geo_metadata = simplejson.loads(post_data['geo_metadata'], object_pairs_hook=OrderedDict)

		if 'params' in post_data:
			params = simplejson.loads(post_data['params'])

		# for now, assume we need all these things
		if not (chart_data and geography and geo_metadata and params):
			return render_json_to_response({'success': 'false'})

		path_to_make = params['chartDataID'].split('-')
		data = {
			'geography': geography,
			'geo_metadata': geo_metadata,
		}

		# bless you, http://stackoverflow.com/a/13688108/3204984
		def nested_set(data, keys, value):
			for key in keys[:-1]:
				data = data.setdefault(key, {})
			data[keys[-1]] = value

		nested_set(data, path_to_make, chart_data)

		chart_data_json = SafeString(simplejson.dumps(data, cls=LazyEncoder))

		key_name = '/1.0/data/charts/{0}/{1}-{2}.json'.format(params['releaseID'], params['geoID'], params['chartDataID'])
		s3 = S3Conn()

		try:
			s3_key = s3.s3_key(key_name)
		except:
			s3_key = None

		if s3_key and s3_key.exists():
			pass
		elif s3_key:
			s3.write_json(s3_key, chart_data_json)
		else:
			logger.warn("Could not save to S3 because there was no connection to S3.")

		return render_json_to_response({'success': 'true'})



## LOCAL DEV VERSION OF API ##

class PlaceSearchJson(View):
	def get(self, request, *args, **kwargs):
		geographies = Geography.objects.all()

		if 'geoids' in self.request.GET:
			geoid_list = self.request.GET['geoids'].split('|')
			geographies = Geography.objects.filter(full_geoid__in=geoid_list)

		elif 'geoid' in self.request.GET:
			geoid = self.request.GET['geoid']
			geographies = Geography.objects.filter(full_geoid__exact=geoid)

		elif 'q' in self.request.GET:
			q = self.request.GET['q']
			geographies = Geography.objects.filter(full_name__icontains=q)

		if 'sumlevs' in self.request.GET:
			allowed_sumlev_list = self.request.GET['sumlevs'].split(',')
			geographies = geographies.filter(sumlev__in=allowed_sumlev_list)

		geographies = geographies.values()
		geographies = geographies.only('full_name','full_geoid','sumlev')

		return render_json_to_response(list(geographies))

class TableSearchJson(View):
	def format_result(self, obj, obj_type):
		table_id = obj.get('table_id', None) or obj.get('parent_table_id', None)
		table_name = obj.get('table_name', None) or obj.get('table__table_name', None)
		table_topics = obj.get('topics', None) or obj.get('table__topics', None)
		table_universe = obj.get('table_universe', None) or obj.get('table__table_universe', None)

		result = OrderedDict()
		result['type'] = obj_type
		result['table_id'] = table_id
		result['table_name'] = table_name
		result['topics'] = table_topics
		result['universe'] = table_name
		result['unique_key'] = table_id
		#result['tokens'] = [word.lower().strip("() ") for word in table_name.split(' ') if word.lower() not in NLTK_STOPWORDS]

		if obj_type == 'column':
			result['column_id'] = obj['column_id']
			result['column_name'] = obj['column_name']
			result['unique_key'] = '%s|%s' % (table_id, obj['column_id'])

		return result

	def get(self, request, *args, **kwargs):
		results = []
		# allow choice of release, default to 2012 1-year
		release = self.request.GET.get('release', 'ACS 2012 1-Year')

		# comparison query builder throws a search term here,
		# so force it to look at just one release
		q = self.request.GET.get('q', None)
		topics = self.request.GET.get('topics', None)
		tables = Table.objects.filter(release = release)
		columns = Column.objects.filter(table__release = release)

		if q:
			q = q.strip()
			if q == '*':
				columns = None
			else:
				tables = tables.filter(Q(table_name__icontains = q) | Q(table_id__icontains = q))
				columns = columns.filter(Q(column_name__icontains = q) | Q(column_id = q) | Q(table__table_id = q))
		else:
			# only fetch tables on unfiltered query
			columns = None

		if topics:
			topic_list = unquote(topics).split(',')
			for topic in topic_list:
				tables = tables.filter(topics__contains = topic)
				if columns:
					columns = columns.filter(table__topics__contains = topics)

		# short-circuit if just requesting a count
		count = self.request.GET.get('count', None)
		if count == 'tables':
			return render_json_to_response({'count': tables.count()})

		tables = tables.extra(select={'length':'Length(table_id)'}).extra(order_by=['length', 'table_id'])
		tables = tables.values('table_id','table_name','topics','length')
		tables_list = [self.format_result(table, 'table') for table in list(tables)]
		results.extend(tables_list)

		if columns:
			columns = columns.values('parent_table_id','table__table_name','table__topics','column_id','column_name')
			columns_list = [self.format_result(column, 'column') for column in list(columns)]
			results.extend(columns_list)

		table = self.request.GET.get('table', None)
		if table:
			tables = tables.filter(table_name__icontains=table).values()
			results['tables'] = list(tables)

		column = self.request.GET.get('column', None)
		if column:
			columns = columns.filter(column_name__icontains=column).values()
			columns = columns.only('table', 'parent_table_id', 'column_name', 'column_id')
			results['columns'] = list(columns)

		return render_json_to_response(results)


class SearchResultsView(TemplateView):
	template_name = 'search/results.html'

	def get_data(self, query):
		search_url = settings.API_URL + "/2.1/full-text/search?q={}"
		if not query:
			return {'results': [], 'has_query': False}

		r = requests.get(search_url.format(uniurlquote(query)))
		status_code = r.status_code

		mapbox_accessToken = "pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiQV9hS01rQSJ9.wtsn0FwmAdRV7cckopFKkA"
		location_request_url = "https://api.tiles.mapbox.com/v4/geocode/mapbox.places/{0}.json?access_token={1}&country=us,pr"
		location_request_url = location_request_url.format(uniurlquote(query), mapbox_accessToken)
		r_location = requests.get(location_request_url)
		status_code_location = r_location.status_code

		search_data_all = {}
		if status_code == 200 or status_code_location == 200:
			search_data = json.loads(r.text)
			search_data_location = json.loads(r_location.text)
			search_data_all['has_query'] = True
			search_data_all['results'] = search_data['results'] + search_data_location['features']
		elif status_code == 404 or status_code == 400:
			error_data = json.loads(r.text)
			raise_404_with_messages(self.request, error_data)
		elif status_code_location == 404 or status_code_location == 400:
			error_data = json.loads(r_location.text)
			raise_404_with_messages(self.request, error_data)
		else:
			raise Http404

		return search_data_all

	def get_context_data(self, **kwargs):
		q = self.request.GET.get('q', None)
		page_context = self.get_data(q) # format: { "results": [ ... ] }

		# Determine if types of pages exist (used for filtering)
		has_profiles = False
		has_tables = False
		has_addresses = False
		has_topics = False

		# Collect list of sumlevel names for filtering
		sumlevels = {} # format: { sumlevel : [sumlevel_name, count] }

		# Collect list of topics for filtering
		all_topics = {} # format: { topic_name: count}

		for item in page_context['results']:
			if item['type'] == "profile":
				has_profiles = True

				# Capitalize first letter of sumlevel names
				capitalized = capitalize_first(item['sumlevel_name'])
				item['sumlevel_name'] = capitalized

				# Increment count if found, otherwise add and start count
				if item['sumlevel'] in sumlevels.keys():
					sumlevels[item['sumlevel']][1] += 1
				else:
					sumlevels[item['sumlevel']] = [capitalized, 1]

				sumlevels = OrderedDict(sorted(sumlevels.items()))

				# Change format from { sumlevel: [sumlevel_name, count] }
				# to { sumlevel_name: count }
				page_context['sumlevel_names'] = OrderedDict((value[0], value[1]) for key, value in sumlevels.iteritems())

			elif item['type'] == "table":
				has_tables = True

				# NOTE: Topics are used for filtering tables; should not be confused
				# with the 'topic' search result for topic pages

				# Capitalize the first letter of topics
				topics = [capitalize_first(x) for x in item['topics']]
				item['topics'] = ", ".join(topics)

				# Increment count if found, otherwise add and start count
				for topic in topics:
					if topic in all_topics.keys():
						all_topics[topic] += 1
					else:
						all_topics[topic] = 1

				# Sort topics alphabetically
				page_context['topics'] = OrderedDict(sorted(all_topics.items()))

			# "Feature" is an address (Mapbox calls it a location)
			elif item['type'] == "Feature":
				item['type'] = "address"
				has_addresses = True
				item['url'] = "/locate/?lat={0}&lng={1}&address={2}".format(
					item['center'][1], item['center'][0], uniurlquote(item['place_name'])
				)

			elif item['type'] == "topic":
				has_topics = True

		# Include all of the 'contains' metadata in the page
		page_context['contains'] = {
			'profile': has_profiles,
			'table': has_tables,
			'address': has_addresses,
			'topic': has_topics
		}

		return page_context


class Elasticsearch(TemplateView):
	template_name = 'search/elasticsearch.html'

	def get_context_data(self, *args, **kwargs):
		page_context = {
			'release_options': ['ACS 2014 1-Year', 'ACS 2013 1-Year', 'ACS 2013 3-Year', 'ACS 2013 5-Year', 'ACS 2012 1-Year', 'ACS 2012 3-Year', 'ACS 2012 5-Year']
		}
		tables = None
		columns = None
		geo_select = self.request.GET.get('g')
		table_select = self.request.GET.get('table_select')

		if geo_select:
			api_endpoint = settings.API_URL + '/1.0/geo/elasticsearch'
			api_params = {
				'q': geo_select,
			}
			r = requests.get(api_endpoint, params=api_params)
			status_code = r.status_code

			#print r.url
			if status_code == 200:
				data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
				page_context['geos'] = data['results']
				page_context['g'] = geo_select
			elif status_code == 404 or status_code == 400:
				error_data = simplejson.loads(r.text)
				raise_404_with_messages(self.request, error_data)
			else:
				raise Http404
		elif table_select:
			api_endpoint = settings.API_URL + '/1.0/table/elasticsearch'
			api_params = {
				'q': table_select,
			}
			r = requests.get(api_endpoint, params=api_params)
			status_code = r.status_code

			if status_code == 200:
				data = simplejson.loads(r.text, object_pairs_hook=OrderedDict)
				page_context['tables'] = data['results']
			elif status_code == 404 or status_code == 400:
				error_data = simplejson.loads(r.text)
				raise_404_with_messages(self.request, error_data)
			else:
				raise Http404

		return page_context

class GeoSearch(TemplateView):
	template_name = 'search/geo_search.html'

	def get_context_data(self, *args, **kwargs):
		page_context = {
			'release_options': ['ACS 2012 1-Year', 'ACS 2012 3-Year', 'ACS 2012 5-Year']
		}
		tables = None
		columns = None


class SitemapTopicsView(TemplateView):
	template_name = 'sitemap.xml'

	def get_context_data(self, *args, **kwargs):
		urllist = [x['slug'] for x in topics.TOPICS_LIST]
		page_context = {
			'urllist': urllist
		}
		return page_context

	def get(self, request, *args, **kwargs):
		context = self.get_context_data()
		return self.render_to_response(context,
									   content_type="text/xml; charset=utf-8")


class SitemapProfilesView(TemplateView):
	template_name = 'sitemap_topics.xml'

	def get(self, request, *args, **kwargs):
		context = self.get_context_data()
		return self.render_to_response(context, content_type="text/xml; charset=utf-8")

def sort_topics(topic_map, exclude_topics=()):
	if 'gettin-started' in topic_map:
		return [topic_map['getting-started']]+[v for k, v in sorted(topic_map.items()) if k != 'getting-started']
	return [v for k, v in sorted(topic_map.items()) if k not in exclude_topics]

def uniurlquote(s):
	"""urllib2.quote doesn't tolerate unicode strings, so make sure to encode..."""
	return quote(s.encode('utf-8'))


def make_dashboard(request):
	if request.method == 'POST':
		dashboard_name = request.POST.get('dashboard_name')
		dashboard_slug = request.POST.get('dashboard_slug')
		dashboard_geoids = request.POST.get('dashboard_geoids')
		dashboard_organization = request.POST.get('dashboard_organization')
		
		
		dashboard = Dashboards(dashboard_name=dashboard_name, dashboard_slug=dashboard_slug,dashboard_geoids=dashboard_geoids, dashboard_organization=dashboard_organization)
		dashboard.save()
		return HttpResponse(
            json.dumps({"this": "worked"}),
            content_type="application/json"
        )
	else:
		return HttpResponse(
			json.dumps({"nothing to see": "this isn't happening"}),
			content_type="application/json"
		)
