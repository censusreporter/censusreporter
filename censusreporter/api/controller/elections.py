from collections import OrderedDict

from sqlalchemy import func, desc

from api.models import Votes
from api.utils import get_session


BALLOT_TYPE_DESCRIPTION = {
    'PR': 'Proportional representative (PR)',
    'WARD': 'Ward',
    'DC 40%': 'District council (DC) 40%'
}


def make_party_acronym(name):
    '''
    This is good enough since only 2 parties have the same acronym,
    and these are local parties in different provinces.
    '''
    exceptions = {
        "AFRICAN CHRISTIAN ALLIANCE-AFRIKANER CHRISTEN ALLIANSIE": "ACA",
        "DEMOCRATIC ALLIANCE/DEMOKRATIESE ALLIANSIE": "DA",
        "CAPE PARTY/ KAAPSE PARTY": "CP",
        "KOUGA 2000": "K2000",
        "CONGRESS  OF THE PEOPLE": "COPE"  # extra space on purpose
    }
    try:
        return exceptions[name]
    except KeyError: 
        ignore = set(('AND', 'BY', 'FOR', 'IN', 'OF', 'TO', 'THE'))
        acronym = ''.join([w.lstrip()[0] for w in name.split(' ')
                           if w.strip() and w.upper() not in ignore])
        return acronym


def get_elections_profile(geo_code, geo_level, election="municipal 2011",
                          ballot_type='PR'):
    session = get_session()

    try:
        field_name = {
            'ward': 'ward_code',
            'province': 'province_code',
            'municipality': 'municipality_code',
            'district': 'district_code',
            'country': None,
        }[geo_level]

        # only consider proportional representative (PR) votes for now
        votes_by_party = session \
                .query(Votes.party, func.sum(Votes.valid_votes).label('vote_sum')) \
                .filter(Votes.ballot_type == ballot_type) \
                .filter(Votes.electoral_event == election) \
                .group_by(Votes.party) \
                .having(func.sum(Votes.valid_votes) > 0) \
                .order_by(desc('vote_sum'))

        if geo_level != 'country':
            votes_by_party = votes_by_party.filter(getattr(Votes, field_name)
                                                   == geo_code)

        subquery = session \
                .query(Votes.total_votes, Votes.registered_voters,
                       Votes.voter_turnout, Votes.spoilt_votes) \
                .filter(Votes.ballot_type == ballot_type) \
                .filter(Votes.electoral_event == election) \
                .distinct(Votes.voting_district_code) \

        if geo_level != 'country':
            subquery = subquery.filter(getattr(Votes, field_name) == geo_code)

        subquery = subquery.subquery()
        total_votes, spoilt_votes, registered_voters, average_turnout = session \
                .query(func.sum(subquery.c.total_votes),
                       func.sum(subquery.c.spoilt_votes),
                       func.sum(subquery.c.registered_voters),
                       func.avg(subquery.c.voter_turnout)) \
                .one()

        party_data = OrderedDict()
        total_valid_votes = float(total_votes - spoilt_votes)
        # show 8 largest parties and group the rest as 'Other'
        for i, (party, votes) in enumerate(votes_by_party):
            if i < 8:
                party_short = make_party_acronym(party)
                party_data[party_short] = {
                    "name": party_short,
                    "numerators": {"this": votes},
                    "error": {"this": 0.0},
                    "error_ratio": {"this": 0.0},
                    "numerator_errors": {"this": 0.0},
                    "values": {"this": round(votes / total_valid_votes * 100, 2)}
                }
            else:
                party_data.setdefault('Other', {
                    "name": "Other",
                    "numerators": {"this": 0.0},
                    "error_ratio": {"this": 0.0},
                    "error": {"this": 0.0},
                    "numerator_errors": {"this": 0.0},
                })
                party_data['Other']['numerators']['this'] += votes
        # calculate percentage for 'Other'
        if 'Other' in party_data:
            party_data['Other']['values'] = {'this': round(
                party_data['Other']['numerators']['this'] / total_valid_votes * 100,
                2
            )}

        party_data['metadata'] = {
            'universe': '%s ballots only' % BALLOT_TYPE_DESCRIPTION[ballot_type]
        }

        return {
            election.replace(' ', '_'): {
                'name': election, 
                'party_distribution': party_data,
                'registered_voters': {
                    "name": "Number of registered voters",
                    "values": {"this": registered_voters},
                    "error": {"this": 0.0},
                    "numerators": {"this": 0.0},
                    "numerator_errors": {"this": 0.0},
                },
                'average_turnout': {
                    "name": "Of registered voters cast their vote",
                    "values": {"this": round(average_turnout, 2)},
                    "error": {"this": 0.0},
                    "numerators": {"this": 0.0},
                    "numerator_errors": {"this": 0.0},
                }
            }
        }

    except KeyError:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    finally:
        session.close()
