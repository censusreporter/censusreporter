import re
from itertools import groupby
from collections import OrderedDict

from sqlalchemy import Column, ForeignKey, Integer, String, Table, distinct, func

from .base import Base, geo_levels
from api.utils import get_session


'''
Models for handling census and other data tables.
'''

table_fields = set([
    'access to internet',
    'age groups in 5 years',
    'age in completed years',
    'age of household head',
    'electricity for cooking',
    'electricity for heating',
    'electricity for lighting',
    'energy or fuel for cooking',
    'energy or fuel for heating',
    'energy or fuel for lighting',
    'gender',
    'gender of head of household',
    'highest educational level',
    'highest educational level 20 and older',
    'household goods',
    'employed individual monthly income',
    'individual monthly income',
    'language',
    'marital status',
    'official employment status',
    'population group',
    'refuse disposal',
    'source of water',
    'tenure status',
    'toilet facilities',
    'type of dwelling',
    'type of sector',
])

# Postgres has a max name length of 63 by default, reserving up to
# 13 chars for the _municipality ending
MAX_TABLE_NAME_LENGTH = 63-13

# Characters we strip from table names
TABLE_BAD_CHARS = re.compile('[ /-]')

DATA_TABLES = {}

class DataTable(object):
    def __init__(self, fields, year='2009', id=None, universe=None, description=None):
        self.fields = fields
        self.year = year
        self.id = id or table_name_to_id(get_table_name(fields, 'country'))
        self.universe = universe
        self.description = description or ((universe or 'Population') + ' by ' + ', '.join(self.fields))
        DATA_TABLES[self.id] = self

        self.setup_columns()

    def get_model(self, geo_level):
        return get_model_from_fields(self.fields, geo_level)

    def setup_columns(self):
        """
        Prepare our columns for use by +as_dict+ and the data API.

        Each 'column' is actually a unique value for each of this table's +fields+.
        """
        model = self.get_model('country')

        # Each "column" is a unique permutation of the values
        # of this table's fields, including rollups. The ordering of the
        # columns is important since columns heirarchical, but are returned
        # "flat".
        #
        # Here's an example. Suppose our table has the following values:
        #
        #     5 years, male, 129
        #     5 years, female, 131
        #     10 years, male, 221
        #     10 years, female, 334
        #
        # This would produce the following columns (indented to show nesting)
        #
        # 5 years:
        #   male
        # 5 years:
        #   female
        # 10 years:
        #   male
        # 10 years:
        #   female

        # map from column id to column info.
        self.total_id = self.column_id(['total'])
        self.columns = OrderedDict()
        self.columns[self.total_id] = {'name': 'Total', 'indent': 0}

        session = get_session()
        try:
            fields = [getattr(model, f) for f in self.fields]

            # get distinct permutations for all fields
            rows = session\
                    .query(*fields)\
                    .order_by(*fields)\
                    .distinct()\
                    .all()

            def permute(indent, field_values, rows):
                field = self.fields[indent-1]
                last = indent == len(self.fields)

                for val, rows in groupby(rows, lambda r: getattr(r, field)):
                    # this is used to calculate the column id
                    new_values = field_values + [val]
                    col_id = self.column_id(new_values)

                    self.columns[col_id] = {
                            'name': val.capitalize() + ('' if last else ':'),
                            'indent': indent,
                            }

                    if not last:
                        permute(indent+1, new_values, rows)


            permute(1, [], rows)
        finally:
            session.close()


    def column_id(self, field_values):
        return '-'.join([self.id] + field_values)



    def raw_data_for_geos(self, geos):
        """
        Pull raw data for a list of geo models.

        Returns a dict mapping the geo ids to table data.
        """
        data = {}

        # group by geo level
        geos = sorted(geos, key=lambda g: g.level)
        for geo_level, geos in groupby(geos, lambda g: g.level):
            model = self.get_model(geo_level)
            geo_codes = [g.code for g in geos]
            code = '%s_code' % geo_level
            code_attr = getattr(model, code)

            # initial values
            for geo_code in geo_codes:
                data['%s-%s' % (geo_level, geo_code)] = {
                    'estimate': {},
                    'error': {}}

            session = get_session()
            try:
                geo_values = None
                fields = [getattr(model, f) for f in self.fields]
                rows = session\
                        .query(code_attr,
                               func.sum(model.total).label('total'),
                               *fields)\
                        .group_by(code_attr, *fields)\
                        .order_by(code_attr, *fields)\
                        .filter(code_attr.in_(geo_codes)).all()

                def permute(level, field_values, rows):
                    field = self.fields[level]
                    total = 0

                    for val, rows in groupby(rows, lambda r: getattr(r, field)):
                        new_values = field_values + [val]
                        col_id = self.column_id(new_values)

                        if level+1 < len(self.fields):
                            count = permute(level+1, new_values, rows)
                        else:
                            # we've bottomed out
                            count = sum(row.total for row in rows)

                        total += count
                        geo_values['estimate'][col_id] = count
                        geo_values['error'][col_id] = 0

                    return total


                # rows for each geo
                for geo_code, geo_rows in groupby(rows, lambda r: getattr(r, code)):
                    geo_values = data['%s-%s' % (geo_level, geo_code)]
                    total = permute(0, [], geo_rows)

                    # total
                    geo_values['estimate'][self.total_id] = total
                    geo_values['error'][self.total_id] = 0

            finally:
                session.close()

        return data


    def as_dict(self):
        return {
            'title': self.description,
            'universe': self.universe or 'Population',
            'denominator_column_id': self.total_id,
            'columns': self.columns,
        }

    @classmethod
    def get(cls, id):
        return DATA_TABLES[id.upper()]


_census_table_models = {}

def get_model_from_fields(fields, geo_level, table_name=None):
    '''
    Generates an ORM model for arbitrary census fields by geography.

    :param list fields: the census fields in `api.models.tables.table_fields`, e.g. ['highest educational level', 'type of sector']
    :param str geo_level: one of the geographics levels defined in `api.base.geo_levels`, e.g. 'province'
    :param str table_name: the name of the database table, if different from the default table
    :return: ORM model class containing the given fields with type String(128), a 'total' field
    with type Integer and '%(geo_level)s_code' with type ForeignKey('%(geo_level)s.code')
    :rtype: Model
    '''
    if table_name is None:
        table_name = get_table_name(fields, geo_level)
    if table_name in _census_table_models:
        return _census_table_models[table_name]

    field_columns = [Column(field, String(128), primary_key=True)
                     for field in fields]

    # foreign keys
    field_columns.append(Column('%s_code' % geo_level, String(8),
                                ForeignKey('%s.code' % geo_level),
                                primary_key=True, index=True))

    class Model(Base):
        __table__ = Table(table_name, Base.metadata,
            Column('total', Integer, nullable=False),
            *field_columns
        )
    _census_table_models[table_name] = Model
    return Model


def get_table_name(fields, geo_level):
    if geo_level not in geo_levels:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    for field in fields:
        if field not in table_fields:
            raise ValueError('Invalid field: %s' % field)

    sorted_fields = sorted(fields)
    table_name = TABLE_BAD_CHARS.sub('', '_'.join(sorted_fields))

    return '%s_%s' % (table_name[:MAX_TABLE_NAME_LENGTH], geo_level)


def table_name_to_id(name):
    # remove geo level at end, and change _ to - so that when showing really
    # long table names, words wrap nicely
    return '-'.join(name.split('_')[:-1]).upper()


# Define our tables so the data API can discover them.
DataTable(['access to internet'])
DataTable(['age groups in 5 years'])
DataTable(['age in completed years'])
DataTable(['age of household head'], universe='Households')
DataTable(['electricity for cooking', 'electricity for heating', 'electricity for lighting'])
DataTable(['energy or fuel for cooking'])
DataTable(['energy or fuel for heating'])
DataTable(['energy or fuel for lighting'])
DataTable(['gender'])
DataTable(['gender', 'marital status'])
DataTable(['gender', 'population group'])
DataTable(['gender of head of household'], universe='Households')
DataTable(['highest educational level'])
DataTable(['highest educational level 20 and older'], universe='Individuals 20 and older')
DataTable(['household goods'], universe='Households')
DataTable(['language'])
DataTable(['employed individual monthly income'], universe='Employed individuals')
DataTable(['official employment status'], universe='Workers 15 and over')
DataTable(['type of sector'], universe='Workers 15 and over')
DataTable(['population group'])
DataTable(['refuse disposal'])
DataTable(['source of water'])
DataTable(['tenure status'], universe='Households')
DataTable(['toilet facilities'])
DataTable(['type of dwelling'], universe='Households')
