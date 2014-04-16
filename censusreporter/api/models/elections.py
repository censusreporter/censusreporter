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
    # registered voters in whole voting district
    registered_voters = Column(Integer)
    # total votes in whole voting district per ballot type
    total_votes = Column(Integer)
    # valid votes for the particular party per ballot type
    # we are mostly interested in this
    valid_votes = Column(Integer)
    # spoilt votes in whole voting district per ballot type
    spoilt_votes = Column(Integer)
    # mec7 votes in whole voting district - only valid for PR ballots
    mec7_votes = Column(Integer)
    # percentage in whole voting district
    # max(total_votes) + max(mec7_votes) / registered_voters
    voter_turnout = Column(Numeric(precision=5, scale=2, asdecimal=False))

    # associations
    ward  = relationship('Ward', lazy=True)
    municipality  = relationship('Municipality', lazy=True)
    province      = relationship('Province', lazy=True)
    district  = relationship('District', lazy=True)


class VoteSummary(Base):
    geo_level = Column(String(16), nullable=False, primary_key=True)
    geo_code = Column(String(8), primary_key=True)
    electoral_event = Column(String(32), primary_key=True)
    party = Column(String(64), primary_key=True)
    ballot_type = Column(String(8), primary_key=True)

    # registered voters in geo
    registered_voters = Column(Integer)
    # total votes in geo per ballot type
    total_votes = Column(Integer)
    # mec7 votes in geo - only valid for PR ballots
    mec7_votes = Column(Integer)
    # valid votes in geo for the particular party per ballot type
    valid_votes = Column(Integer)
    # spoilt votes in geo per ballot type
    spoilt_votes = Column(Integer)
    # average percentage in geo
    average_voter_turnout = Column(Numeric(precision=5, scale=2, asdecimal=False))
