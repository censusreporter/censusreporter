from collections import OrderedDict

from sqlalchemy import func, desc

from api.models import VoteSummary
from api.utils import get_session

from .utils import get_summary_geo_info


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
        "KOUGA 2000": "K2000"
    }
    try:
        return exceptions[name]
    except KeyError: 
        ignore = set(('AND', 'BY', 'FOR', 'IN', 'OF', 'TO'))
        acronym = ''.join([w.lstrip()[0] for w in name.split(' ')
                           if w.strip() and w.upper() not in ignore])
        return acronym


def get_elections_profile(geo_code, geo_level, election="municipal 2011",
                          ballot_type='PR'):
    session = get_session()

    try:
        parties = session \
                .query(VoteSummary) \
                .filter(VoteSummary.geo_level == geo_level) \
                .filter(VoteSummary.geo_code == geo_code) \
                .filter(VoteSummary.electoral_event == election) \
                .filter(VoteSummary.ballot_type == ballot_type) \
                .order_by(VoteSummary.valid_votes.desc()) \
                .all()
        first_party = parties[0]
        total_valid_votes = float(first_party.total_votes -
                                  first_party.spoilt_votes)

        party_data = OrderedDict()
        # show 8 largest parties and group the rest as 'Other'
        for i, obj in enumerate(parties):
            if i < 8:
                party_short = make_party_acronym(obj.party)
                party_data[party_short] = {
                    "name": party_short,
                    "numerators": {"this": obj.valid_votes},
                    "error": {"this": 0.0},
                    "values": {"this": round(obj.valid_votes /
                                             total_valid_votes * 100, 2)}
                }
            else:
                party_data.setdefault('Other', {
                    "name": "Other",
                    "numerators": {"this": 0.0},
                    "error": {"this": 0.0},
                })
                party_data['Other']['numerators']['this'] += obj.valid_votes
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
                    "values": {"this": first_party.registered_voters},
                    "error": {"this": 0.0},
                },
                'average_turnout': {
                    "name": "Of registered voters cast their vote",
                    "values": {"this": first_party.average_voter_turnout},
                    "error": {"this": 0.0},
                }
            }
        }

    except KeyError:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    finally:
        session.close()
