from sqlalchemy import Column, ForeignKey, Integer, String, Numeric, UniqueConstraint
from sqlalchemy.orm import relationship

from .base import Base


'''
Elections models
'''

class Votes(Base):
    vote_id = Column(Integer, primary_key=True, autoincrement=True)

    ward_code = Column(String(8), ForeignKey('ward.code'))
    province_code = Column(String(3), ForeignKey('province.code'))
    municipality_code = Column(String(8), ForeignKey('municipality.code'))
    district_code = Column(String(8), ForeignKey('district.code'))

    # an 8-digit code
    # Note: a voting district is at sub-ward level
    voting_district_code = Column(String(8))
    # current only 'municipal 2011'
    electoral_event = Column(String(32), index=True)
    party = Column(String(64))
    # one of PR (proportional representative), WARD or DC 40%
    ballot_type = Column(String(8), nullable=True)
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
    # votes cast outside of the voter's registered voting district
    section_24a_votes = Column(Integer)
    # international votes, etc.
    special_votes = Column(Integer)
    # percentage in whole voting district
    # max(total_votes) + max(mec7_votes) / registered_voters
    voter_turnout = Column(Numeric(precision=5, scale=2, asdecimal=False))

    # associations
    ward  = relationship('Ward', lazy=True)
    municipality  = relationship('Municipality', lazy=True)
    province      = relationship('Province', lazy=True)
    district  = relationship('District', lazy=True)

    # unique constraints
    __table_args__ = (
        UniqueConstraint('voting_district_code', 'electoral_event', 'party', 'ballot_type', name='one_man_one_vote'),
    )


class VoteSummary(Base):
    votesummary_id = Column(Integer, primary_key=True, autoincrement=True)

    geo_level = Column(String(16), nullable=False)
    geo_code = Column(String(8), index=True)
    electoral_event = Column(String(32), index=True)
    party = Column(String(64))
    ballot_type = Column(String(8), nullable=True)

    # registered voters in geo
    registered_voters = Column(Integer)
    # total votes in geo per ballot type
    total_votes = Column(Integer)
    # mec7 votes in geo - only valid for PR ballots
    mec7_votes = Column(Integer, nullable=True)
    # valid votes in geo for the particular party per ballot type
    valid_votes = Column(Integer)
    # spoilt votes in geo per ballot type
    spoilt_votes = Column(Integer)
    # votes cast outside of the voter's registered voting district
    section_24a_votes = Column(Integer, nullable=True)
    # international votes, etc.
    special_votes = Column(Integer, nullable=True)
    # average percentage in geo
    average_voter_turnout = Column(Numeric(precision=5, scale=2, asdecimal=False))

    # unique constraints
    __table_args__ = (
        UniqueConstraint('geo_level', 'geo_code', 'electoral_event', 'party', 'ballot_type', name='one_man_one_vote_summary'),
    )