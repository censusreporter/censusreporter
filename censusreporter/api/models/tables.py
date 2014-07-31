import re
from itertools import groupby
from collections import OrderedDict

from sqlalchemy import Column, ForeignKey, Integer, String, Table, distinct, func

from .base import Base, geo_levels
from api.utils import get_session, get_table_model


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

# All SimpleTable and FieldTable instances by id
DATA_TABLES = {}

def get_datatable(id):
    return DATA_TABLES[id.upper()]


class SimpleTable(object):
    """ A Simple data table follows a normal spreadsheet format. Each row
    has one or more numeric values, one for each column. Each geography
    has only one row.

    There is no way to have field combinations, such as 'Female, Age 18+'. For that,
    use a `FieldTable` below.
    """

    def __init__(self, id, universe, description, table='auto', total_column='total'):
        self.id = id.upper()

        if table == 'auto':
            table = get_table_model(id)

        self.table = table
        self.universe = universe
        self.description = description
        self.total_column = total_column
        self.setup_columns()

        if not self.columns:
            raise ValueError("I couldn't work out the columns from them model.")

        if not self.total_column or self.total_column not in self.columns:
            raise ValueError("No total column given or it's not in the column list. Given '%s', column list: %s" % (self.total_column, self.columns.keys()))

        DATA_TABLES[self.id] = self


    def setup_columns(self):
        """
        Work out our columns by finding those that aren't geo columns.
        """
        self.columns = OrderedDict()
        self.columns['Total'] = {'name': 'Total', 'indent': 0}

        for col in (c.name for c in self.table.columns if c.name not in ['geo_code', 'geo_level']):
            self.columns[col] = {
                'name': col.replace('_', ' ').capitalize(),
                'indent': 1
                }


    def raw_data_for_geos(self, geos):
        data = {}

        # group by geo level
        geos = sorted(geos, key=lambda g: g.level)
        for geo_level, geos in groupby(geos, lambda g: g.level):
            geo_codes = [g.code for g in geos]

            # initial values
            for geo_code in geo_codes:
                data['%s-%s' % (geo_level, geo_code)] = {
                    'estimate': {},
                    'error': {}}

            session = get_session()
            try:
                geo_values = None
                rows = session\
                        .query(self.table)\
                        .filter(self.table.c.geo_level == geo_level)\
                        .filter(self.table.c.geo_code.in_(geo_codes))\
                        .all()

                for row in rows:
                    geo_values = data['%s-%s' % (geo_level, row.geo_code)]
                    for col in self.columns.iterkeys():
                        # duplicate the total column into Total
                        if col == 'Total':
                            value = getattr(row, self.total_column)
                        else:
                            value = getattr(row, col)

                        geo_values['estimate'][col] = value
                        geo_values['error'][col] = 0

            finally:
                session.close()

        return data


    def as_dict(self):
        return {
            'title': self.description,
            'universe': self.universe,
            'denominator_column_id': 'Total',
            'columns': self.columns,
        }


class FieldTable(SimpleTable):
    """
    A field table is an 'inverted' simple table that has only one numeric figure
    per row, but allows multiple combinations of classifying fields for each row.

    It shares functionality with a `SimpleTable` but handles the more complex
    column definitions and raw data extraction.

    For example:

        geo_code  gender  age group   total
        ZA        female  < 18        100
        ZA        female  > 18        200
        ZA        male    < 18        80
        ZA        male    > 18        20

    What are called +columns+ here are actually an abstraction used by the 
    data API. They are nested combinations of field values, such as:

        col0: total
        col1: female
        col2: female, < 18
        col3: female, > 18
        col4: male
        col5: male < 18
        col6: male > 18

    """
    def __init__(self, fields, year='2009', id=None, universe=None, description=None):
        universe = universe or 'Population'
        description = description or (universe + ' by ' + ', '.join(fields))
        id = id or table_name_to_id(get_table_name(fields, 'country'))

        self.fields = fields
        self.year = year

        super(FieldTable, self).__init__(id=id, table=None, universe=universe, description=description)


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
        self.total_column = self.column_id(['total'])
        self.columns = OrderedDict()
        self.columns[self.total_column] = {'name': 'Total', 'indent': 0}

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
                    geo_values['estimate'][self.total_column] = total
                    geo_values['error'][self.total_column] = 0

            finally:
                session.close()

        return data


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
FieldTable(['access to internet'])
FieldTable(['age groups in 5 years'])
FieldTable(['age in completed years'])
FieldTable(['age of household head'], universe='Households')
FieldTable(['electricity for cooking', 'electricity for heating', 'electricity for lighting'])
FieldTable(['energy or fuel for cooking'])
FieldTable(['energy or fuel for heating'])
FieldTable(['energy or fuel for lighting'])
FieldTable(['gender'])
FieldTable(['gender', 'marital status'])
FieldTable(['gender', 'population group'])
FieldTable(['gender of head of household'], universe='Households')
FieldTable(['highest educational level'])
FieldTable(['highest educational level 20 and older'], universe='Individuals 20 and older')
FieldTable(['household goods'], universe='Households')
FieldTable(['language'])
FieldTable(['employed individual monthly income'], universe='Employed individuals')
FieldTable(['official employment status'], universe='Workers 15 and over')
FieldTable(['type of sector'], universe='Workers 15 and over')
FieldTable(['population group'])
FieldTable(['refuse disposal'])
FieldTable(['source of water'])
FieldTable(['tenure status'], universe='Households')
FieldTable(['toilet facilities'])
FieldTable(['type of dwelling'], universe='Households')

# Simple Tables
SimpleTable(
        id='voter_turnout_national_2014',
        universe='Registered voters',
        description='2014 National Election voter turnout',
        total_column='registered_voters',
        )
SimpleTable(
        id='voter_turnout_provincial_2014',
        universe='Registered voters',
        description='2014 Provincial Election voter turnout',
        total_column='registered_voters',
        )
SimpleTable(
        id='votes_provincial_2014',
        universe='Votes',
        description='2014 Provincial Election votes',
        total_column='total_votes',
        )
SimpleTable(
        id='votes_national_2014',
        universe='Votes',
        description='2014 National Election votes',
        total_column='total_votes',
        )
