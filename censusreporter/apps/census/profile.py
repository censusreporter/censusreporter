import json
import math
import operator
import requests

from collections import OrderedDict
from django.conf import settings
from .utils import get_ratio, get_division, SUMMARY_LEVEL_DICT


class ApiClient(object):
    def __init__(self, base_url):
        self.base_url = base_url

    def _get(self, path, params=None):
        url = self.base_url + path
        r = requests.get(url, params=params)
        data = None
        if r.status_code == 200:
            data = r.json(object_pairs_hook=OrderedDict)

        return data

    def get_parent_geoids(self, geoid):
        return self._get('/1.0/geo/tiger2012/{}/parents'.format(geoid))

    def get_geoid_data(self, geoid):
        return self._get('/1.0/geo/tiger2012/{}'.format(geoid))

    def get_data(self, table_ids, geo_ids, acs='latest'):
        if hasattr(table_ids, '__iter__'):
            table_ids = ','.join(table_ids)

        if hasattr(geo_ids, '__iter__'):
            geo_ids = ','.join(geo_ids)

        return self._get('/1.0/data/show/{}'.format(acs), params=dict(table_ids=table_ids, geo_ids=geo_ids))

def _maybe_int(i):
    return int(i) if i else i

def percentify(val):
    return val * 100

def rateify(val):
    return val * 1000

def moe_add(moe_a, moe_b):
    # From http://www.census.gov/acs/www/Downloads/handbooks/ACSGeneralHandbook.pdf
    return math.sqrt(moe_a**2 + moe_b**2)

def moe_ratio(numerator, denominator, numerator_moe, denominator_moe):
    # From http://www.census.gov/acs/www/Downloads/handbooks/ACSGeneralHandbook.pdf
    estimated_ratio = numerator / denominator
    return math.sqrt(numerator_moe**2 + (estimated_ratio**2 * denominator_moe**2)) / denominator

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
    '/': moe_ratio,
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
                    # Broken out because MOE ratio needs both MOE and estimates

                    # We're dealing with ratios, not pure division.
                    if a == 0 or b == 0:
                        c = 0
                        c_moe = 0
                    else:
                        c = ops[token](a, b)
                        c_moe = moe_ratio(a, b, a_moe, b_moe)
                    numerator = a
                    numerator_moe = round(a_moe, 1)
                else:
                    c = ops[token](a, b)
                    c_moe = moe_ops[token](a_moe, b_moe)
        elif token.startswith('B'):
            c = data['estimate'][token]
            c_moe = data['error'][token]
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

    item_levels = api.get_parent_geoids(geoid)['parents']
    comparison_geoids = [level['geoid'] for level in item_levels]
    comparison_geoids.append(geoid)

    doc = OrderedDict([('geography', OrderedDict()),
                       ('demographics', dict()),
                       ('economics', dict()),
                       ('families', dict()),
                       ('housing', dict()),
                       ('social', dict())])

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

    # Demographics: Age
    age_dict = dict()
    doc['demographics']['age'] = age_dict

    cat_dict = OrderedDict()
    age_dict['distribution_by_category'] = cat_dict
    add_metadata(age_dict['distribution_by_category'], 'B01001', 'Total population', acs_name)

    cat_dict['percent_under_18'] = build_item('Under 18', data, item_levels,
        'B01001003 B01001004 + B01001005 + B01001006 + B01001027 + B01001028 + B01001029 + B01001030 + B01001001 / %')
    cat_dict['percent_18_to_64'] = build_item('18 to 64', data, item_levels,
        'B01001007 B01001008 + B01001009 + B01001010 + B01001011 + B01001012 + B01001013 + B01001014 + B01001015 + B01001016 + B01001017 + B01001018 + B01001019 + B01001031 + B01001032 + B01001033 + B01001034 + B01001035 + B01001036 + B01001037 + B01001038 + B01001039 + B01001040 + B01001041 + B01001042 + B01001043 + B01001001 / %')
    cat_dict['percent_over_65'] = build_item('65 and over', data, item_levels,
        'B01001020 B01001021 + B01001022 + B01001023 + B01001024 + B01001025 + B01001044 + B01001045 + B01001046 + B01001047 + B01001048 + B01001049 + B01001001 / %')

    pop_dict = dict()
    age_dict['distribution_by_decade'] = pop_dict
    population_by_age_total = OrderedDict()
    population_by_age_male = OrderedDict()
    population_by_age_female = OrderedDict()
    pop_dict['total'] = population_by_age_total
    add_metadata(pop_dict['total'], 'B01001', 'Total population', acs_name)
    pop_dict['male'] = population_by_age_male
    add_metadata(pop_dict['male'], 'B01001', 'Total population', acs_name)
    pop_dict['female'] = population_by_age_female
    add_metadata(pop_dict['female'], 'B01001', 'Total population', acs_name)

    population_by_age_male['0-9'] = build_item('0-9', data, item_levels,
        'B01001003 B01001004 + B01001002 / %')
    population_by_age_female['0-9'] = build_item('0-9', data, item_levels,
        'B01001027 B01001028 + B01001026 / %')
    population_by_age_total['0-9'] = build_item('0-9', data, item_levels,
        'B01001003 B01001004 + B01001027 + B01001028 + B01001001 / %')

    population_by_age_male['10-19'] = build_item('10-19', data, item_levels,
        'B01001005 B01001006 + B01001007 + B01001002 / %')
    population_by_age_female['10-19'] = build_item('10-19', data, item_levels,
        'B01001029 B01001030 + B01001031 + B01001026 / %')
    population_by_age_total['10-19'] = build_item('10-19', data, item_levels,
        'B01001005 B01001006 + B01001007 + B01001029 + B01001030 + B01001031 + B01001001 / %')

    population_by_age_male['20-29'] = build_item('20-29', data, item_levels,
        'B01001008 B01001009 + B01001010 + B01001011 + B01001002 / %')
    population_by_age_female['20-29'] = build_item('20-29', data, item_levels,
        'B01001032 B01001033 + B01001034 + B01001035 + B01001026 / %')
    population_by_age_total['20-29'] = build_item('20-29', data, item_levels,
        'B01001008 B01001009 + B01001010 + B01001011 + B01001032 + B01001033 + B01001034 + B01001035 + B01001001 / %')

    population_by_age_male['30-39'] = build_item('30-39', data, item_levels,
        'B01001012 B01001013 + B01001002 / %')
    population_by_age_female['30-39'] = build_item('30-39', data, item_levels,
        'B01001036 B01001037 + B01001026 / %')
    population_by_age_total['30-39'] = build_item('30-39', data, item_levels,
        'B01001012 B01001013 + B01001036 + B01001037 + B01001001 / %')

    population_by_age_male['40-49'] = build_item('40-49', data, item_levels,
        'B01001014 B01001015 + B01001002 / %')
    population_by_age_female['40-49'] = build_item('40-49', data, item_levels,
        'B01001038 B01001039 + B01001026 / %')
    population_by_age_total['40-49'] = build_item('40-49', data, item_levels,
        'B01001014 B01001015 + B01001038 + B01001039 + B01001001 / %')

    population_by_age_male['50-59'] = build_item('50-59', data, item_levels,
        'B01001016 B01001017 + B01001002 / %')
    population_by_age_female['50-59'] = build_item('50-59', data, item_levels,
        'B01001040 B01001041 + B01001026 / %')
    population_by_age_total['50-59'] = build_item('50-59', data, item_levels,
        'B01001016 B01001017 + B01001040 + B01001041 + B01001001 / %')

    population_by_age_male['60-69'] = build_item('60-69', data, item_levels,
        'B01001018 B01001019 + B01001020 + B01001021 + B01001002 / %')
    population_by_age_female['60-69'] = build_item('60-69', data, item_levels,
        'B01001042 B01001043 + B01001044 + B01001045 + B01001026 / %')
    population_by_age_total['60-69'] = build_item('60-69', data, item_levels,
        'B01001018 B01001019 + B01001020 + B01001021 + B01001042 + B01001043 + B01001044 + B01001045 + B01001001 / %')

    population_by_age_male['70-79'] = build_item('70-79', data, item_levels,
        'B01001022 B01001023 + B01001002 / %')
    population_by_age_female['70-79'] = build_item('70-79', data, item_levels,
        'B01001046 B01001047 + B01001026 / %')
    population_by_age_total['70-79'] = build_item('70-79', data, item_levels,
        'B01001022 B01001023 + B01001046 + B01001047 + B01001001 / %')

    population_by_age_male['80+'] = build_item('80+', data, item_levels,
        'B01001024 B01001025 + B01001002 / %')
    population_by_age_female['80+'] = build_item('80+', data, item_levels,
        'B01001048 B01001049 + B01001026 / %')
    population_by_age_total['80+'] = build_item('80+', data, item_levels,
        'B01001024 B01001025 + B01001048 + B01001049 + B01001001 / %')

    # Demographics: Sex
    sex_dict = OrderedDict()
    doc['demographics']['sex'] = sex_dict
    add_metadata(sex_dict, 'B01001', 'Total population', acs_name)
    sex_dict['percent_male'] = build_item('Male', data, item_levels,
        'B01001002 B01001001 / %')
    sex_dict['percent_female'] = build_item('Female', data, item_levels,
        'B01001026 B01001001 / %')

    data = api.get_data('B01002', comparison_geoids, acs)
    acs_name = data['release']['name']

    median_age_dict = dict()
    age_dict['median_age'] = median_age_dict
    median_age_dict['total'] = build_item('Median age', data, item_levels,
        'B01002001')
    add_metadata(median_age_dict['total'], 'B01002', 'Total population', acs_name)
    median_age_dict['male'] = build_item('Median age male', data, item_levels,
        'B01002002')
    add_metadata(median_age_dict['male'], 'B01002', 'Total population', acs_name)
    median_age_dict['female'] = build_item('Median age female', data, item_levels,
        'B01002003')
    add_metadata(median_age_dict['female'], 'B01002', 'Total population', acs_name)

    # Demographics: Race
    data = api.get_data('B03002', comparison_geoids, acs)
    acs_name = data['release']['name']

    race_dict = OrderedDict()
    doc['demographics']['race'] = race_dict
    add_metadata(race_dict, 'B03002', 'Total population', acs_name)

    race_dict['percent_white'] = build_item('White', data, item_levels,
        'B03002003 B03002001 / %')

    race_dict['percent_black'] = build_item('Black', data, item_levels,
        'B03002004 B03002001 / %')

    race_dict['percent_native'] = build_item('Native', data, item_levels,
        'B03002005 B03002001 / %')

    race_dict['percent_asian'] = build_item('Asian', data, item_levels,
        'B03002006 B03002001 / %')

    race_dict['percent_islander'] = build_item('Islander', data, item_levels,
        'B03002007 B03002001 / %')

    race_dict['percent_other'] = build_item('Other', data, item_levels,
        'B03002008 B03002001 / %')

    race_dict['percent_two_or_more'] = build_item('Two+', data, item_levels,
        'B03002009 B03002001 / %')

#    # collapsed version of "other"
#    race_dict['percent_other'] = build_item('Other', data, item_levels,
#        'B03002005 B03002007 + B03002008 + B03002009 + B03002001 / %')

    race_dict['percent_hispanic'] = build_item('Hispanic', data, item_levels,
        'B03002012 B03002001 / %')

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

    poverty_children['Below'] = build_item('Poverty', data, item_levels,
        'B17001004 B17001005 + B17001006 + B17001007 + B17001008 + B17001009 + B17001018 + B17001019 + B17001020 + B17001021 + B17001022 + B17001023 + B17001004 B17001005 + B17001006 + B17001007 + B17001008 + B17001009 + B17001018 + B17001019 + B17001020 + B17001021 + B17001022 + B17001023 + B17001033 + B17001034 + B17001035 + B17001036 + B17001037 + B17001038 + B17001047 + B17001048 + B17001049 + B17001050 + B17001051 + B17001052 + / %')
    poverty_children['above'] = build_item('Non-poverty', data, item_levels,
        'B17001033 B17001034 + B17001035 + B17001036 + B17001037 + B17001038 + B17001047 + B17001048 + B17001049 + B17001050 + B17001051 + B17001052 + B17001004 B17001005 + B17001006 + B17001007 + B17001008 + B17001009 + B17001018 + B17001019 + B17001020 + B17001021 + B17001022 + B17001023 + B17001033 + B17001034 + B17001035 + B17001036 + B17001037 + B17001038 + B17001047 + B17001048 + B17001049 + B17001050 + B17001051 + B17001052 + / %')

    poverty_seniors['Below'] = build_item('Poverty', data, item_levels,
        'B17001015 B17001016 + B17001029 + B17001030 + B17001015 B17001016 + B17001029 + B17001030 + B17001044 + B17001045 + B17001058 + B17001059 + / %')
    poverty_seniors['above'] = build_item('Non-poverty', data, item_levels,
        'B17001044 B17001045 + B17001058 + B17001059 + B17001015 B17001016 + B17001029 + B17001030 + B17001044 + B17001045 + B17001058 + B17001059 + / %')

    # Economics: Mean Travel Time to Work, Means of Transportation to Work
    data = api.get_data(['B08006', 'B08013'], comparison_geoids, acs)
    acs_name = data['release']['name']

    employment_dict = dict()
    doc['economics']['employment'] = employment_dict

    employment_dict['mean_travel_time'] = build_item('Mean travel time to work', data, item_levels,
        'B08013001 B08006001 B08006017 - /')
    add_metadata(employment_dict['mean_travel_time'], 'B08006, B08013', 'Workers 16 years and over who did not work at home', acs_name)

    data = api.get_data('B08006', comparison_geoids, acs)
    acs_name = data['release']['name']

    transportation_dict = OrderedDict()
    employment_dict['transportation_distribution'] = transportation_dict
    add_metadata(employment_dict['transportation_distribution'], 'B08006', 'Workers 16 years and over', acs_name)

    transportation_dict['drove_alone'] = build_item('Drove alone', data, item_levels,
        'B08006003 B08006001 / %')
    transportation_dict['carpooled'] = build_item('Carpooled', data, item_levels,
        'B08006004 B08006001 / %')
    transportation_dict['public_transit'] = build_item('Public transit', data, item_levels,
        'B08006008 B08006001 / %')
    transportation_dict['Bicycle'] = build_item('Bicycle', data, item_levels,
        'B08006014 B08006001 / %')
    transportation_dict['walked'] = build_item('Walked', data, item_levels,
        'B08006015 B08006001 / %')
    transportation_dict['other'] = build_item('Other', data, item_levels,
        'B08006016 B08006001 / %')
    transportation_dict['worked_at_home'] = build_item('Worked at home', data, item_levels,
        'B08006017 B08006001 / %')

    # Families: Marital Status by Sex
    data = api.get_data('B12001', comparison_geoids, acs)
    acs_name = data['release']['name']

    marital_status = OrderedDict()
    doc['families']['marital_status'] = marital_status
    add_metadata(marital_status, 'B12001', 'Population 15 years and over', acs_name)

    marital_status['married'] = build_item('Married', data, item_levels,
        'B12001004 B12001013 + B12001001 / %')
    marital_status['single'] = build_item('Single', data, item_levels,
        'B12001003 B12001009 + B12001010 + B12001012 + B12001018 + B12001019 + B12001001 / %')

    marital_status_grouped = OrderedDict()
    doc['families']['marital_status_grouped'] = marital_status_grouped
    add_metadata(marital_status_grouped, 'B12001', 'Population 15 years and over', acs_name)

    # repeating data temporarily to develop grouped column chart format
    marital_status_grouped['never_married'] = OrderedDict()
    marital_status_grouped['never_married']['acs_release'] = acs_name
    marital_status_grouped['never_married']['metadata'] = {
        'universe': 'Population 15 years and over',
        'table_id': 'B12001',
        'name': 'Never married'
    }
    marital_status_grouped['never_married']['male'] = build_item('Male', data, item_levels,
        'B12001003 B12001002 / %')
    marital_status_grouped['never_married']['female'] = build_item('Female', data, item_levels,
        'B12001012 B12001011 / %')

    marital_status_grouped['married'] = OrderedDict()
    marital_status_grouped['married']['acs_release'] = acs_name
    marital_status_grouped['married']['metadata'] = {
        'universe': 'Population 15 years and over',
        'table_id': 'B12001',
        'name': 'Now married'
    }
    marital_status_grouped['married']['male'] = build_item('Male', data, item_levels,
        'B12001004 B12001002 / %')
    marital_status_grouped['married']['female'] = build_item('Female', data, item_levels,
        'B12001013 B12001011 / %')

    marital_status_grouped['divorced'] = OrderedDict()
    marital_status_grouped['divorced']['acs_release'] = acs_name
    marital_status_grouped['divorced']['metadata'] = {
        'universe': 'Population 15 years and over',
        'table_id': 'B12001',
        'name': 'Divorced'
    }
    marital_status_grouped['divorced']['male'] = build_item('Male', data, item_levels,
        'B12001010 B12001002 / %')
    marital_status_grouped['divorced']['female'] = build_item('Female', data, item_levels,
        'B12001019 B12001011 / %')

    marital_status_grouped['widowed'] = OrderedDict()
    marital_status_grouped['widowed']['acs_release'] = acs_name
    marital_status_grouped['widowed']['metadata'] = {
        'universe': 'Population 15 years and over',
        'table_id': 'B12001',
        'name': 'Widowed'
    }
    marital_status_grouped['widowed']['male'] = build_item('Male', data, item_levels,
        'B12001009 B12001002 / %')
    marital_status_grouped['widowed']['female'] = build_item('Female', data, item_levels,
        'B12001018 B12001011 / %')


    # Families: Family Types with Children
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

    # Families: Birth Rate by Women's Age
    data = api.get_data('B13016', comparison_geoids, acs)
    acs_name = data['release']['name']

    fertility = dict()
    doc['families']['fertility'] = fertility

    fertility['total'] = build_item('Women 15-50 who gave birth during past year', data, item_levels,
        'B13016002 B13016001 / %')
    add_metadata(fertility['total'], 'B13016', 'Women 15 to 50 years', acs_name)

    fertility_by_age_dict = OrderedDict()
    fertility['by_age'] = fertility_by_age_dict
    add_metadata(fertility['by_age'], 'B13016', 'Women 15 to 50 years', acs_name)

    fertility_by_age_dict['15_to_19'] = build_item('15-19', data, item_levels,
        'B13016003 B13016003 B13016011 + / %')
    fertility_by_age_dict['20_to_24'] = build_item('20-24', data, item_levels,
        'B13016004 B13016004 B13016012 + / %')
    fertility_by_age_dict['25_to_29'] = build_item('25-29', data, item_levels,
        'B13016005 B13016005 B13016013 + / %')
    fertility_by_age_dict['30_to_34'] = build_item('30-35', data, item_levels,
        'B13016006 B13016006 B13016014 + / %')
    fertility_by_age_dict['35_to_39'] = build_item('35-39', data, item_levels,
        'B13016007 B13016007 B13016015 + / %')
    fertility_by_age_dict['40_to_44'] = build_item('40-44', data, item_levels,
        'B13016008 B13016008 B13016016 + / %')
    fertility_by_age_dict['45_to_50'] = build_item('45-50', data, item_levels,
        'B13016009 B13016009 B13016017 + / %')

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


    # Housing: Number of Housing Units, Occupancy Distribution, Vacancy Distribution
    data = api.get_data('B25002', comparison_geoids, acs)
    acs_name = data['release']['name']

    units_dict = dict()
    doc['housing']['units'] = units_dict

    units_dict['number'] = build_item('Number of housing units', data, item_levels,
        'B25002001')
    add_metadata(units_dict['number'], 'B25002', 'Housing units', acs_name)

    occupancy_distribution_dict = OrderedDict()
    units_dict['occupancy_distribution'] = occupancy_distribution_dict
    add_metadata(units_dict['occupancy_distribution'], 'B25002', 'Housing units', acs_name)

    occupancy_distribution_dict['occupied'] = build_item('Occupied', data, item_levels,
        'B25002002 B25002001 / %')
    occupancy_distribution_dict['vacant'] = build_item('Vacant', data, item_levels,
        'B25002003 B25002001 / %')

    # Housing: Structure Distribution
    data = api.get_data('B25024', comparison_geoids, acs)
    acs_name = data['release']['name']

    structure_distribution_dict = OrderedDict()
    units_dict['structure_distribution'] = structure_distribution_dict
    add_metadata(units_dict['structure_distribution'], 'B25024', 'Housing units', acs_name)

    structure_distribution_dict['single_unit'] = build_item('Single unit', data, item_levels,
        'B25024002 B25024003 + B25024001 / %')
    structure_distribution_dict['multi_unit'] = build_item('Multi-unit', data, item_levels,
        'B25024004 B25024005 + B25024006 + B25024007 + B25024008 + B25024009 + B25024001 / %')
    structure_distribution_dict['mobile_home'] = build_item('Mobile home', data, item_levels,
        'B25024010 B25024001 / %')
    structure_distribution_dict['vehicle'] = build_item('Boat, RV, van, etc.', data, item_levels,
        'B25024011 B25024001 / %')

    # Housing: Tenure
    data = api.get_data('B25003', comparison_geoids, acs)
    acs_name = data['release']['name']

    ownership_dict = dict()
    doc['housing']['ownership'] = ownership_dict

    ownership_distribution_dict = OrderedDict()
    ownership_dict['distribution'] = ownership_distribution_dict
    add_metadata(ownership_dict['distribution'], 'B25003', 'Occupied housing units', acs_name)

    ownership_distribution_dict['owner'] = build_item('Owner occupied', data, item_levels,
        'B25003002 B25003001 / %')
    ownership_distribution_dict['renter'] = build_item('Renter occupied', data, item_levels,
        'B25003003 B25003001 / %')

    data = api.get_data('B25026', comparison_geoids, acs)
    acs_name = data['release']['name']

    length_of_tenure_dict = OrderedDict()
    doc['housing']['length_of_tenure'] = length_of_tenure_dict
    add_metadata(length_of_tenure_dict, 'B25026', 'Total population in occupied housing units', acs_name)

    length_of_tenure_dict['Before_1970'] = build_item('Before 1970', data, item_levels,
        'B25026008 B25026015 + B25026001 / %')
    length_of_tenure_dict['1970s'] = build_item('1970s', data, item_levels,
        'B25026007 B25026014 + B25026001 / %')
    length_of_tenure_dict['1980s'] = build_item('1980s', data, item_levels,
        'B25026006 B25026013 + B25026001 / %')
    length_of_tenure_dict['1990s'] = build_item('1990s', data, item_levels,
        'B25026005 B25026012 + B25026001 / %')
    length_of_tenure_dict['2000_to_2004'] = build_item('2000-2004', data, item_levels,
        'B25026004 B25026011 + B25026001 / %')
    length_of_tenure_dict['since_2005'] = build_item('Since 2005', data, item_levels,
        'B25026003 B25026010 + B25026001 / %')

    # Housing: Mobility
    data = api.get_data('B07003', comparison_geoids, acs)
    acs_name = data['release']['name']

    migration_dict = dict()
    doc['housing']['migration'] = migration_dict

    migration_dict['moved_since_previous_year'] = build_item('Moved since previous year', data, item_levels,
        'B07003007 B07003010 + B07003013 + B07003016 + B07003001 / %')
    add_metadata(migration_dict['moved_since_previous_year'], 'B07003', 'Population 1 year and over in the United States', acs_name)

    migration_distribution_dict = OrderedDict()
    doc['housing']['migration_distribution'] = migration_distribution_dict
    add_metadata(migration_distribution_dict, 'B07003', 'Population 1 year and over in the United States', acs_name)

    migration_distribution_dict['same_house_year_ago'] = build_item('Same house year ago', data, item_levels,
        'B07003004 B07003001 / %')
    migration_distribution_dict['moved_same_county'] = build_item('From same county', data, item_levels,
        'B07003007 B07003001 / %')
    migration_distribution_dict['moved_different_county'] = build_item('From different county', data, item_levels,
        'B07003010 B07003001 / %')
    migration_distribution_dict['moved_different_state'] = build_item('From different state', data, item_levels,
        'B07003013 B07003001 / %')
    migration_distribution_dict['moved_from_abroad'] = build_item('From abroad', data, item_levels,
        'B07003016 B07003001 / %')

    # Housing: Median Value and Distribution of Values
    data = api.get_data('B25077', comparison_geoids, acs)
    acs_name = data['release']['name']

    ownership_dict['median_value'] = build_item('Median value of owner-occupied housing units', data, item_levels,
        'B25077001')
    add_metadata(ownership_dict['median_value'], 'B25077', 'Owner-occupied housing units', acs_name)

    data = api.get_data('B25075', comparison_geoids, acs)
    acs_name = data['release']['name']

    value_distribution = OrderedDict()
    ownership_dict['value_distribution'] = value_distribution
    add_metadata(value_distribution, 'B25075', 'Owner-occupied housing units', acs_name)

    ownership_dict['total_value'] = build_item('Total value of owner-occupied housing units', data, item_levels,
        'B25075001')

    value_distribution['under_100'] = build_item('Under $100K', data, item_levels,
        'B25075002 B25075003 + B25075004 + B25075005 + B25075006 + B25075007 + B25075008 + B25075009 + B25075010 + B25075011 + B25075012 + B25075013 + B25075014 + B25075001 / %')
    value_distribution['100_to_200'] = build_item('$100K - $200K', data, item_levels,
        'B25075015 B25075016 + B25075017 + B25075018 + B25075001 / %')
    value_distribution['200_to_300'] = build_item('$200K - $300K', data, item_levels,
        'B25075019 B25075020 + B25075001 / %')
    value_distribution['300_to_400'] = build_item('$300K - $400K', data, item_levels,
        'B25075021 B25075001 / %')
    value_distribution['400_to_500'] = build_item('$400K - $500K', data, item_levels,
        'B25075022 B25075001 / %')
    value_distribution['500_to_1000000'] = build_item('$500K - $1M', data, item_levels,
        'B25075023 B25075024 + B25075001 / %')
    value_distribution['over_1000000'] = build_item('Over $1M', data, item_levels,
        'B25075025 B25075001 / %')


    # Social: Educational Attainment
    data = api.get_data('B15002', comparison_geoids, acs)
    acs_name = data['release']['name']

    attainment_dict = dict()
    doc['social']['educational_attainment'] = attainment_dict

    attainment_dict['percent_high_school_grad_or_higher'] = build_item('High school grad or higher', data, item_levels,
        'B15002011 B15002012 + B15002013 + B15002014 + B15002015 + B15002016 + B15002017 + B15002018 + B15002028 + B15002029 + B15002030 + B15002031 + B15002032 + B15002033 + B15002034 + B15002035 + B15002001 / %')
    add_metadata(attainment_dict['percent_high_school_grad_or_higher'], 'B15002', 'Population 25 years and over', acs_name)

    attainment_dict['percent_bachelor_degree_or_higher'] = build_item('Bachelor\'s degree or higher', data, item_levels,
        'B15002015 B15002016 + B15002017 + B15002018 + B15002032 + B15002033 + B15002034 + B15002035 + B15002001 / %')
    add_metadata(attainment_dict['percent_bachelor_degree_or_higher'], 'B15002', 'Population 25 years and over', acs_name)

    attainment_distribution_dict = OrderedDict()
    doc['social']['educational_attainment_distribution'] = attainment_distribution_dict
    add_metadata(attainment_distribution_dict, 'B15002', 'Population 25 years and over', acs_name)

    attainment_distribution_dict['non_high_school_grad'] = build_item('No degree', data, item_levels,
        'B15002003 B15002004 + B15002005 + B15002006 + B15002007 + B15002008 + B15002009 + B15002010 + B15002020 + B15002021 + B15002022 + B15002023 + B15002024 + B15002025 + B15002026 + B15002027 + B15002001 / %')

    attainment_distribution_dict['high_school_grad'] = build_item('High school', data, item_levels,
        'B15002011 B15002028 + B15002001 / %')

    attainment_distribution_dict['some_college'] = build_item('Some college', data, item_levels,
        'B15002012 B15002013 + B15002014 + B15002029 + B15002030 + B15002031 + B15002001 / %')

    attainment_distribution_dict['Bachelor_degree'] = build_item('Bachelor\'s', data, item_levels,
        'B15002015 B15002032 + B15002001 / %')

    attainment_distribution_dict['post_grad_degree'] = build_item('Post-grad', data, item_levels,
        'B15002016 B15002017 + B15002018 + B15002033 + B15002034 + B15002035 + B15002001 / %')

    # Social: Place of Birth
    data = api.get_data('B05002', comparison_geoids, acs)
    acs_name = data['release']['name']

    foreign_dict = dict()
    doc['social']['place_of_birth'] = foreign_dict

    foreign_dict['percent_foreign_born'] = build_item('Foreign-born population', data, item_levels,
        'B05002013 B05002001 / %')
    add_metadata(foreign_dict['percent_foreign_born'], 'B05002', 'Total population', acs_name)

    data = api.get_data('B05006', comparison_geoids, acs)
    acs_name = data['release']['name']

    place_of_birth_dict = OrderedDict()
    foreign_dict['distribution'] = place_of_birth_dict
    add_metadata(place_of_birth_dict, 'B05006', 'Foreign-born population', acs_name)

    place_of_birth_dict['europe'] = build_item('Europe', data, item_levels,
        'B05006002 B05006001 / %')
    place_of_birth_dict['asia'] = build_item('Asia', data, item_levels,
        'B05006046 B05006001 / %')
    place_of_birth_dict['africa'] = build_item('Africa', data, item_levels,
        'B05006090 B05006001 / %')
    place_of_birth_dict['oceania'] = build_item('Oceania', data, item_levels,
        'B05006115 B05006001 / %')
    place_of_birth_dict['latin_america'] = build_item('Latin America', data, item_levels,
        'B05006122 B05006001 / %')
    place_of_birth_dict['north_america'] = build_item('North America', data, item_levels,
        'B05006158 B05006001 / %')

    # Social: Percentage of Non-English Spoken at Home, Language Spoken at Home for Children, Adults
    data = api.get_data('B16001', comparison_geoids, acs)
    acs_name = data['release']['name']

    language_dict = dict()
    doc['social']['language'] = language_dict

    language_dict['percent_non_english_at_home'] = build_item('Persons with language other than English spoken at home', data, item_levels,
        'B16001001 B16001002 - B16001001 / %')
    add_metadata(language_dict['percent_non_english_at_home'], 'B16001', 'Population 5 years and over', acs_name)


    data = api.get_data('B16007', comparison_geoids, acs)
    acs_name = data['release']['name']

    language_children = OrderedDict()
    language_adults = OrderedDict()
    language_dict['children'] = language_children
    add_metadata(language_dict['children'], 'B16007', 'Population 5 years and over', acs_name)
    language_dict['adults'] = language_adults
    add_metadata(language_dict['adults'], 'B16007', 'Population 5 years and over', acs_name)

    language_children['english'] = build_item('English only', data, item_levels,
        'B16007003 B16007002 / %')
    language_adults['english'] = build_item('English only', data, item_levels,
        'B16007009 B16007015 + B16007008 B16007014 + / %')

    language_children['spanish'] = build_item('Spanish', data, item_levels,
        'B16007004 B16007002 / %')
    language_adults['spanish'] = build_item('Spanish', data, item_levels,
        'B16007010 B16007016 + B16007008 B16007014 + / %')

    language_children['indoeuropean'] = build_item('Indo-European', data, item_levels,
        'B16007005 B16007002 / %')
    language_adults['indoeuropean'] = build_item('Indo-European', data, item_levels,
        'B16007011 B16007017 + B16007008 B16007014 + / %')

    language_children['asian_islander'] = build_item('Asian/Islander', data, item_levels,
        'B16007006 B16007002 / %')
    language_adults['asian_islander'] = build_item('Asian/Islander', data, item_levels,
        'B16007012 B16007018 + B16007008 B16007014 + / %')

    language_children['other'] = build_item('Other', data, item_levels,
        'B16007007 B16007002 / %')
    language_adults['other'] = build_item('Other', data, item_levels,
        'B16007013 B16007019 + B16007008 B16007014 + / %')


    # Social: Number of Veterans, Wartime Service, Sex of Veterans
    data = api.get_data('B21002', comparison_geoids, acs)
    acs_name = data['release']['name']

    veterans_dict = dict()
    doc['social']['veterans'] = veterans_dict

    veterans_service_dict = OrderedDict()
    veterans_dict['wartime_service'] = veterans_service_dict
    add_metadata(veterans_service_dict, 'B21002', 'Civilian veterans 18 years and over', acs_name)

    veterans_service_dict['wwii'] = build_item('WWII', data, item_levels,
        'B21002009 B21002011 + B21002012 +')
    veterans_service_dict['korea'] = build_item('Korea', data, item_levels,
        'B21002008 B21002009 + B21002010 + B21002011 +')
    veterans_service_dict['vietnam'] = build_item('Vietnam', data, item_levels,
        'B21002004 B21002006 + B21002007 + B21002008 + B21002009 +')
    veterans_service_dict['gulf_1990s'] = build_item('Gulf (1990s)', data, item_levels,
        'B21002003 B21002004 + B21002005 + B21002006 +')
    veterans_service_dict['gulf_2001'] = build_item('Gulf (2001-)', data, item_levels,
        'B21002002 B21002003 + B21002004 +')

    data = api.get_data('B21001', comparison_geoids, acs)
    acs_name = data['release']['name']

    veterans_sex_dict = OrderedDict()
    veterans_dict['sex'] = veterans_sex_dict

    veterans_sex_dict['male'] = build_item('Male', data, item_levels,
        'B21001005')
    add_metadata(veterans_sex_dict['male'], 'B21001', 'Civilian population 18 years and over', acs_name)
    veterans_sex_dict['female'] = build_item('Female', data, item_levels,
        'B21001023')
    add_metadata(veterans_sex_dict['female'], 'B21001', 'Civilian population 18 years and over', acs_name)

    veterans_dict['number'] = build_item('Total veterans', data, item_levels,
        'B21001002')
    add_metadata(veterans_dict['number'], 'B21001', 'Civilian population 18 years and over', acs_name)

    veterans_dict['percentage'] = build_item('Population with veteran status', data, item_levels,
        'B21001002 B21001001 / %')
    add_metadata(veterans_dict['percentage'], 'B21001', 'Civilian population 18 years and over', acs_name)

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

    for d in dict_list:
        raw = {}
        enhanced = {}
        geo_value = d['values']['this']
        num_comparatives = 2

        # create our containers for transformation
        for obj in ['values', 'error', 'numerators', 'numerator_errors']:
            if not obj in d:
                raw[obj] = {
                    'this': 0,
                    'province': 0,
                    'country': 0,
                }
            else:
                raw[obj] = d[obj]
            enhanced[obj] = OrderedDict()
        enhanced['index'] = OrderedDict()
        enhanced['error_ratio'] = OrderedDict()
        comparative_sumlevs = []

        # enhance
        for sumlevel in ['this', 'province', 'country']:

            # favor CBSA over county, but we don't want both
            if sumlevel == 'county' and 'CBSA' in enhanced['values']:
                continue

            # add the index value for comparatives
            if sumlevel in raw['values']:
                enhanced['values'][sumlevel] = raw['values'][sumlevel]
                enhanced['index'][sumlevel] = get_ratio(geo_value, raw['values'][sumlevel])

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
    #sumlevel = api_data['geography']['this']['sumlevel']
    #api_data['geography']['this']['sumlevel_name'] = SUMMARY_LEVEL_DICT[sumlevel]['name']
    #api_data['geography']['this']['short_geoid'] = api_data['geography']['this']['full_geoid'].split('US')[1]
    #try:
    #    release_bits = api_data['geography']['census_release'].split(' ')
    #    api_data['geography']['census_release_year'] = release_bits[1][2:]
    #    api_data['geography']['census_release_level'] = release_level = release_bits[2][:1]
    #except:
        pass

    # ProPublica Opportunity Gap app doesn't include smallest schools.
    # Originally, this also enabled links to Census narrative profiles,
    # but those disappeared.
    #if release_level in ['1','3'] and sumlevel in ['950', '960', '970']:
    #    api_data['geography']['this']['show_extra_links'] = True

    return api_data

if __name__ == '__main__':
    print json.dumps(geo_profile('04000US55'), indent=2)
