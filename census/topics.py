## TOPICS ##

'''
Hey, it's a CMS!

Title/slug/description will be used to create the list page at /topics/

Title/description will also be used to create the header on the detail page
at /topics/{{ slug }}/. The contents of an individual page should go inside
{{ template_name }}, which belongs in /templates/topics.

Screenshots of survey questions should be placed in /static/img/questions,
and the filenames listed in {{ question_images }} for each entry.

Possible topics for matching table metadata:

    'topics': ['poverty', 'health insurance', 'marital status', 'citizenship', 'mortgage', 'occupancy', 'education', 'sex', 'public assistance', 'income', 'disability', 'migration', 'housing', 'family type', 'group quarters', 'physical characteristics', 'employment', 'commute', 'tenure', 'place of birth', 'fertility', 'veterans', 'families', 'costs and value', 'language', 'technical', 'roommates', 'children', 'grandparents', 'age', 'race', 'seniors', 'ancestry']
'''
TOPICS_LIST = [
    {
        'title': 'Age and Sex',
        'slug': 'age-sex',
        'topics': ['sex', 'children', 'age', 'seniors'],
        'description': 'How the Census approaches the topics of age and sex.',
        'template_name': 'age_sex.html',
        'question_images': ['age-sex.png',],
        'question_pdfs': [
            ('Age','http://www.census.gov/acs/www/Downloads/QbyQfact/age.pdf'),
            ('Sex','http://www.census.gov/acs/www/Downloads/QbyQfact/sex.pdf')
        ]
    },

    {
        'title': 'Births',
        'slug': 'births',
        'topics': ['births', 'children', 'families'],
        'description': 'The Michigan Department of Health and Human Services collects a number of vital statistics, including data from the birth certificates of each birth recorded in the state.  Through this data we report a variety of health indicators and demographic information related to births. If there are less fewer than 6 observations, the information is suppressed for privacy reasons.',
        'template_name': 'births.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Children',
        'slug': 'children',
        'topics': ['family type', 'families', 'children'],
        'description': 'Tables concerning Children. Helpful to consider in relation to Families.',
        'template_name': 'children.html',
        'question_images': ['relationship.png',],
        'question_pdfs': [
            ('Questions on Family Relationships','http://www.census.gov/acs/www/Downloads/QbyQfact/relationship.pdf'),
        ]
    },

    {
        'title': 'Commute',
        'slug': 'commute',
        'topics': ['employment', 'commute'],
        'description': 'Commute data from the American Community Survey.',
        'template_name': 'commute.html',
        'question_images': ['commuting.png',],
        'question_pdfs': [
            ('Vehicles Available','http://www.census.gov/acs/www/Downloads/QbyQfact/vehicle.pdf'),
            ('Place of Work and Journey to Work','http://www.census.gov/acs/www/Downloads/QbyQfact/PJ_work.pdf')
        ]
    },

    {
        'title': 'Education',
        'slug': 'education',
        'topics': ['education', 'children', 'families'],
        'description': 'The Michigan Center for Educational Performance and Information (CEPI) coordinated the collection of education data for the State of Michigan. This data includes M-STEP test data, graduation, and drop out statistics. Through this data we report information related to both English Language Arts (ELA) and Math M-STEP testing that takes place during the 3rd grade, and graduation rate information. Data from CEPI is published for both traditional public schools and charter schools.  The numbers that we report on the Housing Information Portal from the tables below include both public and charter schools combined. If there are fewer than 10 observations, the information is suppressed for privacy reasons. ',
        'template_name': 'education.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

       {
        'title': 'Families',
        'slug': 'families',
        'topics': ['family type', 'families', 'marital status'],
        'description': 'Families are an important topic in the ACS and a key framework for considering many kinds of data.',
        'template_name': 'families.html',
        'question_images': ['relationship.png',],
        'question_pdfs': [
            ('ACS Question on Householder Relationships','http://www.census.gov/acs/www/Downloads/QbyQfact/relationship.pdf'),
        ]
    },

    {
        'title': 'Geography',
        'slug': 'geography',
        'description': "Geography is fundamental to the Census Bureau's process of tabulating data. Here are the key concepts you need to understand.",
        'template_name': 'geography.html',
    },

    {
        'title': 'Health Insurance',
        'slug': 'health-insurance',
        'topics': ['health insurance',],
        'description': 'The ACS has a number of questions that deal with health insurance and many corresponding tables.',
        'template_name': 'health-insurance.html',
        'question_images': ['health-insurance.png',],
        'question_pdfs': [
            ('Questions on Health Insurance Coverage','http://www.census.gov/acs/www/Downloads/QbyQfact/health_insurance.pdf'),
        ]
    },

    {
        'title': 'Hospital visits through Medicaid',
        'slug': 'hospital-visits-through-medicaid',
        'topics': ['public health', 'children', 'families', 'health care'],
        'description': 'The Michigan Department of Health and Human Services collects data on patients under 18 years of age who visited the hospital through Medicaid. This dataset includes information about the number of these visits that were to the Emergency Room, as well as the number of visits that were related to Asthma or Diabetes. If there were fewer than 6 observations, the information is suppressed for privacy reasons.',
        'template_name': 'medicaid.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Free and Reduced School Lunch',
        'slug': 'free-and-reduced-school-lunch',
        'topics': ['education', 'children', 'families', 'nutrition'],
        'description': 'The Center for Educational Performance and Information (CEPI) collects the count of how many students (K-12) are eligible for free and/or reduced school lunch.  Free and reduced lunch eligibility is based on income thresholds based on household size. Non-public school and home-school students are excluded from CEPI\'s data.',
        'template_name': 'school-lunch.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'College Readiness',
        'slug': 'college-readiness',
        'topics': ['education', 'children', 'families', 'higher education'],
        'description': 'This dataset contains college readiness information, by Metropolitan Statistical Area (MSA), for the state of Michigan. This dataset is reporting score information from the 2017-2018 school year. Students were considered ready for college if they scored at or above the benchmark scores. The SAT Benchmarks represent the likelihood of success in entry-level college courses.  The benchmark for Evidenced-Based Reading and Writing (EBRW) is 480 and 530 for Math.  The SAT total score reported for Michigan is the combined Evidenced-Based Reading and Writing, and Math Student Score. The Total Score range is 400 - 1600.  Data Driven Detroit obtained this data from MiSchoolData.org in October 2018 at a building level and aggregated the data to a MSA level. See "Additional Notes" tab for more information.',
        'template_name': 'college-readiness.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'College Enrollment',
        'slug': 'college-enrollment',
        'topics': ['education', 'children', 'families', 'higher education'],
        'description': 'This dataset contains college enrollment information, by U.S. Census Block Group, for the state of Michigan. College enrollment was defined as the number of public high school students who graduated in 2017, who enrolled in a college or university. This dataset includes enrollment in two-year and four-year institutions of higher education.',
        'template_name': 'college-enrollment.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Blood Lead Level',
        'slug': 'blood-lead-level',
        'topics': ['health', 'children', 'families', 'public health'],
        'description': 'Data on the number of tests for elevated blood lead level is collected by the Michigan Department of Health and Human Services at the individual level. For this analysis, D3 anonymized the data and aggregated it up to various geographies. Geographies with less than 6 individuals with elevated blood lead levels (EBLLs) are suppressed to preserve anonymity. EBLLs are defined as a blood lead level greater than 4.5 micrograms per deciliter (the unit of measure used to determine lead levels which is micrograms of lead per deciliter of blood). There are two different types of samples, capillary and venous. Capillary testing is done by a pricking the skin of a fingertip or heel capillary. Venous testing is done by drawing blood directly from an arm vein. Some children receive both types of testing, but not all children receive venous testing. Venous is preferred for accuracy and used in the SDC tool as the method of identifying EBLL.',
        'template_name': 'blood-lead-level.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Child Care',
        'slug': 'child-care',
        'topics': ['child care', 'children', 'families'],
        'description': 'Great Start to Quality measures the quality of early childhood programs and providers in Michigan by using more than 40 program quality indicators aligned with Michigan\'s Early Childhood Standards of Quality for Infant and Toddler Programs and Early Childhood Standards of Quality for Prekindergarten. The program quality indicators are standards used to measure the quality of a program in a specific area. Each program quality indicator falls into one of five categories.',
        'template_name': 'child-care.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Infant Mortality',
        'slug': 'infant-mortality',
        'topics': ['births', 'children', 'families', 'health care'],
        'description': 'Data on the number of infant deaths, unsafe sleep related infant deaths, and infant deaths due to assault or maltreatment collected by the State of Michigan Office of Vital Statistics at the state, county, county subdivision, and congressional district levels in Michigan.',
        'template_name': 'infant-mortality.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Immunization',
        'slug': 'immunization',
        'topics': ['public health', 'children', 'families', 'health care'],
        'description': 'Data on the number of fully or partially immunized people collected by the Michigan Care Improvement Agency at the county, county subdivision (in Wayne County), congressional district, State House district, State Senate district, and Census tract levels in Michigan. For this analysis, MDHHS determined immunization status using a National Immunization Survey (NIS) - like methodology, which is a count of both valid and invalid doses. This allows for comparisons with other states. Full immunization, denoted as "fully immunized," includes 4 DTaP, 3 Polio, 1 MMR, 3 Hib, 3 HepB, 1 Varicella, 4 PCV, and 2 HepA vaccinations. Partial immunization, minus HepA and minus PCV, lack HepA and/or PCV vaccinations, respectively. ',
        'template_name': 'immunization.html',
        'question_images': [],
        'question_pdfs': [
        ]
    },

    {
        'title': 'Race and Hispanic Origin',
        'slug': 'race-hispanic',
        'topics': ['race',],
        'description': 'Race is a complex issue, and no less so with Census data. A large proportion of Census tables are broken down by race.',
        'template_name': 'race_hispanic.html',
        'question_images': ['race.png',],
        'question_pdfs': [
            ('Race','http://www.census.gov/acs/www/Downloads/QbyQfact/race.pdf'),
            ('Hispanic or Latino Origin','http://www.census.gov/acs/www/Downloads/QbyQfact/hispanic.pdf')
        ]
    },

    {
        'title': 'Migration',
        'slug': 'migration',
        'topics': ['migration', 'tenure'],
        'description': 'How the Census deals with migration data.',
        'template_name': 'migration.html',
         'question_images': ['migration.png',],
        'question_pdfs': [
            ('Questions related to Residence One Year Ago from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/residence.pdf')

        ]
    },

    {
        'title': 'Poverty',
        'slug': 'poverty',
        'topics': ['poverty', 'public assistance', 'income'],
        'description': 'Poverty data and how it is used within the ACS.',
        'template_name': 'poverty.html',
         'question_images': ['income.png',],
        'question_pdfs': [
            ('Questions related to Income and Poverty from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/income.pdf')

        ]
    },

    {
        'title': 'Public Assistance',
        'slug': 'public-assistance',
        'topics': ['poverty', 'public assistance'],
        'description': 'Public assistance data from the ACS.',
        'template_name': 'public-assistance.html',
         'question_images': ['public-assistance.png',],
        'question_pdfs': [
            ('Questions on Income Sources from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/income.pdf'),
            ('Question about Food Stamps from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/food_stamp.pdf')

        ]
    },

    {
        'title': 'Same-Sex Couples',
        'slug': 'same-sex',
        'topics': ['marital status',],
        'description': 'Although Census does not ask about them directly, there are a number of ways to get at data about same-sex couples using ACS data.',
        'template_name': 'same-sex.html',
        'question_images': ['same-sex.png',],
        'question_pdfs': [
            ('Questions on Relationships from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/relationship.pdf'),
            ('Question on Gender from ACS','http://www.census.gov/acs/www/Downloads/QbyQfact/sex.pdf')
        ]
    },

    {
        'title': 'Income',
        'slug': 'income',
        'topics': ['poverty', 'income'],
        'description': 'How the Census approaches the topic of income.',
        'template_name': 'income.html',
        'question_images': ['income.png',],
        'question_pdfs': [
            ('All Income Questions from the Census','http://www.census.gov/acs/www/Downloads/QbyQfact/income.pdf')
        ]
    },

    {
        'title': 'Table Codes',
        'slug': 'table-codes',
        'description': 'While Census Reporter hopes to save you from the details, you may be interested to understand some of the rationale behind American Community Survey table identifiers.',
        'template_name': 'table-codes.html',
    },

    {
        'title': 'Employment',
        'slug': 'employment',
        'topics': ['income', 'employment'],
        'description': 'While the ACS is not always the best source for employment data, it provides interesting information for small geographies that other sources do not cover.',
        'short_description': 'Interesting information for small geographies that other sources do not cover.',
        'template_name': 'employment.html',
        'question_images': ['employment.png',],
        'question_pdfs': [
            ('Labor Force Status','http://www.census.gov/acs/www/Downloads/QbyQfact/labor.pdf'),
            ('Work Status','http://www.census.gov/acs/www/Downloads/QbyQfact/work_status.pdf'),
            ('Class of Worker; Industry; Occupation','http://www.census.gov/acs/www/Downloads/QbyQfact/worker.pdf'),
        ]
    },

    {
        'title': 'Seniors',
        'slug': 'seniors',
        'topics': ['grandparents', 'seniors'],
        'description': 'In addition to basic Census data about age, there are a small number of Census tables which focus directly on data about older Americans, and on grandparents as caregivers.',
        'short_description': 'Data about older Americans, and on grandparents as caregivers.',
        'template_name': 'seniors.html',
        'question_images': ['seniors.png',],
        'question_pdfs': [
            ('Age','http://www.census.gov/acs/www/Downloads/QbyQfact/age.pdf'),
            ('Grandparents as Caregivers','http://www.census.gov/acs/www/Downloads/QbyQfact/grandparents.pdf'),
        ]
    },

    {
        'title': 'Getting Started',
        'slug': 'getting-started',
        'description': "The Census is a big subject and there's a lot to learn, but you don't have to learn it all at once. Here's some help knowing the lay of the land.",
        'short_description': "The Census is a big subject and there's a lot to learn, but you don't have to learn it all at once.",
        'template_name': 'getting_started.html',
    },

    {
        'title': 'Veterans and Military',
        'slug': 'veterans',
        'topics': ['veterans'],
        'description': 'Data collected about past and present members of the U.S. Armed Forces.',
        'template_name': 'veterans.html',
        'question_images': ['veteran.png', 'veteran_period.png', 'va_rating.png'],
        'question_pdfs': [
            ('Veteran Status and Period of Military Service','http://www.census.gov/acs/www/Downloads/QbyQfact/veteran.pdf'),
            ('VA Service-Connected Disability Rating Status','http://www.census.gov/acs/www/Downloads/QbyQfact/VA_rating.pdf'),
            # ('The Migration of Military Spouses using the 2007-2011 5-Year American Community Survey', 'http://www.census.gov/hhes/migration/files/Military_Migration_paper_final_13-04-29.pdf')
        ]
    },

]

TOPICS_MAP = { topic['slug']: topic for topic in TOPICS_LIST }

