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
                    "name_long": obj.party,
                    "numerators": {"this": obj.valid_votes},
                    "values": {"this": round(obj.valid_votes /
                                             total_valid_votes * 100, 2)}
                }
            else:
                party_data.setdefault('Other', {
                    "name": "Other",
                    "name_long": "Other",
                    "numerators": {"this": 0.0},
                })
                party_data['Other']['numerators']['this'] += obj.valid_votes
        # calculate percentage for 'Other'
        if 'Other' in party_data:
            party_data['Other']['values'] = {'this': round(
                party_data['Other']['numerators']['this']
                / total_valid_votes * 100,
                2
            )}

        party_data['metadata'] = {
            'universe': '%s ballots only' % BALLOT_TYPE_DESCRIPTION[ballot_type]
        }

        data = {
            election.replace(' ', '_'): {
                'name': election, 
                'party_distribution': party_data,
                'registered_voters': {
                    "name": "Number of registered voters",
                    "values": {"this": first_party.registered_voters},
                },
                'average_turnout': {
                    "name": "Of registered voters cast their vote",
                    "values": {"this": first_party.average_voter_turnout},
                    "numerators": {"this": (first_party.total_votes +
                                            first_party.mec7_votes)},
                }
            }
        }
        add_summary_data(data, geo_code, geo_level, election, ballot_type,
                         session)
        return data

    except KeyError:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    finally:
        session.close()


def add_summary_data(data, geo_code, geo_level, election, ballot_type, session):
    data = data.values()[0]
    party_dist_data = data['party_distribution']
    registered_voters = data['registered_voters']
    average_turnout = data['average_turnout']
    party_names = [p['name_long'] for p in party_dist_data.values()
                   if p.get('name', 'Other') != 'Other']

    for level, code in get_summary_geo_info(geo_code, geo_level, session):
        if code is None:
            # necessary for now since not all wards have a province code
            continue

        parties = session \
                .query(VoteSummary) \
                .filter(VoteSummary.geo_level == level) \
                .filter(VoteSummary.geo_code == code) \
                .filter(VoteSummary.electoral_event == election) \
                .filter(VoteSummary.ballot_type == ballot_type) \
                .filter(VoteSummary.party.in_(party_names)) \
                .all()

        party_by_name = dict((obj.party, obj) for obj in parties)
        first_party = parties[0]
        total_valid_votes = float(first_party.total_votes -
                                  first_party.spoilt_votes)

        for values in party_dist_data.values():
            if values.get('name', 'Other') == 'Other':
                continue
            party_obj = party_by_name[values['name_long']]
            values['numerators'][level] = party_obj.valid_votes
            values['values'][level] = round(party_obj.valid_votes /
                                            total_valid_votes * 100, 2)

        registered_voters['values'][level] = first_party.registered_voters
        average_turnout['values'][level] = first_party.average_voter_turnout
        average_turnout['numerators'][level] = (first_party.total_votes +
                                                first_party.mec7_votes)
