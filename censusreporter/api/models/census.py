from sqlalchemy import Column, ForeignKey, Integer, String, Table

from api.utils import get_table_name

from .base import Base


'''
Census data models
'''

_census_table_models = {}


def get_model_from_fields(fields, geo_level, table_name=None):
    '''
    Generates an ORM model for arbitrary census fields by geography.

    :param list fields: the census fields in `api.utils.census_fields`, e.g. ['highest educational level', 'type of sector']
    :param str geo_level: one of the geographics levels defined in `api.utils.geo_levels`, e.g. 'province'
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
    # no foreign key for country - we assume there is only 1 country's data
    if geo_level != 'country':
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
