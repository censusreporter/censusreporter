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
    muni_code = Column(String(5), ForeignKey('municipality.code'), nullable=False)
    district_code = Column(String(4), ForeignKey('district.code'), nullable=False)
    province_code = Column(String(2), ForeignKey('province.code'), nullable=False)


class Municipality(Base):
    code = Column(String(5), primary_key=True)
    name = Column(String(32), nullable=False)
    district_code = Column(String(4), ForeignKey('district.code'), nullable=False)
    province_code = Column(String(2), ForeignKey('province.code'), nullable=False)


class District(Base):
    code = Column(String(4), primary_key=True)
    name = Column(String(32), nullable=False)
    province_code = Column(String(2), ForeignKey('province.code'), nullable=False)


class Province(Base):
    code = Column(String(2), primary_key=True)
    name = Column(String(16), nullable=False)
    fips_code = Column(String(4), index=True, unique=True, nullable=False)
