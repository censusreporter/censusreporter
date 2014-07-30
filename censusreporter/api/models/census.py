import re

from sqlalchemy import Column, ForeignKey, Integer, String, Table

from .base import Base, geo_levels


'''
Census data models
'''

census_fields = set([
    'access to internet',
    'age groups in 5 years',
    'age in completed years',
    'age of household head',
    'energy or fuel for cooking',
    'energy or fuel for heating',
    'energy or fuel for lighting',
    'gender',
    'gender of head of household',
    'highest educational level',
    'household goods',
    'individual monthly income',
    'language',
    'official employment status',
    'population group',
    'refuse disposal',
    'source of water',
    'tenure status',
    'toilet facilities',
    'type of dwelling',
    'type of sector',
])

# Postgres has a max name length of 63 by default
MAX_TABLE_NAME_LENGTH = 63

table_bad_chars = re.compile('[ /-]')


_census_table_models = {}


def get_model_from_fields(fields, geo_level, table_name=None):
    '''
    Generates an ORM model for arbitrary census fields by geography.

    :param list fields: the census fields in `api.utils.census_fields`, e.g. ['highest educational level', 'type of sector']
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
                                primary_key=True))

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
        if field not in census_fields:
            raise ValueError('Invalid field: %s' % field)

    sorted_fields = sorted(fields)
    table_name = table_bad_chars.sub('', '_'.join(sorted_fields))
    table_name_length = len(table_name) + len(geo_level) + 1

    if table_name_length > MAX_TABLE_NAME_LENGTH:
        if table_name_length - len(sorted_fields[-1]) + 1 > MAX_TABLE_NAME_LENGTH:
            raise RuntimeError("Table name exceeds %s characters"
                               % MAX_TABLE_NAME_LENGTH)
        table_name = table_name[:MAX_TABLE_NAME_LENGTH - table_name_length]

    return '%s_%s' % (table_name, geo_level)
