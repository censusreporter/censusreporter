from itertools import chain

from sqlalchemy import Column, ForeignKey, SmallInteger, String
from sqlalchemy.ext.declarative import declarative_base, declared_attr
from sqlalchemy.orm import relationship

from api.utils import get_session


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

class GeoMixin(object):
    def as_dict(self):
        return {
            'full_geoid': self.full_geoid,
            'full_name': self.long_name,
            'short_name': self.short_name,
            'name': self.short_name,
            'geo_level': self.level,
            'geo_code': self.code,
            'child_level': self.child_level,
        }

    def as_dict_deep(self):
        parents = dict((p.level, p.as_dict()) for p in self.parents())
        parents_ordering = [p.level for p in self.parents()]

        return {
            'this': self.as_dict(),
            'parents': parents,
            'parents_ordering': parents_ordering,
        }

    def children(self):
        if not self.child_level:
            return []

        session = get_session()
        try:
            model = get_geo_model(self.child_level)
            return session.query(model).filter(getattr(model, '%s_code' % self.level) == self.code).all()
        finally:
            session.close()

    def split_into(self, level):
        if not level in geo_levels:
            raise ValueError(level)

        kids = self.children()
        if level == self.child_level:
            return kids
        else:
            splits = []
            for k in kids:
                splits.extend(k.split_into(level))
            return splits
        

    @property
    def short_name(self):
        return getattr(self, 'name', '')

    @property
    def long_name(self):
        long_name = self.short_name
        parent_names = [p.name for p in self.parents()
                        if p.level != 'district' and p.level != 'country']
        if len(parent_names) > 0:
            return '%s, %s' % (long_name, ', '.join(parent_names))
        return long_name

    @property
    def parent(self):
        if self.parents():
            return self.parents()[0]
        return None

    @property
    def country(self):
        return Country.ZA()

    @property
    def full_geoid(self):
        return '%s-%s' % (self.level, self.code)

    def __unicode__(self):
        return self.long_name


class Ward(Base, GeoMixin):
    # an 8-digit number where the last 2 digits refer
    # to the ward number, e.g. 21001001 where ward_no = 1
    code = Column(String(8), primary_key=True)
    ward_no = Column(SmallInteger, nullable=False)
    # the year that the ward delimitation and associated
    # municipalities/districts were introduced
    # governed by the Municipal Demarcation Board (http://www.demarcation.org.za/)
    year = Column(String(4), index=True, nullable=False)
    municipality_code = Column(String(8), ForeignKey('municipality.code'))
    district_code = Column(String(8), ForeignKey('district.code'))
    province_code = Column(String(3), ForeignKey('province.code'))

    # associations
    municipality  = relationship('Municipality', lazy=False)
    district      = relationship('District', lazy=False)
    province      = relationship('Province', lazy=False)

    level = 'ward'
    child_level = None

    def parents(self):
        return [self.municipality, self.province, self.country]

    @property
    def short_name(self):
        return 'Ward %d (%s)' % (self.ward_no, self.code)


class Municipality(Base, GeoMixin):
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
        return [self.province, self.country]


class District(Base, GeoMixin):
    # a 4-character string starting with 'DC' and followed by
    # 1 or 2 digits, e.g. DC10
    # Note: a few districts exist for large city areas with
    # 3-letter codes, e.g. CPT (same code used for municipality)
    code = Column(String(8), primary_key=True)
    name = Column(String(32), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)
    province_code = Column(String(3), ForeignKey('province.code'))

    # associations
    province  = relationship('Province', lazy=False)

    level = 'district'
    child_level = 'municipality'

    def parents(self):
        return [self.province, self.country]


class Province(Base, GeoMixin):
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

    def parents(self):
        return [self.country]


class Country(Base, GeoMixin):
    # a 2 letter string
    code = Column(String(3), primary_key=True)
    name = Column(String(16), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)

    level = 'country'
    child_level = 'province'

    def parents(self):
        return []


    countries = {}
    @classmethod
    def ZA(cls):
        if not 'ZA' in cls.countries:
            c = cls()
            c.code = 'ZA'
            c.name = 'South Africa'
            c.year = '2011'
            cls.countries['ZA'] = c

        return cls.countries['ZA']


class Subplace(Base):
    code = Column(String(9), primary_key=True)
    subplace_name  = Column(String(50), index=True, nullable=False)
    mainplace_name = Column(String(50), index=True, nullable=False)
    mainplace_code = Column(String(8), nullable=False)
    ward_code = Column(String(8), ForeignKey('ward.code'), nullable=False)
    municipality_code = Column(String(8), ForeignKey('municipality.code'), nullable=False)
    district_code = Column(String(8), ForeignKey('district.code'), nullable=False)
    province_code = Column(String(3), ForeignKey('province.code'), nullable=False)
    # same as the year of the constituent wards
    year = Column(String(4), index=True, nullable=False)


geo_models = {
    'subplace': Subplace,
    'ward': Ward,
    'municipality': Municipality,
    'district': District,
    'province': Province,
    'country': Country,
}
geo_levels = geo_models.keys()


def get_geo_model(geo_level):
    return geo_models[geo_level]
