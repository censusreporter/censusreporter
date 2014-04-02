from .models import get_model_from_fields
from .utils import get_session


class LocationNotFound(Exception):
    pass


PROFILE_SECTIONS = (
    'demographics',  # population group, age group in 5 years
    'economics',  # individual monthly income, type of sector
    'sanitation',  # source of water, refuse disposal
    'education',  # highest educational level
)

COLLAPSED_EDUCATION_CATEGORIES = {
    'Gade 0': '<= Gr 3',
    'Grade 1 / Sub A': '<= Gr 3',
    'Grade 2 / Sub B': '<= Gr 3',
    'Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI': '<= Gr 3',
    'Grade 4 / Std 2': 'GET',
    'Grade 5 / Std 3/ABET 2': 'GET',
    'Grade 6 / Std 4': 'GET',
    'Grade 7 / Std 5/ ABET 3': 'GET',
    'Grade 8 / Std 6 / Form 1': 'GET',
    'Grade 9 / Std 7 / Form 2/ ABET 4': 'GET',
    'Grade 10 / Std 8 / Form 3': 'FET',
    'Grade 11 / Std 9 / Form 4': 'FET',
    'Grade 12 / Std 10 / Form 5': 'FET',
    'NTC I / N1/ NIC/ V Level 2': 'FET',
    'NTC II / N2/ NIC/ V Level 3': 'FET',
    'NTC III /N3/ NIC/ V Level 4': 'FET',
    'N4 / NTC 4': 'FET',
    'N5 /NTC 5': 'HET',
    'N6 / NTC 6': 'HET',
    'Certificate with less than Grade 12 / Std 10': 'FET',
    'Diploma with less than Grade 12 / Std 10': 'FET',
    'Certificate with Grade 12 / Std 10': 'HET',
    'Diploma with Grade 12 / Std 10': 'HET',
    'Higher Diploma': 'HET',
    'Post Higher Diploma Masters; Doctoral Diploma': 'Post-grad',
    'Bachelors Degree': 'HET',
    'Bachelors Degree and Post graduate Diploma': 'Post-grad',
    'Honours degree': 'Post-grad',
    'Higher Degree Masters / PhD': 'Post-grad',
    'Other': 'Other',
    'No schooling': 'None',
    'Unspecified': 'Other',
    'Not applicable': 'Other',
}
EDUCATION_GET_OR_HIGHER = set([
    'Grade 9 / Std 7 / Form 2/ ABET 4',
    'Grade 10 / Std 8 / Form 3',
    'Grade 11 / Std 9 / Form 4',
    'Grade 12 / Std 10 / Form 5',
    'NTC I / N1/ NIC/ V Level 2',
    'NTC II / N2/ NIC/ V Level 3',
    'NTC III /N3/ NIC/ V Level 4',
    'N4 / NTC 4',
    'N5 /NTC 5',
    'N6 / NTC 6',
    'Certificate with less than Grade 12 / Std 10',
    'Diploma with less than Grade 12 / Std 10',
    'Certificate with Grade 12 / Std 10',
    'Diploma with Grade 12 / Std 10',
    'Higher Diploma',
    'Post Higher Diploma Masters; Doctoral Diploma',
    'Bachelors Degree',
    'Bachelors Degree and Post graduate Diploma',
    'Honours degree',
    'Higher Degree Masters / PhD',
])
EDUCATION_FET_OR_HIGHER = set([
    'Grade 12 / Std 10 / Form 5',
    'N4 / NTC 4',
    'N5 /NTC 5',
    'N6 / NTC 6',
    'Certificate with Grade 12 / Std 10',
    'Diploma with Grade 12 / Std 10',
    'Higher Diploma',
    'Post Higher Diploma Masters; Doctoral Diploma',
    'Bachelors Degree',
    'Bachelors Degree and Post graduate Diploma',
    'Honours degree',
    'Higher Degree Masters / PhD',
])



def get_profile(geo_code, geo_level):
    session = get_session()
    data = {}
    for section in PROFILE_SECTIONS:
        function_name = 'get_%s_profile' % section
        if function_name in globals():
            data[section] = globals()[function_name](geo_code, geo_level, session)

    data['geography'] = {
        'this': {},
        'parents': {},
    }
    
    session.close()
    return data 

'''
def get_demographics_profile(geo_code, geo_level, session):
    pass


def get_economics_profile(geo_code, geo_level, session):
    pass


def get_sanitation_profile(geo_code, geo_level, session):
    pass
'''


def get_education_profile(geo_code, geo_level, session):
    geo_attr = '%s_code' % geo_level
    db_model = get_model_from_fields(['highest educational level'], geo_level)
    query = session.query(db_model) \
                   .filter(getattr(db_model, geo_attr) == geo_code) \
                   .order_by(getattr(db_model, 'highest educational level'))
    if not query:
        raise LocationNotFound("%s with code '%s' not found"
                               % (geo_level, geo_code))

    edu_dist_data = {}
    get_or_higher = 0.0
    fet_or_higher = 0.0
    total = 0.0
    for i, obj in enumerate(query):
        category_val = getattr(obj, 'highest educational level')
        # increment counters
        total += obj.total
        if category_val in EDUCATION_GET_OR_HIGHER:
            get_or_higher += obj.total
            if category_val in EDUCATION_FET_OR_HIGHER:
                fet_or_higher += obj.total
        # add data points for category
        edu_dist_data[str(i)] = {
            "name": category_val,
            "numerators": {"this": obj.total},
            "error": {"this": 0.0},
            "numerator_errors": {"this": 0.0},
        }
    edu_dist_data = collapse_categories(edu_dist_data, COLLAPSED_EDUCATION_CATEGORIES)
    edu_split_data = {
        'percent_get_or_higher': {
            "name": "Completed GET or higher",
            "numerators": {"this": get_or_higher},
            "error": {"this": 0.0},
            "numerator_errors": {"this": 0.0},
        },
        'percent_fet_or_higher': {
            "name": "Completed FET or higher",
            "numerators": {"this": fet_or_higher},
            "error": {"this": 0.0},
            "numerator_errors": {"this": 0.0},
        }
    }
    # calculate percentages
    for data in (edu_dist_data, edu_split_data):
        for key, vals in data.iteritems():
            vals["values"] = {"this": (round(vals["numerators"]["this"]
                                       / total * 100, 2))}

    return {'educational_attainment_distribution': edu_dist_data,
            'educational_attainment': edu_split_data}


def collapse_categories(data, categories):
    collapsed = {}

    # level 1: iterate over categories in data
    for fields in data.values():
        new_category_name = categories[fields['name']]
        collapsed.setdefault(new_category_name, {'name': new_category_name})
        new_fields = collapsed[new_category_name]
        # level 2: iterate over measurement objects in category
        for measurement_key, measurement_objects in fields.iteritems():
            if measurement_key == 'name':
                continue
            new_fields.setdefault(measurement_key, {})
            new_measurement_objects = new_fields[measurement_key]
            # level 3: iterate of data points in measure objects
            for datapoint_key, datapoint_value in measurement_objects.iteritems():
                try:
                    new_measurement_objects.setdefault(datapoint_key, 0)
                    new_measurement_objects[datapoint_key] += float(datapoint_value)
                except (ValueError, TypeError):
                    new_measurement_objects[datapoint_key] = datapoint_value

    return collapsed
