import os
import sys

import unicodecsv as csv

from api.models import Municipality, Province, Votes, Base
from api.utils import get_session, _engine


def parse_integer(val, s):
    return int(val.replace(',', ''))
field_mapper = {
    "ELECTORAL EVENT": ('electoral_event', None),
    "PROVINCE": (
        'province_code',
        lambda val, s: s.query(Province).filter(Province.name == val.title()).one().code
    ),
    "MUNICIPALITY": (
        'municipality_code',
        lambda val, s: s.query(Municipality).get(val.split('-', 1)[0].strip()).code
    ),
    "WARD": ('ward_code', None),
    "VOTING DISTRICT": ('voting_district_code', None),
    "PARTY NAME": ('party', None),
    "REGISTERED VOTERS": ('registered_voters', parse_integer),
    "TOTAL VOTES CAST": ('total_votes', parse_integer),
    "SECTION 24A VOTES": ('section_24a_votes', parse_integer),
    "SPECIAL VOTES": ('special_votes', parse_integer),
    "VALID VOTES": ('valid_votes', parse_integer),
    "SPOILT VOTES": ('spoilt_votes', parse_integer),
    "% VOTER TURNOUT": (
        'voter_turnout',
        lambda val, s: float(val.rstrip('%'))
    ),
}


def open_elections_csv(filepath):
    f = open(filepath)
    reader = csv.DictReader(f)
    session = get_session()

    for values in reader:
        mapped_values = dict((field_mapper[k][0],
                              field_mapper[k][1](v, session)
                              if field_mapper[k][1] is not None else v)
                              for k, v in values.iteritems())
        yield mapped_values

    session.close()
    f.close()


if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise ValueError("Requires 1 file path argument")
    filepath = sys.argv[1]
    if not os.path.isabs(filepath):
        filepath = os.path.join(os.getcwd(), filepath)

    # create table if necessary
    Base.metadata.create_all(_engine, tables=[Votes.__table__])
    session = get_session()

    total = 1064463
    for i, values in enumerate(open_elections_csv(filepath)):
        values['district_code'] = session.query(Municipality) \
                                         .get(values['municipality_code']) \
                                         .district_code
        values['mec7_votes'] = None
        values['ballot_type'] = None
        session.add(Votes(**values))
        if i % 1000 == 0:
            session.flush()
            sys.stdout.write('\r%s of %s' % (i + 1, total))
            sys.stdout.flush()

    print '\nDone'
    session.commit()
    session.close()
