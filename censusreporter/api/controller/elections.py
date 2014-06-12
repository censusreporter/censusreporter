from collections import OrderedDict

from sqlalchemy import func, desc

from api.models import VoteSummary
from api.utils import get_session

from .utils import get_summary_geo_info, add_metadata


BALLOT_TYPE_DESCRIPTION = {
    'PR': 'Proportional representative (PR)',
    'WARD': 'Ward',
    'DC 40%': 'District council (DC) 40%'
}

AVAILABLE_ELECTIONS = [
    #{
    #    'electoral_event': 'municipal 2011',
    #    'name': 'Municipal 2011',
    #    'ballot_type': 'PR',
    #},
    {
        'electoral_event': '2014 PROVINCIAL ELECTION',
        'name': 'Provincial 2014',
    },
    {
        'electoral_event': '2014 NATIONAL ELECTION',
        'name': 'National 2014',
    },
]

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
        "CONGRESS  OF THE PEOPLE": "COPE",
        "AGANG SOUTH AFRICA": "AGANG",
        "VRYHEIDSFRONT PLUS": "VF+",
        "PAN AFRICANIST CONGRESS OF AZANIA": "PAC",
        "FRONT NASIONAAL/FRONT NATIONAL": "FN",
    }
    try:
        return exceptions[name]
    except KeyError:
        ignore = set(('AND', 'BY', 'FOR', 'IN', 'OF', 'TO'))
        acronym = ''.join([w.lstrip()[0] for w in name.split(' ')
                           if w.strip() and w.upper() not in ignore])
        return acronym


def get_elections_profile(geo_code, geo_level):
    data = {}
    session = get_session()
    try:
        for election in AVAILABLE_ELECTIONS:
            election_data = get_election_data(geo_code, geo_level, election, session)
            data[election_data['key']] = election_data

        if geo_level == 'country':
            add_elections_media_coverage(data)

        return data

    except KeyError:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    finally:
        session.close()


def get_election_data(geo_code, geo_level, election, session):
    ballot_type = election.get('ballot_type') or None

    parties = session \
        .query(VoteSummary) \
        .filter(VoteSummary.geo_level == geo_level) \
        .filter(VoteSummary.geo_code == geo_code) \
        .filter(VoteSummary.electoral_event == election['electoral_event']) \
        .filter(VoteSummary.ballot_type == ballot_type) \
        .order_by(VoteSummary.valid_votes.desc()) \
        .all()

    first_party = parties[0]
    total_valid_votes = float(first_party.total_votes - first_party.spoilt_votes)
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

    if ballot_type:
        universe = '%s ballots only' % BALLOT_TYPE_DESCRIPTION[ballot_type]
    else:
        universe = None

    party_data['metadata'] = {
        'universe': universe
    }
    add_metadata(party_data, VoteSummary)
    key = election['name'].lower().replace(' ', '_')

    data_election = {
        'name': election['name'],
        'key': key,
        'party_distribution': party_data,
        'registered_voters': {
            "name": "Number of registered voters",
            "values": {"this": first_party.registered_voters},
            },
        'average_turnout': {
            "name": "Of registered voters cast their vote",
            "values": {"this": first_party.average_voter_turnout},
            "numerators": {"this": first_party.total_votes},
            }
    }

    add_summary_data(data_election, geo_code, geo_level, election['electoral_event'], ballot_type, session)

    return data_election


def add_summary_data(data_election, geo_code, geo_level, election, ballot_type, session):
    '''
    Augments data with country and province-level election stats. It
    adds vote percentages for each party provided in party_distribution.
    It also adds datapoints for registered_voters and average_turnout.
    '''
    data = data_election
    party_dist_data = data['party_distribution']
    registered_voters = data['registered_voters']
    average_turnout = data['average_turnout']
    party_names = [p['name_long'] for p in party_dist_data.values()
                   if p.get('name', 'Other') != 'Other']

    for level, code in get_summary_geo_info(geo_code, geo_level, session):
        if code is None:
            # necessary for now since not all wards have a province code
            continue

        # this is a composite primary key lookup
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
        average_turnout['numerators'][level] = first_party.total_votes

def add_elections_media_coverage(data):
    party_coverage = [
        ('ANC', 37.78),
        ('DA', 25.51),
        ('EFF', 13.30),
        ('COPE', 4.15),
        ('AGANG', 3.24),
        ('IFP', 2.55),
        ('Other', 13.47),
        ]

    gender_coverage = [
        ('Female', 22.02),
        ('Male', 77.98),
    ]

    # fold them in
    parties = OrderedDict()
    for key, perc in party_coverage:
        parties[key] = {
            'name': key,
            'values': {'this': perc}
        }
    parties['metadata'] = {
        'table_id': 'ELECTIONS2014PARTYCOVERAGE'
    }


    genders = OrderedDict()
    for key, perc in gender_coverage:
        genders[key] = {
            'name': key,
            'values': {'this': perc}
        }
    genders['metadata'] = {
        'table_id': 'ELECTIONS2014GENDERCOVERAGE'
    }


    data['national_2014']['media_coverage'] = {
        'parties': parties,
        'genders': genders,
    }
