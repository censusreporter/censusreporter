import os
import sys

import unicodecsv as csv

from api.models import get_table_model, Base, Province
from api.utils import get_session, _engine


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

    for row in reader:
        geo_name = row[0]
        if geo_name == 'Total':
            break
        if row[-1] == "":
            del row[-1]
        if includes_total:
            yield geo_name, row[1:-1]
        else:
            yield geo_name, row[1:]

    f.close()


if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise ValueError("Requires 1 file path argument")
    filepath = sys.argv[1]
    if not os.path.isabs(filepath):
        filepath = os.path.join(os.getcwd(), filepath)

    data = open_census_csv(filepath)
    field_name, categories = next(data)

    # figure out which geo level the data is at
    geo_name, values = next(data)
    while len(geo_name) == 3 and not geo_name.startswith('DC'):
        geo_name, values = next(data)

    if len(geo_name.split(':')[0]) in (5, 6):
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
    db_model = get_table_model(field_name, geo_level)
    Base.metadata.create_all(_engine, tables=[db_model.__table__])

    # restart generator
    data = open_census_csv(filepath)
    next(data)  # skip field name and categories
    session = get_session()
    for geo_name, values in data:
        if geo_level == 'province':
            code = province_codes[geo_name]
        else:
            code = geo_name.split(':')[0]
        for category, value in zip(categories, values):
            kwargs = {
                'total': int(''.join(value.split(','))),
                'category': category,
                '%s_code' % geo_level: code,
            }
            session.add(db_model(**kwargs))
        session.flush()
    session.commit()
    session.close()
