from collections import OrderedDict

from sqlalchemy import func

from api.models import get_model_from_fields
from api.utils import get_session, LocationNotFound

from .utils import (collapse_categories, calculate_median, get_summary_geo_info,
                    merge_dicts, group_remainder, add_metadata, get_stat_data, get_objects_by_geo)


PROFILE_SECTIONS = (
    'demographics',  # population group, age group in 5 years, age in completed years
    'economics',  # individual monthly income, type of sector, official employment status
    'service_delivery',  # source of water, refuse disposal
    'education',  # highest educational level
    'households',  # household heads, etc.
)

# Education categories

COLLAPSED_EDUCATION_CATEGORIES = {
    'Gade 0': 'Some primary',
    'Grade 1 / Sub A': 'Some primary',
    'Grade 2 / Sub B': 'Some primary',
    'Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI': 'Some primary',
    'Grade 4 / Std 2': 'Some primary',
    'Grade 5 / Std 3/ABET 2': 'Some primary',
    'Grade 6 / Std 4': 'Some primary',
    'Grade 7 / Std 5/ ABET 3': 'Primary',
    'Grade 8 / Std 6 / Form 1': 'Some secondary',
    'Grade 9 / Std 7 / Form 2/ ABET 4': 'Some secondary',
    'Grade 10 / Std 8 / Form 3': 'Some secondary',
    'Grade 11 / Std 9 / Form 4': 'Some secondary',
    'Grade 12 / Std 10 / Form 5': 'Grade 12 (Matric)',
    'NTC I / N1/ NIC/ V Level 2': 'Some secondary',
    'NTC II / N2/ NIC/ V Level 3': 'Some secondary',
    'NTC III /N3/ NIC/ V Level 4': 'Grade 12 (Matric)',
    'N4 / NTC 4': None,
    'N5 /NTC 5': None,
    'N6 / NTC 6': 'Undergrad',
    'Certificate with less than Grade 12 / Std 10': 'Some secondary',
    'Diploma with less than Grade 12 / Std 10': 'Some secondary',
    'Certificate with Grade 12 / Std 10': 'Grade 12 (Matric)',
    'Diploma with Grade 12 / Std 10': 'Grade 12 (Matric)',
    'Higher Diploma': 'Undergrad',
    'Post Higher Diploma Masters; Doctoral Diploma': 'Post-grad',
    'Bachelors Degree': 'Undergrad',
    'Bachelors Degree and Post graduate Diploma': 'Post-grad',
    'Honours degree': 'Post-grad',
    'Higher Degree Masters / PhD': 'Post-grad',
    'Other': 'Other',
    'No schooling': 'None',
    'Unspecified': None,
    'Not applicable': None,
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

# Age categories

COLLAPSED_AGE_CATEGORIES = {
    '00 - 04': '0-9',
    '05 - 09': '0-9',
    '10 - 14': '10-19',
    '15 - 19': '10-19',
    '20 - 24': '20-29',
    '25 - 29': '20-29',
    '30 - 34': '30-39',
    '35 - 39': '30-39',
    '40 - 44': '40-49',
    '45 - 49': '40-49',
    '50 - 54': '50-59',
    '55 - 59': '50-59',
    '60 - 64': '60-69',
    '65 - 69': '60-69',
    '70 - 74': '70-79',
    '75 - 79': '70-79',
    '80 - 84': '80+',
    '85+': '80+',
}

# Income categories

COLLAPSED_INCOME_CATEGORIES = OrderedDict()
COLLAPSED_INCOME_CATEGORIES["No income"] = "R0"
COLLAPSED_INCOME_CATEGORIES["R 1 - R 400"] = "Under R400"
COLLAPSED_INCOME_CATEGORIES["R 401 - R 800"] = "R400 - R800"
COLLAPSED_INCOME_CATEGORIES["R 801 - R 1 600"] = "R800 - R2k"
COLLAPSED_INCOME_CATEGORIES["R 1 601 - R 3 200"] = "R2k - R3k"
COLLAPSED_INCOME_CATEGORIES["R 3 201 - R 6 400"] = "R3k - R6k"
COLLAPSED_INCOME_CATEGORIES["R 6 401 - R 12 800"] = "R6k - R13k"
COLLAPSED_INCOME_CATEGORIES["R 12 801 - R 25 600"] = "R13k - R26k"
COLLAPSED_INCOME_CATEGORIES["R 25 601 - R 51 200"] = "R26k - R51k"
COLLAPSED_INCOME_CATEGORIES["R 51 201 - R 102 400"] = "R51k - R102k"
COLLAPSED_INCOME_CATEGORIES["R 102 401 - R 204 800"] = "Over R102k"
COLLAPSED_INCOME_CATEGORIES["R 204 801 or more"] = "Over R102k"
COLLAPSED_INCOME_CATEGORIES["Unspecified"] = "Unspecified"

# Sanitation categories

SHORT_WATER_SOURCE_CATEGORIES = {
    "Regional/local water scheme (operated by municipality or other water services provider)": "Service provider",
    "Water tanker": "Tanker",
    "Spring": "Spring",
    "Other": "Other",
    "Dam/pool/stagnant water": "Dam",
    "River/stream": "River",
    "Not applicable": "N/A",
    "Borehole": "Borehole",
    "Rain water tank": "Rainwater tank",
    "Water vendor": "Vendor",
}

SHORT_REFUSE_DISPOSAL_CATEGORIES = {
    "Removed by local authority/private company less often": "Service provider (not regularly)",
    "Own refuse dump": "Own dump",
    "Communal refuse dump": "Communal dump",
    "Other": "Other",
    "Not applicable": "N/A",
    "No rubbish disposal": "None",
    "Unspecified": "Unspecified",
    "Removed by local authority/private company at least once a week": "Service provider (regularly)",
}

COLLAPSED_TOILET_CATEGORIES = {
    "Flush toilet (connected to sewerage system)": "Flush toilet",
    "Flush toilet (with septic tank)": "Flush toilet",
    "Chemical toilet": "Chemical toilet",
    "Pit toilet with ventilation (VIP)": "Pit toilet",
    "Pit toilet without ventilation": "Pit toilet",
    "Bucket toilet": "Bucket toilet",
    "Other": "Other",
    "None": "None",
    "Unspecified": "Unspecified",
    "Not applicable": "N/A",
}

HOUSEHOLD_GOODS_RECODE = {
    'cell phone': 'Cellphone',
    'dvd player': 'DVD player',
    'electric/gas stove': 'Stove',
    'landline/telephone': 'Telephone',
    'motor-car': 'Car',
    'radio': 'Radio',
    'refrigerator': 'Fridge',
    'satellite television': 'Satellite TV',
    'television': 'TV',
    'vacuum cleaner': 'Vacuum cleaner',
    'washing machine': 'Washing machine',
}


def get_census_profile(geo_code, geo_level):
    session = get_session()

    try:
        geo_summary_levels = get_summary_geo_info(geo_code, geo_level, session)
        data = {}

        for section in PROFILE_SECTIONS:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo_code, geo_level, session)

                # get profiles for province and/or country
                for level, code in geo_summary_levels:
                    # merge summary profile into current geo profile
                    merge_dicts(data[section], func(code, level, session), level)

        # tweaks to make the data nicer
        # show 3 largest groups on their own and group the rest as 'Other'
        group_remainder(data['service_delivery']['water_source_distribution'])
        group_remainder(data['service_delivery']['refuse_disposal_distribution'])
        group_remainder(data['service_delivery']['toilet_facilities_distribution'], 5)
        group_remainder(data['demographics']['language_distribution'], 7)
        
        return data

    finally:
        session.close()


def get_demographics_profile(geo_code, geo_level, session):
    # population group
    pop_dist_data, total_pop = get_stat_data(
            ['population group'], geo_level, geo_code, session)

    # language
    language_data, _ = get_stat_data(
            ['language'], geo_level, geo_code, session, order_by='-total')
    language_most_spoken = language_data[language_data.keys()[0]]

    # age groups
    age_dist_data, total_age = get_stat_data(
            ['age groups in 5 years'], geo_level, geo_code, session,
            recode=COLLAPSED_AGE_CATEGORIES,
            key_order=('0-9', '10-19',
                       '20-29', '30-39',
                       '40-49', '50-59',
                       '60-69', '70-79',
                       '80+'))

    # sex
    db_model_sex = get_model_from_fields(['gender'], geo_level)
    query = session.query(func.sum(db_model_sex.total)) \
                   .filter(db_model_sex.gender == 'Male')
    geo_attr = '%s_code' % geo_level
    query = query.filter(getattr(db_model_sex, geo_attr) == geo_code)
    total_male = query.one()[0]

    sex_data = OrderedDict((  # census data refers to sex as gender
            ('Female', {
                "name": "Female",
                "values": {"this": round((total_pop - total_male) / total_pop * 100, 2)},
                "numerators": {"this": total_male},
            }),
            ('Male', {
                "name": "Male",
                "values": {"this": round(total_male / total_pop * 100, 2)},
                "numerators": {"this": total_pop - total_male},
            }),
        ))

    add_metadata(sex_data, db_model_sex)

    final_data = {
        'language_distribution': language_data,
        'language_most_spoken': language_most_spoken,
        'population_group_distribution': pop_dist_data,
        'age_group_distribution': age_dist_data,
        'sex_ratio': sex_data,
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }}

    # median age/age category
    db_model_age = get_model_from_fields(['age in completed years'], geo_level)
    objects = sorted(
        get_objects_by_geo(db_model_age, geo_code, geo_level, session),
        key=lambda x: int(getattr(x, 'age in completed years'))
    )
    # median age
    median = calculate_median(objects, 'age in completed years')
    final_data['median_age'] = {
        "name": "Median age",
        "values": {"this": median},
    }
    # age category
    under_18 = 0.0
    over_or_65 = 0.0
    between_18_64 = 0.0
    total = 0.0
    for obj in objects:
        age = int(getattr(obj, 'age in completed years'))
        total += obj.total
        if age < 18:
            under_18 += obj.total
        elif age >= 65:
            over_or_65 += obj.total
        else:
            between_18_64 += obj.total

    age_dist = OrderedDict((
        ("under_18", {
            "name": "Under 18",
            "values": {"this": round(under_18 / total * 100, 2)}
        }),
        ("18_to_64", {
            "name": "18 to 64",
            "values": {"this": round(between_18_64 / total * 100, 2)}
        }),
        ("65_and_over", {
            "name": "65 and over",
            "values": {"this": round(over_or_65 / total * 100, 2)}
        })
    ))

    add_metadata(age_dist, db_model_age)

    final_data['age_category_distribution'] = age_dist

    return final_data


def get_households_profile(geo_code, geo_level, session):
    # head of household
    # gender
    db_model_gender = get_model_from_fields(['gender of head of household'],
                                            geo_level)
    objects = get_objects_by_geo(db_model_gender, geo_code, geo_level, session)
    total_households = 0.0
    female_heads = 0.0
    for obj in objects:
        total_households += obj.total

        gender = getattr(obj, 'gender of head of household')
        if gender == 'Unspecified':
            continue
        if gender == 'Female':
            female_heads += obj.total

    # age
    db_model_age = get_model_from_fields(['age of household head'],
                                            geo_level)
    objects = get_objects_by_geo(db_model_age, geo_code, geo_level, session)
    total_under_20 = 0.0
    for obj in objects:
        age = getattr(obj, 'age of household head')
        if age in ['10 - 14', '15 - 19']:
            total_under_20 += obj.total

    # tenure
    db_model_tenure = get_model_from_fields(['tenure status'],
                                            geo_level)
    objects = get_objects_by_geo(db_model_tenure, geo_code, geo_level, session)
    tenure_data = {}
    owned = 0.0
    for obj in objects:
        tenure = getattr(obj, 'tenure status')
        if tenure.startswith('Owned'):
            owned += obj.total
        tenure_data[tenure] = {
            "name": tenure,
            "values": {"this": round(obj.total / total_households * 100, 2)},
            "numerators": {"this": obj.total},
        }

    add_metadata(tenure_data, db_model_tenure)

    # type of dwelling
    db_model_dwelling = get_model_from_fields(['type of dwelling'],
                                            geo_level)
    objects = get_objects_by_geo(db_model_dwelling, geo_code, geo_level, session)
    informal = 0.0
    for obj in objects:
        dwelling = getattr(obj, 'type of dwelling')
        if dwelling.startswith('Informal'):
            informal += obj.total


    # household goods
    household_goods, _ = get_stat_data(
            ['household goods'], geo_level, geo_code, session,
            total=total_households,
            recode=HOUSEHOLD_GOODS_RECODE,
            key_order=sorted(HOUSEHOLD_GOODS_RECODE.values()))

    return {'total_households': {
                'name': 'Households',
                'values': {'this': total_households},
                },
            'owned': {
                'name': 'Households fully owned or being paid off',
                'values': {'this': round(owned / total_households * 100, 2)},
                'numerators': {'this': owned},
                },
            'informal': {
                'name': 'Households that are informal dwellings (shacks)',
                'values': {'this': round(informal / total_households * 100, 2)},
                'numerators': {'this': informal},
                },
            'tenure_distribution': tenure_data,
            'household_goods': household_goods,
            'head_of_household': {
                'female': {
                    'name': 'Households with women as their head',
                    'values': {'this': round(female_heads / total_households * 100, 2)},
                    'numerators': {'this': female_heads},
                    },
                'under_20': {
                    'name': 'Households with heads under 20 years old',
                    'values': {'this': total_under_20},
                    }
                },
           }


def get_economics_profile(geo_code, geo_level, session):
    # income
    income_dist_data, total_income = get_stat_data(
            ['employed individual monthly income'], geo_level, geo_code, session,
            exclude=['Not applicable'],
            recode=COLLAPSED_INCOME_CATEGORIES,
            key_order=COLLAPSED_INCOME_CATEGORIES.values())

    # employment status
    employ_status, total_workers = get_stat_data(
            ['official employment status'], geo_level, geo_code, session,
            exclude=['Age less than 15 years', 'Not applicable'])

    # sector
    sector_dist_data, _ = get_stat_data(
            ['type of sector'], geo_level, geo_code, session,
            exclude=['Not applicable'], exclude_zero=True)

    # access to internet
    internet_access_dist, total_with_access = get_stat_data(
            ['access to internet'], geo_level, geo_code, session, exclude=['No access to internet'])
    _, total_without_access = get_stat_data(
            ['access to internet'], geo_level, geo_code, session, only=['No access to internet'])
    total_households = total_with_access + total_without_access

    return {'individual_income_distribution': income_dist_data,
            'employment_status': employ_status,
            'sector_type_distribution': sector_dist_data,
            'internet_access_distribution': internet_access_dist,
            'internet_access': {
                'name': 'Households with internet access',
                'values': {'this': round(total_with_access / total_households * 100, 2)},
                'numerators': {'this': total_with_access},
                }
            }


def get_service_delivery_profile(geo_code, geo_level, session):
    # water source
    db_model_wsrc = get_model_from_fields(['source of water'], geo_level)
    objects = get_objects_by_geo(db_model_wsrc, geo_code, geo_level, session,
                                 order_by='-total')
    water_src_data = OrderedDict()
    total_wsrc = 0.0
    total_water_sp = 0.0
    for obj in objects:
        attr = getattr(obj, 'source of water')
        src = SHORT_WATER_SOURCE_CATEGORIES[attr]
        water_src_data[src] = {
            "name": src,
            "numerators": {"this": obj.total},
        }
        total_wsrc += obj.total
        if attr.startswith('Regional/local water scheme'):
            total_water_sp += obj.total

    # refuse disposal
    db_model_ref = get_model_from_fields(['refuse disposal'], geo_level)
    objects = get_objects_by_geo(db_model_ref, geo_code, geo_level, session,
                                 order_by='-total')
    refuse_disp_data = OrderedDict()
    total_ref = 0.0
    total_ref_sp = 0.0
    for obj in objects:
        attr = getattr(obj, 'refuse disposal')
        disp = SHORT_REFUSE_DISPOSAL_CATEGORIES[attr]
        refuse_disp_data[disp] = {
            "name": disp,
            "numerators": {"this": obj.total},
        }
        total_ref += obj.total
        if attr.startswith('Removed by local authority'):
            total_ref_sp += obj.total

    # electricity
    elec_attrs = ['electricity for cooking',
                  'electricity for heating',
                  'electricity for lighting']
    db_model_elec = get_model_from_fields(elec_attrs, geo_level)
    objects = get_objects_by_geo(db_model_elec, geo_code, geo_level, session)
    total_elec = 0.0
    total_some_elec = 0.0
    elec_access_data = {
        'total_all_elec': {
            "name": "Have electricity for everything",
            "numerators": {"this": 0.0},
        },
        'total_some_not_all_elec': {
            "name": "Have electricity for some things",
            "numerators": {"this": 0.0},
        },
        'total_no_elec': {
            "name": "No electricity",
            "numerators": {"this": 0.0},
        }
    }
    for obj in objects:
        total_elec += obj.total
        has_some = False
        has_all = True
        for attr in elec_attrs:
            val = not getattr(obj, attr).startswith('no ')
            has_all = has_all and val
            has_some = has_some or val
        if has_some:
            total_some_elec += obj.total
        if has_all:
            elec_access_data['total_all_elec']['numerators']['this'] += obj.total
        elif has_some:
            elec_access_data['total_some_not_all_elec']['numerators']['this'] += obj.total
        else:
            elec_access_data['total_no_elec']['numerators']['this'] += obj.total

    # toilets
    db_model_toilet = get_model_from_fields(['toilet facilities'], geo_level)
    objects = get_objects_by_geo(db_model_toilet, geo_code, geo_level, session,
                                 order_by='-total')
    toilet_data = OrderedDict()
    total_toilet = 0.0
    total_flush_toilet = 0.0
    for obj in objects:
        name = getattr(obj, 'toilet facilities')
        toilet_data[name] = {
            "name": name,
            "numerators": {"this": obj.total},
        }
        total_toilet += obj.total
        if name.startswith('Flush') or name.startswith('Chemical'):
            total_flush_toilet += obj.total

    total_no_toilet = toilet_data['None']['numerators']['this']
    toilet_data = collapse_categories(toilet_data,
                                      COLLAPSED_TOILET_CATEGORIES,
                                      key_order=(
                                        'Flush toilet', 'Chemical toilet',
                                        'Pit toilet', 'Bucket toilet',
                                        'Other', 'None', 'Unspecified', 'N/A'))

    for data, total in zip((water_src_data, refuse_disp_data, elec_access_data, toilet_data),
                           (total_wsrc, total_ref, total_elec, total_toilet)):
        for fields in data.values():
            fields["values"] = {"this": round(fields["numerators"]["this"]
                                              / total * 100, 2)}

    add_metadata(water_src_data, db_model_wsrc)
    add_metadata(refuse_disp_data, db_model_ref)
    add_metadata(elec_access_data, db_model_elec)
    add_metadata(toilet_data, db_model_toilet)

    return {'water_source_distribution': water_src_data,
            'percentage_water_from_service_provider': {
                "name": "Are getting water from a regional or local service provider",
                "numerators": {"this": total_water_sp},
                "values": {"this": round(total_water_sp / total_wsrc * 100, 2)},
            },
            'refuse_disposal_distribution': refuse_disp_data,
            'percentage_ref_disp_from_service_provider': {
                "name": "Are getting refuse disposal from a local authority or private company",
                "numerators": {"this": total_ref_sp},
                "values": {"this": round(total_ref_sp / total_ref * 100, 2)},
            },
            'percentage_electricity_access': {
                "name": "Have electricity for at least one of cooking, heating or lighting",
                "numerators": {"this": total_some_elec},
                "values": {"this": round(total_some_elec / total_elec * 100, 2)}
            },
            'electricity_access_distribution': elec_access_data,
            'percentage_flush_toilet_access': {
                "name": "Have access to flush or chemical toilets",
                "numerators": {"this": total_flush_toilet},
                "values": {"this": round(total_flush_toilet / total_toilet * 100, 2)}
            },
            'percentage_no_toilet_access': {
                "name": "Have no access to any toilets",
                "numerators": {"this": total_no_toilet},
                "values": {"this": round(total_no_toilet / total_toilet * 100, 2)}
            },
            'toilet_facilities_distribution': toilet_data,
    }


def get_education_profile(geo_code, geo_level, session):
    db_model = get_model_from_fields(['highest educational level 20 and older'], geo_level)
    objects = get_objects_by_geo(db_model, geo_code, geo_level, session)

    edu_dist_data = {}
    get_or_higher = 0.0
    fet_or_higher = 0.0
    total = 0.0
    for i, obj in enumerate(objects):
        category_val = getattr(obj, 'highest educational level 20 and older')
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
        }
    edu_dist_data = collapse_categories(edu_dist_data,
                                        COLLAPSED_EDUCATION_CATEGORIES,
                                        key_order=('None', 'Other',
                                                   'Some primary', 'Primary',
                                                   'Some secondary',
                                                   'Grade 12 (Matric)',
                                                   'Undergrad',
                                                   'Post-grad'))
    edu_split_data = {
        'percent_get_or_higher': {
            "name": "Completed Grade 9 or higher",
            "numerators": {"this": get_or_higher},
        },
        'percent_fet_or_higher': {
            "name": "Completed Matric or higher",
            "numerators": {"this": fet_or_higher},
        }
    }
    # calculate percentages
    for data in (edu_dist_data, edu_split_data):
        for fields in data.values():
            fields["values"] = {"this": round(fields["numerators"]["this"]
                                              / total * 100, 2)}

    edu_dist_data['metadata'] = {'universe': 'Invididuals aged 20 and older'}
    edu_split_data['metadata'] = {'universe': 'Invididuals aged 20 and older'}

    add_metadata(edu_dist_data, db_model)

    return {'educational_attainment_distribution': edu_dist_data,
            'educational_attainment': edu_split_data}
