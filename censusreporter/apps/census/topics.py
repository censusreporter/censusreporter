# -*- coding: UTF-8 -*-
## TOPICS ##

'''
Hey, it's a CMS!

Title/slug/description will be used to create the list page at /topics/

Title/description will also be used to create the header on the detail page
at /topics/{{ slug }}/. The contents of an individual page should go inside
{{ template_name }}, which belongs in /templates/topics.

Screenshots of survey questions should be placed in /static/img/questions,
and the filenames listed in {{ question_images }} for each entry.

A bonus thing to keep track of -- the TopicParser in census-api which loads topic text into the 
text search index expects all information to be in one of two <section> elements, 
with specific IDs: 'topic-overview' or 'topic-elsewhere'.  asides are not indexed, nor is other 
content on the page. We could probably change that to just index all sections but 
right now, that's how it is.

Possible topics for matching table metadata:

    'topics': ['age', 'ancestry',  'children',  'citizenship',  'commute',  'computer',  'costs and value',  'cvap',  'disability',  'education',  'employment',  'families',  'family type',  'fertility',  'grandparents',  'group quarters',  'health insurance',  'housing',  'income',  'internet',  'language',  'migration',  'mortgage',  'occupancy',  'physical characteristics',  'place of birth',  'poverty',  'public assistance',  'race',  'roommates',  'seniors',  'sex',  'technical',  'tenure',  'veterans']
    
    
'''

# missing from https://www.census.gov/acs/www/about/why-we-ask-each-question/index.php
# Acreage and Agricultural Sales
# Name

TOPICS_LIST = [

    {
        'title': 'Geography',
        'slug': 'geography',
        'description': "Geography is fundamental to the Census Bureau's process of tabulating data. Here are the key concepts you need to understand.",
        'template_name': 'geography.html',
        'group': 'about_census'
    },

    {
        'title': 'Table Codes',
        'slug': 'table-codes',
        'description': 'While Census Reporter hopes to save you from the details, you may be interested to understand some of the rationale behind American Community Survey table identifiers.',
        'template_name': 'table-codes.html',
        'group': 'about_census'
    },


    {
        'title': 'Getting Started',
        'slug': 'getting-started',
        'description': "The Census is a big subject and there's a lot to learn, but you don't have to learn it all at once. Here's some help knowing the lay of the land.",
        'short_description': "The Census is a big subject and there's a lot to learn, but you don't have to learn it all at once.",
        'template_name': 'getting_started.html',
        'priority': 0,
        'group': 'about_census'
    },

    {
        'title': 'About the Census',
        'slug': 'about-census',
        'description': "A brief overview of the many data products produced by the Census Bureau, most of which are not available through Census Reporter.",
        'short_description': "A brief overview of the many data products produced by the Census Bureau, most of which are not available through Census Reporter.",
        'template_name': 'about_census.html',
        'group': 'about_census'
    },

    {
        'title': 'Age and Sex',
        'slug': 'age-sex',
        'topics': ['sex', 'children', 'age', 'seniors'],
        'description': 'How the Census approaches the topics of age and sex.',
        'template_name': 'age_sex.html',
        'question_images': ['sex2_q3.png', 'age_q4.png'],
        'more_info_links': [
            ('Why We Ask: Age and Date of Birth','https://www.census.gov/acs/www/about/why-we-ask-each-question/age/'),
            ('Why We Ask: Sex','https://www.census.gov/acs/www/about/why-we-ask-each-question/sex/')
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Ancestry',
        'slug': 'ancestry',
        'topics': ['ancestry'],
        'description': 'The ACS gathers data on self-reported ancestry, whether or not respondents were born in the United States.',
        'template_name': 'ancestry.html',
        'question_images': ['ancestry_600_q13.png'],
        'more_info_links': [
            ('Why We Ask: Ancestry','https://www.census.gov/acs/www/about/why-we-ask-each-question/ancestry/')
        ],
        'group': 'topical_help'
    },


    {
        'title': 'Children',
        'slug': 'children',
        'topics': ['children', 'fertility'],
        'description': 'Tables concerning Children. Helpful to consider in relation to Families.',
        'template_name': 'children.html',
        'question_images': ['2_relationship.png', '25_fertility_1.png'],
        'more_info_links': [
            ('Why We Ask: Family / Relationship to Householder','https://www.census.gov/acs/www/about/why-we-ask-each-question/relationship/'),
            ('Why We Ask: Fertility','https://www.census.gov/acs/www/about/why-we-ask-each-question/fertility/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Citizenship',
        'slug': 'citizenship',
        'topics': ['citizenship', 'cvap', 'place of birth'],
        'description': 'Since its creation, the ACS has asked questions about citizenship, place of birth, and year of entry into the U.S.',
        'template_name': 'citizenship.html',
        'question_images': ['citizenship_q7.png','citizenship_q8.png','citizenship_q9.png'],
        'more_info_links': [
            ('Why We Ask: Place of Birth, Citizenship, Year of Entry','https://www.census.gov/acs/www/about/why-we-ask-each-question/citizenship/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Commute',
        'slug': 'commute',
        'topics': ['employment', 'commute'],
        'description': 'Commute data from the American Community Survey.',
        'template_name': 'commute.html',
        'question_images': ['31_commute_1.png', '32_35_commute_2.png', '12_vehicles.png'],
        'more_info_links': [
            ('Why We Ask: Commuting / Journey to Work','https://www.census.gov/acs/www/about/why-we-ask-each-question/commuting/'),
            ('Why We Ask: Vehicles Available','https://www.census.gov/acs/www/about/why-we-ask-each-question/vehicles/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Computers and Internet',
        'slug': 'computer-internet',
        'topics': ['computer', 'internet'],
        'description': 'Data on computer use and internet access from the ACS, and why it’s collected.',
        'template_name': 'computer-internet.html',
        'question_images': ['9_10_11_computer.png',],
        'more_info_links': [
            ('Why We Ask: Computer and Internet Use','https://www.census.gov/acs/www/about/why-we-ask-each-question/computer/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Disability',
        'slug': 'disability',
        'topics': ['disability'],
        'description': 'The ACS collects data on six different kinds of difficulty to help communities provide adequate housing, health care, and assistance',
        'template_name': 'disability.html',
        'question_images': ['18_disability_1.png','19_disability_2.png','20_disability_3.png',],
        'more_info_links': [
            ('Why We Ask: Disability','https://www.census.gov/acs/www/about/why-we-ask-each-question/disability/'),
        ],
        'group': 'topical_help'
    },
    {
        'title': 'Education',
        'slug': 'education',
        'topics': ['education'],
        'description': 'The ACS collects data both about people currently enrolled in school, as well as the highest level attained by those no longer enrolled.',
        'template_name': 'education.html',
        'question_images': ['school_q10.png', 'education_q11.png','education_q12.png',],
        'more_info_links': [
            ('Why We Ask: School Enrollment','https://www.census.gov/acs/www/about/why-we-ask-each-question/school/'),
            ('Why We Ask: Educational Attainment, Undergraduate Field of Degree','https://www.census.gov/acs/www/about/why-we-ask-each-question/education/'),
        ],
        'group': 'topical_help'
    },

       {
        'title': 'Families',
        'slug': 'families',
        'topics': ['family type', 'families', 'roommates'],
        'description': 'Families are an important topic in the ACS and a key framework for considering many kinds of data.',
        'template_name': 'families.html',
        'question_images': ['2_relationship.png',],
        'more_info_links': [
            ('Why We Ask: Family / Relationship to Householder','https://www.census.gov/acs/www/about/why-we-ask-each-question/relationship/'),
            ('Why We Ask: Marital Status / Marital History','https://www.census.gov/acs/www/about/why-we-ask-each-question/marital/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Group Quarters',
        'slug': 'group-quarters',
        'topics': ['group-quarters',],
        'description': 'The ACS has special processes for gathering and reporting data about people who live in college dormitories, nursing facilities, military barracks, and correctional facilities.',
        'template_name': 'group-quarters.html',
        'more_info_links': [
            ('American Community Survey: Group Quarters Data Collection','https://www.census.gov/content/dam/Census/programs-surveys/acs/Library/OutreachMaterials/ACSFlyers/2017%20Group%20Quarters%20flyer_508.pdf'),
            ('2018 ACS Group Quarters Form','https://www2.census.gov/programs-surveys/acs/methodology/questionnaires/2018/quest18GQ.pdf?#'),
            ('2018 ACS Group Quarters Instructions','https://www2.census.gov/programs-surveys/acs/methodology/questionnaires/2018/guide18GQ.pdf'),
        ],
        'group': 'topical_help'
    },
    {
        'title': 'Health Insurance',
        'slug': 'health-insurance',
        'topics': ['health insurance',],
        'description': 'The ACS has a number of questions that deal with health insurance and many corresponding tables.',
        'template_name': 'health-insurance.html',
        'question_images': ['16_health_1.png','17_health_2.png'],
        'more_info_links': [
            ('Why We Ask: Health Insurance Coverage','https://www.census.gov/acs/www/about/why-we-ask-each-question/health/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Housing',
        'slug': 'housing',
        'topics': ['housing','costs and value', 'mortgage', 'occupancy', 'physical characteristics'],
        'description': 'In addition to questions about people, Census collects extensive data about housing, including costs and physical characteristics of homes.',
        'template_name': 'housing.html',
        'question_images': [
            'rooms_600_q1.png',
            'yearbuilt_600_q2.png',
            'yearbuilt_600_q3.png',
            '7_8_plumbing.png',
            'rooms_600_q6.png',
            '13_fuel.png',
            '14_H_costs1.png',
            '16_H_costs2.png',
            '17_ownership_1.png',
            '18_ownership_2.png',
            '19_ownership_3.png',
            '20_21_H_costs3.png',
            '22_H_costs4.png',
            '23_24_costs5.png',
        ],
        'more_info_links': [
            ('Why We Ask: Housing Costs for Owners','https://www.census.gov/acs/www/about/why-we-ask-each-question/housing/'),
            ('Why We Ask: Ownership, Home Value, and Rent','https://www.census.gov/acs/www/about/why-we-ask-each-question/ownership/'),
            ('Why We Ask: Plumbing Facilities, Kitchen Facilities, Telephone Service','https://www.census.gov/acs/www/about/why-we-ask-each-question/plumbing/'),
            ('Why We Ask: Units in Structure, Rooms, Bedrooms','https://www.census.gov/acs/www/about/why-we-ask-each-question/rooms/'),
            ('Why We Ask: Year Built and Year Moved In','https://www.census.gov/acs/www/about/why-we-ask-each-question/year-built/'),
            ('Why We Ask: Home Heating Fuel','https://www.census.gov/acs/www/about/why-we-ask-each-question/heating/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Language',
        'slug': 'language',
        'topics': ['language'],
        'description': 'Information about which languages survey respondents speak at home and their relative proficiency in English.',
        'template_name': 'language.html',
        'question_images': ['language_600_q14.png'],
        'more_info_links': [
            ('Why We Ask: Language Spoken at Home ','https://www.census.gov/acs/www/about/why-we-ask-each-question/language/')
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Marital Status',
        'slug': 'marital-status',
        'topics': ['marital status'],
        'description': "The ACS presents data on people's current marital status, how many people's status changed in the last year, and their marital history.",
        'template_name': 'marital-status.html',
        'question_images': ['21_22_23_24_marital_1.png'],
        'more_info_links': [
            ('Why We Ask: Marital Status/Marital History','https://www.census.gov/acs/www/about/why-we-ask-each-question/marital/')
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Race and Hispanic Origin',
        'slug': 'race-hispanic',
        'topics': ['race',],
        'description': 'Race is a complex issue, and no less so with Census data. A large proportion of Census tables are broken down by race.',
        'template_name': 'race_hispanic.html',
        'question_images': ['race_600_q5.png', 'race_600_q6.png',],
        'more_info_links': [
            ('Why We Ask: Race','https://www.census.gov/acs/www/about/why-we-ask-each-question/race/'),
            ('Why We Ask: Hispanic or Latino Origin','https://www.census.gov/acs/www/about/why-we-ask-each-question/ethnicity/')
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Migration',
        'slug': 'migration',
        'topics': ['migration', 'tenure'],
        'description': 'How the Census deals with migration data.',
        'template_name': 'migration.html',
         'question_images': ['migration_600_q15.png',],
        'more_info_links': [
            ('Why We Ask: Residence 1 Year Ago/Migration','https://www.census.gov/acs/www/about/why-we-ask-each-question/migration/')
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Poverty',
        'slug': 'poverty',
        'topics': ['poverty', 'public assistance', 'income'],
        'description': 'Poverty data and how it is used within the ACS.',
        'template_name': 'poverty.html',
        'question_images': [
            '43_income_1.png',
            '44_income_2.png',
            '15_snap.png',
        ],
        'more_info_links': [
            ('Why We Ask: Income','https://www.census.gov/acs/www/about/why-we-ask-each-question/income/'),
            ('Why We Ask: Food Stamps/Supplemental Nutrition Assistance Program (SNAP)','https://www.census.gov/acs/www/about/why-we-ask-each-question/food-stamps/'),
            ('How the Census Bureau Measures Poverty', 'https://www.census.gov/topics/income-poverty/poverty/guidance/poverty-measures.html'),
            ('Census Bureau: Poverty Threshold tables', 'https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-poverty-thresholds.html'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Public Assistance',
        'slug': 'public-assistance',
        'topics': ['poverty', 'public assistance'],
        'description': 'Public assistance data from the ACS.',
        'template_name': 'public-assistance.html',
        'question_images': [
            '15_snap.png',
        ],
        'more_info_links': [
            ('Why We Ask: Food Stamps/Supplemental Nutrition Assistance Program (SNAP)','https://www.census.gov/acs/www/about/why-we-ask-each-question/food-stamps/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Same-Sex Couples',
        'slug': 'same-sex',
        'topics': ['marital status',],
        'description': 'How the ACS deals with same-sex relationships is changing rapidly.',
        'template_name': 'same-sex.html',
        'question_images': ['2_relationship.png',],
        'more_info_links': [
            ('Why We Ask: Family / Relationship to Householder','https://www.census.gov/acs/www/about/why-we-ask-each-question/relationship/'),
            ('Same-Sex Couples Data and Documents','https://www.census.gov/topics/families/same-sex-couples.html'),
            ('Frequently Asked Questions About Same-Sex Couple Households', 'https://www2.census.gov/topics/families/same-sex-couples/faq/sscplfactsheet-final.pdf'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Income and Earnings',
        'slug': 'income',
        'topics': ['poverty', 'income'],
        'description': 'How the Census approaches the topic of income.',
        'template_name': 'income.html',
        'question_images': ['43_income_1.png', '44_income_2.png',],
        'more_info_links': [
            ('Why We Ask: Income','https://www.census.gov/acs/www/about/why-we-ask-each-question/income/'),
            ('US Census Bureau: Topics: Income','https://www.census.gov/topics/income-poverty/income.html'),
            ('US Census Bureau: Income vs. Earnings','https://www.census.gov/newsroom/blogs/random-samplings/2010/09/income-vs-earnings.html'),

        ],
        'group': 'topical_help'
    },
    {
        'title': 'Employment',
        'slug': 'employment',
        'topics': ['income', 'employment'],
        'description': 'While the ACS is not always the best source for employment data, it provides interesting information for small geographies that other sources don’t cover.',
        'short_description': 'Interesting information for small geographies that other sources don’t cover.',
        'template_name': 'employment.html',
        'question_images': ['30_employ_1.png','36a_employ_2.png',
        '36c_39_employ_3.png','40_41_work_status.png', '42_industry_1.png','42_industry_2.png'],
        'more_info_links': [
            ('Why We Ask: Employment Status','https://www.census.gov/acs/www/about/why-we-ask-each-question/employment/'),
            ('Why We Ask: Industry, Occupation, and Class of Worker ','https://www.census.gov/acs/www/about/why-we-ask-each-question/occupation/'),
            ('Why We Ask: Work Status Last Year','https://www.census.gov/acs/www/about/why-we-ask-each-question/work/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Seniors',
        'slug': 'seniors',
        'topics': ['grandparents', 'seniors'],
        'description': 'In addition to basic Census data about age, there are a small number of Census tables which focus directly on data about older Americans, and on grandparents as caregivers.',
        'short_description': 'Data about older Americans, and on grandparents as caregivers.',
        'template_name': 'seniors.html',
        'question_images': ['age_q4.png', '26_grandparents_1.png'],
        'more_info_links': [
            ('Why We Ask: Grandparents as Caregivers','https://www.census.gov/acs/www/about/why-we-ask-each-question/grandparents/'),
            ('Why We Ask: Age and Date of Birth','https://www.census.gov/acs/www/about/why-we-ask-each-question/age/'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Technical Tables',
        'slug': 'technical',
        'topics': ['technical'],
        'description': 'A subset of tables in the ACS provide information about technical details about how each survey was administered.',
        'template_name': 'technical.html',
        'more_info_links': [
            ('American Community Survey: Sample Size and Data Quality','https://www.census.gov/acs/www/methodology/sample-size-and-data-quality/'),
            ('American Community Survey: Response Rates Definitions','https://www.census.gov/programs-surveys/acs/methodology/sample-size-and-data-quality/response-rates-definitions.html'),
            ('American Community Survey: Coverage Rates Definitions','https://www.census.gov/programs-surveys/acs/methodology/sample-size-and-data-quality/coverage-rates-definitions.html'),
            ('American Community Survey: Item Allocation Rates Definitions','https://www.census.gov/programs-surveys/acs/methodology/sample-size-and-data-quality/item-allocation-rates-definitions.html'),
        ],
        'group': 'topical_help'
    },

    {
        'title': 'Veterans and Military',
        'slug': 'veterans',
        'topics': ['veterans'],
        'description': 'Data collected about past and present members of the U.S. Armed Forces.',
        'template_name': 'veterans.html',
        'question_images': ['27_28_veterans_1.png','29_veterans_2.png'],
        'more_info_links': [
            ('Why We Ask: Veteran Status','https://www.census.gov/acs/www/about/why-we-ask-each-question/veterans/'),
        ],
        'group': 'topical_help'
    },

]

TOPICS_MAP = dict((topic['slug'], topic) for topic in TOPICS_LIST)
TOPIC_GROUP_LABELS = {
    'about_census': 'About the Census',
    'topical_help': 'Census Subjects',
}
def sort_topics(topic_map):
    # force "getting started" to the top of the list, and serve the rest alphabetically.
    to_sort = [(v['group'], v.get('priority',10000), k, v) for k,v in topic_map.items()]
    return [x[-1] for x in sorted(to_sort)]
