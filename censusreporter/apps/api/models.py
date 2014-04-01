from sqlalchemy import Column, ForeignKey, Integer, SmallInteger, String
from sqlalchemy.ext.declarative import declarative_base, declared_attr


class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()


Base = declarative_base(cls=Base)


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
