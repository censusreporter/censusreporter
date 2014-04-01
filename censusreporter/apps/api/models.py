from sqlalchemy import (Column, ForeignKey, Integer, SmallInteger,
                        String, Table, MetaData)
from sqlalchemy.ext.declarative import declarative_base, declared_attr

from .utils import get_table_name


class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()


Base = declarative_base(cls=Base)


'''
Geographic models
'''

class Ward(Base):
    code = Column(String(8), primary_key=True)
    ward_no = Column(SmallInteger, nullable=False)
    muni_code = Column(String(8), ForeignKey('municipality.code'))
    district_code = Column(String(8), ForeignKey('district.code'))
    province_code = Column(String(3), ForeignKey('province.code'))


class Municipality(Base):
    code = Column(String(8), primary_key=True)
    name = Column(String(32), nullable=False)
    district_code = Column(String(8), ForeignKey('district.code'))
    province_code = Column(String(3), ForeignKey('province.code'))


class District(Base):
    code = Column(String(8), primary_key=True)
    name = Column(String(32), nullable=False)
    province_code = Column(String(3), ForeignKey('province.code'))


class Province(Base):
    code = Column(String(3), primary_key=True)
    name = Column(String(16), nullable=False)
    fips_code = Column(String(4), index=True, unique=True, nullable=False)


'''
Census data models
'''

_census_table_models = {}


def get_table_model(field, geo_level):
    table_name = get_table_name(field, geo_level)
    if table_name in _census_table_models:
        return _census_table_models[table_name]

    class Model(Base):
        __table__ = Table(table_name, Base.metadata,
            Column('total', Integer, nullable=False),
            Column('category', String(128), primary_key=True),
            Column('%s_code' % geo_level, String(8),
                   ForeignKey('%s.code' % geo_level), primary_key=True)
        )
    _census_table_models[table_name] = Model
    return Model
