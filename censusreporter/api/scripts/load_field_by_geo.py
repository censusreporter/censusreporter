import os
import sys

import unicodecsv as csv

from api.models import get_model_from_fields, Base, Province
from api.utils import get_session, _engine


'''
TODO: this script only caters for 2D data, i.e. geography and
1 other field. Need to update it for an arbitrary number of
fields.
'''


def open_census_csv(filepath):
    f = open(filepath)
    reader = csv.reader(f, delimiter=",")
    # skip headers
    for row in reader:
        if len(row) > 1:
            break

    field_name = row[0].lower()
    categories = row[1:]
    if categories[-1] == "":
        del categories[-1]
    if categories[-1] == 'Total':
        includes_total = True
        del categories[-1]
    else:
        includes_total = False
    yield field_name, categories

    # skip "Geography" line
    next(reader)

    for i, row in enumerate(reader):
        if len(row) == 0:
            break
        geo_name = row[0]
        if geo_name == 'Total':
            if i == 0:
                geo_name = ""
            else:
                break
        if row[-1] == "":
            del row[-1]
        if includes_total:
            yield geo_name, row[1:-1]
        else:
            yield geo_name, row[1:]

    f.close()


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

    data = open_census_csv(filepath)
    field_name, categories = next(data)

    # figure out which geo level the data is at
    geo_name, values = next(data)
    while len(geo_name) == 3 and not geo_name.startswith('DC'):
        geo_name, values = next(data)

    if geo_name == "":
        geo_level = 'country'
    elif len(geo_name.split(':')[0]) in (5, 6):
        geo_level = 'municipality'
    elif 'Ward' in geo_name:
        geo_level = 'ward'
    elif len(geo_name.split(':')[0]) >= 7:
        geo_level = 'province'
        session = get_session()
        province_codes = dict((p.name, p.code) for p in session.query(Province))
        session.close()
    elif geo_name.startswith('DC'):
        geo_level = 'district'
    else:
        raise ValueError("Cannot recognize the geo level of data")

    # get db model and create table if necessary
    db_model = get_model_from_fields([field_name], geo_level, table_name)
    Base.metadata.create_all(_engine, tables=[db_model.__table__])

    # restart generator
    data = open_census_csv(filepath)
    next(data)  # skip field name and categories
    session = get_session()

    for geo_name, values in data:
        if geo_level == 'province':
            code = province_codes[geo_name]
        elif geo_name == 'country':
            code = None
        else:
            code = geo_name.split(':')[0]
        base_kwargs = {'%s_code' % geo_level: code} if code else {}

        for category, value in zip(categories, values):
            kwargs = base_kwargs.copy()
            if value.strip() == '-':
                value = '0'
            kwargs.update({
                'total': int(''.join(value.split(','))),
                field_name: category,
            })
            session.add(db_model(**kwargs))

        session.flush()

    session.commit()
    session.close()
