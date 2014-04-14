from sqlalchemy import Column, ForeignKey, Integer, String, Numeric
from sqlalchemy.orm import relationship

from .base import Base


'''
Elections models
'''

class Votes(Base):
    ward_code = Column(String(8), ForeignKey('ward.code'))
    province_code = Column(String(3), ForeignKey('province.code'))
    municipality_code = Column(String(8), ForeignKey('municipality.code'))
    district_code = Column(String(8), ForeignKey('district.code'))

    # an 8-digit code
    # Note: a voting district is at sub-ward level
    voting_district_code = Column(String(8), primary_key=True)
    # current only 'municipal 2011'
    electoral_event = Column(String(32), primary_key=True)
    party = Column(String(64), primary_key=True)
    # one of PR (proportional representative), WARD or DC 40%
    ballot_type = Column(String(8), primary_key=True)
    # register votes in whole voting district
    registered_voters = Column(Integer)
    # total votes in whole voting district per ballot type
    total_votes = Column(Integer)
    # valid votes for the particular party per ballot type
    # we are mostly interested in this
    valid_votes = Column(Integer)
    # spoilt votes in whole voting district per ballot type
    spoilt_votes = Column(Integer)
    # mec7 votes in whole voting district - only valid for provincial ballots
    mec7_votes = Column(Integer)
    # percentage in whole voting district
    # This value is a percentage close to, but not equal to, (total_votes / registered_voters * 100)
    # The Electoral Commission must have some other way of calculating it.
    voter_turnout = Column(Numeric(precision=5, scale=2))

    # associations
    ward  = relationship('Ward', lazy=True)
    municipality  = relationship('Municipality', lazy=True)
    province      = relationship('Province', lazy=True)
    district  = relationship('District', lazy=True)
