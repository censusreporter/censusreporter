import re
from itertools import groupby
from collections import OrderedDict

from sqlalchemy import Column, ForeignKey, Integer, String, Table, distinct, func

from .base import Base, geo_levels
from api.utils import get_session, get_table_model, capitalize


'''
Models for handling census and other data tables.

`SimpleTable` and `DataTable` instances describe an underlying Postgres table
and have extra metadata associated with them, such as the universe they cover.
All tables have an `id` which identifies them internally to the user when
exploring datasets.

A `SimpleTable` is like a spreadsheet, with one row per geography. It has
no concept of fields and the table is is set manually. Simple tables are
not split by geography, for no particular reason. Hence, simple table ids
are the same as the underlying Postgres table name.

A `DataTable` is for census data and may have multiple rows per geography.
The id for a table is derived from the table's fields. The underlying
database has one table (and hence model) per geography, and the name of those
tables is derived from the id and the geography level. Each model is created
dynamically and linked back to its data table.

A `DataTable` can be looked up based on a required set of fields. This
means that the census controller doesn't care about table names, only
about what fields it requires. If more than one DataTable could serve
for a set of fields, the one with the fewest extraneous fields is chosen.
'''


# Postgres has a max name length of 63 by default, reserving up to
# 13 chars for the _municipality ending
MAX_TABLE_NAME_LENGTH = 63-13

# Characters we strip from table names
TABLE_BAD_CHARS = re.compile('[ /-]')

# All SimpleTable and FieldTable instances by id
DATA_TABLES = {}

def get_datatable(id):
    return DATA_TABLES[id.lower()]


class SimpleTable(object):
    """ A Simple data table follows a normal spreadsheet format. Each row
    has one or more numeric values, one for each column. Each geography
    has only one row.

    There is no way to have field combinations, such as 'Female, Age 18+'. For that,
    use a `FieldTable` below.
    """

    def __init__(self, id, universe, description, table='auto', total_column='total',
            year='2011', dataset='Census 2011'):
        self.id = id

        if table == 'auto':
            table = get_table_model(id)

        self.table = table
        self.universe = universe
        self.description = description
        self.year = year
        self.dataset_name = dataset
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
        self.columns['total'] = {'name': 'Total', 'indent': 0}

        for col in (c.name for c in self.table.columns if c.name not in ['geo_code', 'geo_level']):
            self.columns[col] = {
                'name': capitalize(col.replace('_', ' ')),
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
                        if col == 'total':
                            value = getattr(row, self.total_column)
                        else:
                            value = getattr(row, col)

                        geo_values['estimate'][col] = value
                        geo_values['error'][col] = 0

            finally:
                session.close()

        return data


    def as_dict(self, columns=True):
        return {
            'title': self.description,
            'universe': self.universe,
            'denominator_column_id': 'total',
            'columns': self.columns,
            'table_id': self.id.upper(),
        }


FIELD_TABLE_FIELDS = set()
FIELD_TABLES = {}

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
    def __init__(self, fields, id=None, universe='Population', description=None, denominator_key=None,
            **kwargs):
        """
        Describe a new field table.

        :param list fields: list of field names, in nesting order
        :param str id: table id, or None (default) to determine it based on `fields`
        :param str universe: a description of the universe this table covers (default: "Population")
        :param str description: a description of this table. If None, this is derived from
                                `universe` and the `fields`.
        :param str denominator_key: the key value of the rightmost field that should be 
                                    used as the "total" column, instead of summing over
                                    the values for each row. This is necessary when the
                                    table doesn't describe a true partitioning of the
                                    dataset (ie. the row values sum to more than the
                                    total population).
        """
        description = description or (universe + ' by ' + ', '.join(fields))
        id = id or get_table_id(fields)

        self.fields = fields
        self.field_set = set(fields)
        self.denominator_key = denominator_key

        super(FieldTable, self).__init__(id=id, table=None, universe=universe, description=description, **kwargs)

        FIELD_TABLE_FIELDS.update(self.fields)
        FIELD_TABLES[self.id] = self


    def build_models(self):
        """
        Build models that correspond to the tables underlying this data table.
        """
        self.models = {}
        for level in geo_levels:
            model = build_model_from_fields(
                    self.fields, level,
                    table_name=get_table_name(id=self.id, geo_level=level))
            model.field_table = self
            self.models[level] = model


    def get_model(self, geo_level):
        return self.models[geo_level]


    def setup_columns(self):
        """
        Prepare our columns for use by +as_dict+ and the data API.

        Each 'column' is actually a unique value for each of this table's +fields+.
        """
        self.build_models()

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
        self.total_column = self.column_id([self.denominator_key or 'total'])
        self.columns = OrderedDict()
        self.columns[self.total_column] = {'name': 'Total', 'indent': 0}

        session = get_session()
        try:
            model = self.get_model('country')
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
                            'name': capitalize(val) + ('' if last else ':'),
                            'indent': indent,
                            }

                    if not last:
                        permute(indent+1, new_values, rows)


            permute(1, [], rows)
        finally:
            session.close()


    def column_id(self, field_values):
        return '-'.join(field_values)



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

                def permute(level, field_keys, rows):
                    field = self.fields[level]
                    total = 0
                    denominator = 0

                    for key, rows in groupby(rows, lambda r: getattr(r, field)):
                        new_keys = field_keys + [key]
                        col_id = self.column_id(new_keys)

                        if level+1 < len(self.fields):
                            count = permute(level+1, new_keys, rows)
                        else:
                            # we've bottomed out
                            count = sum(row.total for row in rows)

                            if self.denominator_key and self.denominator_key == key:
                                # this row must be used as the denominator total,
                                # rather than as an entry in the table
                                denominator = count
                                continue

                        total += count
                        geo_values['estimate'][col_id] = count
                        geo_values['error'][col_id] = 0

                    if self.denominator_key:
                        total = denominator

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

def get_model_by_name(name):
    return _census_table_models[name]


def get_model_from_fields(fields, geo_level, table_name=None):
    """
    Find a model that can provide us these fields, at this level.
    """
    if table_name:
        return get_model_by_name(table_name)

    for field in fields:
        if field not in FIELD_TABLE_FIELDS:
            raise ValueError('Invalid field: %s' % field)

    # try find it based on fields
    field_set = set(fields)

    possibilities = [(t, len(t.field_set - field_set))
        for t in FIELD_TABLES.itervalues() if len(t.field_set) >= len(field_set) and len(field_set - t.field_set) == 0]
    table, _ = min(possibilities, key=lambda p: p[1])

    if not table:
        ValueError("Couldn't find a table that covers these fields: %s" % fields)

    return table.get_model(geo_level)



def build_model_from_fields(fields, geo_level, table_name=None):
    '''
    Generates an ORM model for arbitrary census fields by geography.

    :param list fields: the census fields in `api.models.tables.FIELD_TABLE_FIELDS`, e.g. ['highest educational level', 'type of sector']
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

    session = get_session()
    try:
        Model.__table__.create(session.get_bind(), checkfirst=True)
    finally:
        session.close()

    return Model


def get_table_id(fields):
    sorted_fields = sorted(fields)
    table_id = TABLE_BAD_CHARS.sub('', '_'.join(sorted_fields))

    return table_id[:MAX_TABLE_NAME_LENGTH]


def get_table_name(fields=None, geo_level=None, id=None):
    if geo_level not in geo_levels:
        raise ValueError('Invalid geo_level: %s' % geo_level)

    if not id:
        id = get_table_id(fields)

    return '%s_%s' % (id, geo_level)


# Define our tables so the data API can discover them.
FieldTable(['access to internet'])
FieldTable(['age groups in 5 years'])
FieldTable(['age in completed years'])
FieldTable(['electricity for cooking', 'electricity for heating', 'electricity for lighting'])
FieldTable(['energy or fuel for cooking'])
FieldTable(['energy or fuel for heating'])
FieldTable(['energy or fuel for lighting'])
FieldTable(['gender'])
FieldTable(['gender', 'marital status'])
FieldTable(['gender', 'population group'])
FieldTable(['highest educational level'])
FieldTable(['highest educational level 20 and older'], universe='Individuals 20 and older')
FieldTable(['language'], description='Population by primary language spoken at home')
FieldTable(['employed individual monthly income'], universe='Employed individuals')
FieldTable(['official employment status'], universe='Workers 15 and over')
FieldTable(['type of sector'], universe='Workers 15 and over')
FieldTable(['population group'])
FieldTable(['refuse disposal'])
FieldTable(['source of water'])
FieldTable(['toilet facilities'])

FieldTable(['citizenship'])
FieldTable(['province of birth'])
FieldTable(['region of birth'])

FieldTable(['gender of household head', 'age of household head'], universe='Households')
FieldTable(['annual household income', 'gender of household head'], universe='Households')
FieldTable(['household goods'], universe='Households', denominator_key='total households')
FieldTable(['tenure status'], universe='Households')
FieldTable(['type of dwelling'], universe='Households')

FieldTable(['party'], universe='Votes', id='party_votes_national_2014', description='2014 National Election results',
        dataset='2014 National Elections', year='2014')
FieldTable(['party'], universe='Votes', id='party_votes_provincial_2014', description='2014 Provincial Election results',
        dataset='2014 Provincial Elections', year='2014')

# Simple Tables
SimpleTable(
        id='voter_turnout_national_2014',
        universe='Registered voters',
        total_column='registered_voters',
        description='2014 National Election voter turnout',
        dataset='2014 National Elections',
        year='2014'
        )
SimpleTable(
        id='voter_turnout_provincial_2014',
        universe='Registered voters',
        total_column='registered_voters',
        description='2014 Provincial Election voter turnout',
        dataset='2014 Provincial Elections',
        year='2014'
        )
SimpleTable(
        id='votes_provincial_2014',
        universe='Valid votes',
        total_column='total_votes',
        description='2014 Provincial Election votes',
        dataset='2014 Provincial Elections',
        year='2014'
        )
SimpleTable(
        id='votes_national_2014',
        universe='Valid votes',
        total_column='total_votes',
        description='2014 National Election votes',
        dataset='2014 National Elections',
        year='2014'
        )
