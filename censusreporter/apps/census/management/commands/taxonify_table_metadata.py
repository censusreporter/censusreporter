from django.core.management.base import BaseCommand
from census.models import Table

SUBJECT_AREA_TO_TOPICS = {
    'Age-Sex': 'age, gender',
    'Hispanic Origin': 'race',
    'Race': 'race',

    'Earnings': 'income',
    'Employment Status': 'employment',
    'Health Insurance': 'health insurance',
    'Income': 'income',
    'Industry-Occupation-Class of Worker': 'employment',
    'Journey to Work': 'employment, commute',
    'Poverty': 'poverty',
    'Transfer Programs': 'public assistance',

    'Ancestry': 'ancestry',
    'Children - Relationship': 'children',
    'Disability': 'disability',
    'Educational Attainment': 'education',
    'Fertility': 'fertility',
    'Foreign Birth': 'place of birth',
    'Grand(Persons) - Age of HH Members': 'children, grandparents',
    'Households - Families': 'families',
    'Language': 'language',
    'Marital Status': 'marital status',
    'Place of Birth - Native': 'place of birth',
    'Residence Last Year - Migration': 'migration',
    'School Enrollment': 'education',
    'Veteran Status': 'veterans',

    'Housing': 'housing',
}

TABLE_NAME_TEXT_TO_TOPICS = {
    'children': 'children',
    'disability': 'disability',
    'bachelor\'s degree': 'education',
    'education': 'education',
    'school': 'education',
    'employ': 'employment',
    'occupation': 'employment',
    'work': 'employment',
    'families': 'families',
    'family': 'families',
    'nonfamily': 'roommates',
    'grandparent': 'grandparents',
    'health insurance': 'health insurance',
    'living arrange': 'housing',
    #'household': 'households',
    'earnings': 'income',
    'income': 'income',
    'geographical mobility': 'migration',
    'poverty': 'poverty',
    'food stamps': 'public assistance',
    'public assistance': 'public assistance',
    '65 years and over': 'seniors',
    'transportation': 'commute',
    'va health care': 'veterans',
    'veteran': 'veterans',
}

TABLE_NAME_TEXT_TO_FACETS = {
    'by age': 'age',
    'age by': 'age',
    'citizenship': 'citizenship',
    'naturalization': 'citizenship',
    'by famil': 'families',
    'by sex': 'gender',
    'sex by': 'gender',
    #'by household': 'household type',
    #'household type by': 'household type',
    'language': 'language',
    'marriage': 'marital status',
    'marital': 'marital status',
    'nativity': 'place of birth',
    'place of birth': 'place of birth',
    #'by relationship': 'relationship type',
    '(white': 'race',
    '(black': 'race',
    '(american': 'race',
    '(asian': 'race',
    '(native': 'race',
    '(some other race': 'race',
    '(two or more races': 'race',
    'hispanic': 'race',
}

class Command(BaseCommand):
    help = 'Uses dicts above to apply taxonomy to Census table names.'
    def handle(self, *args, **options):
        table_list = Table.objects.all()
        
        for table in table_list:
            table_name = table.table_name
            subject_area = table.subject_area
            topics = []
            print table_name

            if subject_area in SUBJECT_AREA_TO_TOPICS:
                # only keep the rows in the subject areas we want
                topics.extend(
                    [topic.strip() for topic in SUBJECT_AREA_TO_TOPICS[subject_area].split(',')]
                )
                
                for key in TABLE_NAME_TEXT_TO_TOPICS:
                    if key in table_name.lower():
                        topics.extend(
                            [topic.strip() for topic in TABLE_NAME_TEXT_TO_TOPICS[key].split(',')]
                        )
                
                # for now, we're storing these in the same place
                for key in TABLE_NAME_TEXT_TO_FACETS:
                    if key in table_name.lower():
                        topics.extend(
                            [facet.strip() for facet in TABLE_NAME_TEXT_TO_FACETS[key].split(',')]
                        )
                
                topics = ', '.join(sorted(set(topics)))
                table.topics = topics
                table.save()
                