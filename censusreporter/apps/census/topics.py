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
            ('Age','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Age.pdf'),
            ('Sex','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Sex.pdf')
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
            ('Questions on Family Relationships','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Relationship.pdf'),
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
            ('Vehicles Available','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Vehicles.pdf'),
            ('Commuting / Journey to Work','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/JourneytoWork.pdf')
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
            ('ACS Question on Householder Relationships','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Relationship.pdf'),
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
            ('Questions on Health Insurance Coverage','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/HealthInsurance.pdf'),
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
            ('Race','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Race.pdf'),
            ('Hispanic or Latino Origin','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Hispanic.pdf')
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
            ('Questions related to Residence One Year Ago from ACS','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Residence1YrAgo.pdf')

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
            ('Questions related to Income and Poverty from ACS','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Income.pdf')

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
            ('Questions on Income Sources from ACS','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Income.pdf'),
            ('Question about Food Stamps from ACS','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/FoodStamps.pdf')

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
            ('Questions on Relationships from ACS','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Relationship.pdf'),
            ('Question on Gender from ACS','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Sex.pdf')
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
            ('All Income Questions from the Census','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Income.pdf')
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
        'description': 'While the ACS is not always the best source for employment data, it provides interesting information for small geographies that other sources don&rsquo;t cover.',
        'short_description': 'Interesting information for small geographies that other sources don&rsquo;t cover.',
        'template_name': 'employment.html',
        'question_images': ['employment.png',],
        'question_pdfs': [
            ('Labor Force Status','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/LaborForce.pdf'),
            ('Work Status','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/WorkStatus.pdf'),
            ('Class of Worker','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/ClassWorker.pdf'),
            ('Industry; Occupation','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/OccupationIndustry.pdf'),

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
            ('Age','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Age.pdf'),
            ('Grandparents as Caregivers','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/Grandparents.pdf'),
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
        'title': 'About the Census',
        'slug': 'about-census',
        'description': "A brief overview of the many data products produced by the Census Bureau, most of which are not available through Census Reporter.",
        'short_description': "A brief overview of the many data products produced by the Census Bureau, most of which are not available through Census Reporter.",
        'template_name': 'about_census.html',
    },

    {
        'title': 'Veterans and Military',
        'slug': 'veterans',
        'topics': ['veterans'],
        'description': 'Data collected about past and present members of the U.S. Armed Forces.',
        'template_name': 'veterans.html',
        'question_images': ['veteran.png', 'veteran_period.png', 'va_rating.png'],
        'question_pdfs': [
            (' Veteran Status, Period of Service and VA Service-Connected Disability Rating','https://www2.census.gov/programs-surveys/acs/about/qbyqfact/2016/VeteranStatus.pdf'),
            # ('The Migration of Military Spouses using the 2007-2011 5-Year American Community Survey', 'http://www.census.gov/hhes/migration/files/Military_Migration_paper_final_13-04-29.pdf')
        ]
    },

]

TOPICS_MAP = { topic['slug']: topic for topic in TOPICS_LIST }
