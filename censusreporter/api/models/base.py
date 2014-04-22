from sqlalchemy import Column, ForeignKey, SmallInteger, String
from sqlalchemy.ext.declarative import declarative_base, declared_attr
from sqlalchemy.orm import relationship


class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__,
                           ', '.join(['%s="%s"' % (c.name, getattr(self, c.name))
                                      for c in self.__table__.columns]))


Base = declarative_base(cls=Base)


'''
Geographic models
'''

class GeoNameMixin(object):

    @property
    def short_name(self):
        return getattr(self, 'name', '')

    @property
    def long_name(self):
        long_name = self.short_name
        parent_names = [p.name for p in self.parents()
                        if p.level != 'district']
        if len(parent_names) > 0:
            return '%s, %s' % (long_name, ', '.join(parent_names))
        return long_name

    @property
    def parent(self):
        if self.parents():
            return self.parents()[0]
        return None

    def __unicode__(self):
        return self.long_name


class Ward(Base, GeoNameMixin):
    # an 8-digit number where the last 2 digits refer
    # to the ward number, e.g. 21001001 where ward_no = 1
    code = Column(String(8), primary_key=True)
    ward_no = Column(SmallInteger, nullable=False)
    # the year that the ward delimitation and associated
    # municipalities/districts were introduced
    # governed by the Municipal Demarcation Board (http://www.demarcation.org.za/)
    year = Column(String(4), index=True, nullable=False)
    muni_code = Column(String(8), ForeignKey('municipality.code'))
    district_code = Column(String(8), ForeignKey('district.code'))
    province_code = Column(String(3), ForeignKey('province.code'))

    # associations
    municipality  = relationship('Municipality', lazy=False)
    district      = relationship('District', lazy=False)
    province      = relationship('Province', lazy=False)

    level = 'ward'
    child_level = None

    def parents(self):
        return [self.municipality, self.province]

    @property
    def short_name(self):
        return 'Ward %d (%s)' % (self.ward_no, self.code)


class Municipality(Base, GeoNameMixin):
    # a 5-character string where the first 2 characters is the
    # province code and the last 3 are digits, e.g. MP322
    # Note: a few municipalities exist for large city areas with
    # 3-letter codes, e.g. CPT (same code used for district)
    code = Column(String(8), primary_key=True)
    name = Column(String(32), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)
    district_code = Column(String(8), ForeignKey('district.code'))
    province_code = Column(String(3), ForeignKey('province.code'))

    # associations
    district  = relationship('District', lazy=False)
    province  = relationship('Province', lazy=False)

    level = 'municipality'
    child_level = 'ward'

    def parents(self):
        return [self.province]


class District(Base, GeoNameMixin):
    # a 4-character string starting with 'DC' and followed by
    # 1 or 2 digits, e.g. DC10
    # Note: a few districts exist for large city areas with
    # 3-letter codes, e.g. CPT (same code used for municipality)
    code = Column(String(8), primary_key=True)
    name = Column(String(32), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)
    province_code = Column(String(3), ForeignKey('province.code'))

    province  = relationship('Province', lazy=False)

    level = 'district'
    child_level = 'municipality'

    def parents(self):
        return [self.province]


class Province(Base, GeoNameMixin):
    # a 2 or 3-letter string
    code = Column(String(3), primary_key=True)
    name = Column(String(16), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)
    # as defined here:
    # http://en.wikipedia.org/wiki/List_of_FIPS_region_codes_(S%E2%80%93U)#SF:_South_Africa
    fips_code = Column(String(4), index=True, unique=True, nullable=False)

    level = 'province'
    child_level = 'municipality'
    census_release = 2011

    def parents(self):
        # TODO: return nation
        return []


class Subplace(Base):
    code = Column(String(9), primary_key=True)
    subplace_name  = Column(String(50), index=True, nullable=False)
    mainplace_name = Column(String(50), index=True, nullable=False)
    mainplace_code = Column(String(8), nullable=False)
    ward_code = Column(String(8), ForeignKey('ward.code'), nullable=False)
    muni_code = Column(String(8), ForeignKey('municipality.code'), nullable=False)
    district_code = Column(String(8), ForeignKey('district.code'), nullable=False)
    province_code = Column(String(3), ForeignKey('province.code'), nullable=False)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)
