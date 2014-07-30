import os
import sys

import csv
import re

from api.models import get_model_from_fields, Base, Province
from api.utils import get_session, _engine

import logging

logging.basicConfig()
logging.getLogger('sqlalchemy.engine').setLevel(logging.WARN)

"""
This is a helper script that reads in a SuperCROSS or SuperWEB
CSV file and imports the data into the Wazi database, creating
tables as necessary.
"""

muni_re = re.compile('^[A-Z]{3}: .*')

class SuperImporter(object):
    def __init__(self, filepath):
        self.filepath = filepath
        self.includes_total = False
        self.table_name = None

    def run(self):
        with open(filepath) as f:
            self.f = f
            self.read_headers()
            self.store_values()
        
    def read_headers(self):
        line = next(self.f)
        self.f.seek(0)

        if "Statistics South Africa" in line:
            self.read_supercross_headers()
        else:
            self.read_superweb_headers()


    def read_supercross_headers(self):
        '''
        Return fields and tuples of categories for this supercross export.
        Categories are defined by the permutations of values for each field.
        For an export with fields [gender, race, age], categories will be a
        list like [
          ('male', 'black', '0-5'),
          ('male', 'black', '6-10'),
          ...
          ('male', 'white', '0-5'),
          ...
          ]

        Example headers:

        Statistics South Africa
        Education_Electoral_Wards
        Table 1
    "Geography by Highest educational level, Population group and Gender"
    " for Person weighted, 05 - 09 - 85+"
    ,"Gade 0","Gade 0","Gade 0","Gade 0","Gade 0","Gade 0","Gade 0","Gade 0","Gade 0","Gade 0","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 1 / Sub A","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 2 / Sub B","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 4 / Std 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 5 / Std 3/ABET 2","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 6 / Std 4","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 7 / Std 5/ ABET 3","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 8 / Std 6 / Form 1","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 9 / Std 7 / Form 2/ ABET 4","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 10 / Std 8 / Form 3","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 11 / Std 9 / Form 4","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","Grade 12 / Std 10 / Form 5","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC I / N1/ NIC/ V Level 2","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC II / N2/ NIC/ V Level 3","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","NTC III /N3/ NIC/ V Level 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N4 / NTC 4","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N5 /NTC 5","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","N6 / NTC 6","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Certificate with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Diploma with less than Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Certificate with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Diploma with Grade 12 / Std 10","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Higher Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Post Higher Diploma Masters; Doctoral Diploma","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Bachelors Degree and Post graduate Diploma","Honours degree","Honours degree","Honours degree","Honours degree","Honours degree","Honours degree","Honours degree","Honours degree","Honours degree","Honours degree","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Higher Degree Masters / PhD","Other","Other","Other","Other","Other","Other","Other","Other","Other","Other","No schooling","No schooling","No schooling","No schooling","No schooling","No schooling","No schooling","No schooling","No schooling","No schooling","Unspecified","Unspecified","Unspecified","Unspecified","Unspecified","Unspecified","Unspecified","Unspecified","Unspecified","Unspecified","Not applicable","Not applicable","Not applicable","Not applicable","Not applicable","Not applicable","Not applicable","Not applicable","Not applicable","Not applicable"
    ,"Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other","Black African","Black African","Coloured","Coloured","Indian or Asian","Indian or Asian","White","White","Other","Other"
    ,"Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female","Male","Female"
    "Eastern Cape",125742,122322,8607,8553,408,324,2841,2859,276,198,123324,113433,8358,7971,312,261,2025,1875,180,168,112080,103227,7302,7191,261,270,1944,1755,219,153,120420,112233,8004,7824,261,240,1842,1677,222,138,142269,130545,9582,9564,279,270,1911,1755,303,156,136785,132891,10608,11181,351,297,1977,1881,360,159,147453,155784,11916,12930,405,423,2559,2607,414,177,158778,181278,17358,20292,474,450,2661,2643,624,294,187692,233589,24228,26718,708,801,6828,8124,996,360,159306,193116,19242,21162,636,525,3897,4119,768,327,168912,207666,26604,30381,1086,918,15426,18834,1317,576,174531,238863,15489,17850,777,570,4416,5022,1116,537,250311,315447,38127,43788,4116,2934,44643,53259,3543,1455,2724,3054,258,222,45,24,639,312,24,15,1758,1761,315,111,45,15,1392,255,18,3,2070,2328,438,165,42,15,2316,363,45,9,1845,2118,291,201,33,9,1290,288,27,18,1539,1956,291,177,18,12,858,261,21,6,2601,3147,408,285,51,18,1488,438,36,9,1515,2220,204,264,27,24,381,510,27,21,2163,3804,207,291,36,39,597,714,36,12,10557,16494,1305,1719,210,180,2475,3327,144,96,20319,37542,2022,2796,360,351,5772,6885,204,177,14487,27393,1905,2592,381,363,7374,8649,267,165,2892,4233,276,297,111,78,1218,951,63,33,11859,19110,1278,1515,672,552,6729,6393,240,144,4959,6432,624,399,261,195,2820,2553,114,51,4848,8628,501,591,177,177,2682,2802,105,69,3237,3765,393,267,339,246,3054,1917,141,54,2427,3261,462,441,120,60,1128,981,207,66,159981,244842,10500,11472,348,321,1686,1587,1077,402,-,-,-,-,-,-,-,-,-,-,41613,37749,4428,3441,678,591,4914,6876,252,147
        ...
        '''
        self.reader = csv.reader(self.f, delimiter=",")

        # skip first three lines
        for i in xrange(3):
            next(self.reader)

        # Geography by Highest educational level, Population group and Gender
        line = next(self.reader)[0].strip()
        fields = line\
                .replace("Geography by", "")\
                .strip()\
                .replace(" and ", ", ")\
                .split(", ")
        self.fields = [f.strip().lower() for f in fields]

        # skip next line
        next(self.reader)

        # read in categories for each field, one per line
        cat_headers = []
        for i, line in enumerate(self.reader):
            cat_headers.append(line[1:])

            if i == len(fields)-1:
                break
        self.categories = zip(*cat_headers)


    def read_superweb_headers(self, filepath):
        '''
        Return fields and categories for this superweb export.

        Example: (['Like colour?', 'Colour'],
                  [('Yes', 'Blue'), ('Yes', 'Red'), ('No', 'Blue'), ('No', 'Red')])

        Example headers:

        "Descriptive"
        "Counting: Person weighted"
        "Layer: "
        "Geography by Gender "
        "Filters: "

        "Gender","Male","Female",
        "Geography",
        "Eastern Cape","3,089,701","3,472,353",
        ...

        '''
        self.reader = csv.reader(self.f, delimiter=",")
        # skip headers
        for row in self.reader:
            if len(row) == 0:
                break

        fields = []
        categories = None
        for row in self.reader:
            if row[0] == "Geography":
                break
            fields.append(row[0].lower())
            categories_for_field = row[1:]

            # Repeat category value until next value
            last = categories_for_field[0]
            for i, val in enumerate(categories_for_field):
                if val == " ":
                    categories_for_field[i] = last
                else:
                    last = val

            # Remove last category value if empty or "Total"
            if categories_for_field[-1] == "":
                del categories_for_field[-1]
            if categories_for_field[-1] == 'Total':
                self.includes_total = True
                del categories_for_field[-1]
            else:
                self.includes_total = False
            
            # zip the categories
            if categories is None:
                categories = [(c, ) for c in categories_for_field]
            else:
                categories = [tup + (categories_for_field[i], )
                              for i, tup in enumerate(categories)]

        self.fields = fields
        self.categories = categories


    def read_rows(self):
        '''
        Second through to final call returns the geo code (or name if it's a province)
        and a list of integer totals, one for each combination of column values.
        Example: ('DC10', [10, 14, 12, 7])
        '''
        for i, row in enumerate(self.reader):
            if len(row) == 0 or 'All cells in this table' in row[0]:
                break

            geo_name = row[0]
            if geo_name == 'Total':
                geo_name = ""

            if row[-1] == "":
                del row[-1]

            if self.includes_total:
                yield geo_name, row[1:-1]
            else:
                yield geo_name, row[1:]


    def store_values(self):
        session = get_session()
        province_codes = dict((p.name, p.code) for p in session.query(Province))
        session.commit()

        # cache of the db models for each geo level
        models = {}
        count = 0

        for geo_name, values in self.read_rows():
            count += 1
            geo_level = self.determine_level(geo_name)

            print geo_level, geo_name

            if geo_level == 'province':
                code = province_codes[geo_name]
            elif geo_name == 'country':
                code = 'ZA'
            else:
                code = geo_name.split(':')[0]
            base_kwargs = {'%s_code' % geo_level: code}

            # get db model and create table if necessary
            if geo_level in models:
                db_model = models[geo_level]
            else:
                if self.table_name:
                    table_name = self.table_name + '_' + geo_level
                else:
                    table_name = None

                models[geo_level] = db_model = get_model_from_fields(self.fields, geo_level, table_name)
                Base.metadata.create_all(_engine, tables=[db_model.__table__])

            for category, value in zip(self.categories, values):
                # prepare the dict of args to pass to the db model for this row
                kwargs = base_kwargs.copy()
                if value.strip() == '-':
                    value = '0'

                kwargs.update(dict((f, v) for f, v in zip(self.fields, category)))
                kwargs['total'] = int(value.replace(',', ''))

                # create and add the row
                session.add(db_model(**kwargs))

            if count % 100 == 0:
                session.flush()

        session.commit()
        session.close()

    def determine_level(self, geo_name):
        if geo_name == "":
            return 'country'
        elif len(geo_name.split(':')[0]) in (5, 6) or muni_re.match(geo_name):
            return 'municipality'
        elif 'Ward' in geo_name:
            return 'ward'
        elif len(geo_name.split(':')[0]) >= 7:
            return 'province'
        elif geo_name.startswith('DC'):
            return 'district'
        else:
            raise ValueError("Cannot recognize the geo level of %s" % geo_name)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        raise ValueError("Requires 1 file path argument")
    if len(sys.argv) == 3:
        table_name = sys.argv[2]
    else:
        table_name = None
    filepath = sys.argv[1]

    if not os.path.isabs(filepath):
        filepath = os.path.join(os.getcwd(), filepath)

    importer = SuperImporter(filepath)
    importer.table_name = table_name
    importer.run()

