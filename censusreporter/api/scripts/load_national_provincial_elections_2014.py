import os
import sys

import unicodecsv as csv

from api.models import Municipality, Province, Votes, Base
from api.utils import get_session, _engine
from sqlalchemy import or_


def parse_integer(val):
    return int(val.replace(',', ''))


def get_province(val):
    provinces = {
        'KWAZULU-NATAL': 'KZN',
        'FREE STATE': 'FS',
        'EASTERN CAPE': 'EC',
        'GAUTENG': 'GT',
        'MPUMALANGA': 'MP',
        'NORTHERN CAPE': 'NC',
        'LIMPOPO': 'LIM',
        'NORTH WEST': 'NW',
        'WESTERN CAPE': 'WC',
    }
    out = None
    if provinces.get(val):
        out = provinces[val]
    return out


def get_municipality(val):
    out = None
    tmp = val.split('-', 1)[0].strip()
    if tmp:
        out = tmp
    return out


def get_ward(val):
    out = None
    if val:
        out = val
    return out


field_mapper = {
    "ELECTORAL EVENT": ('electoral_event', None),
    "PROVINCE": ('province_code', get_province),
    "MUNICIPALITY": ('municipality_code', get_municipality),
    "WARD": ('ward_code', get_ward),
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
        lambda val: float(val.rstrip('%'))
    ),
    }


if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise ValueError("Requires 1 file path argument")
    filepath = sys.argv[1]
    if not os.path.isabs(filepath):
        filepath = os.path.join(os.getcwd(), filepath)

    # create table if necessary
    Base.metadata.create_all(_engine, tables=[Votes.__table__])
    session = get_session()

    with open(filepath) as f:
        reader = csv.DictReader(f, encoding='CP949')

        total = 1064463
        i = 0
        for values in reader:
            mapped_values = dict((field_mapper[k][0],
                                  field_mapper[k][1](val)
                                  if field_mapper[k][1] is not None else val)
                                 for k, val in values.iteritems())
            district_code = None
            mapped_values['district_code'] = district_code
            mapped_values['mec7_votes'] = None
            mapped_values['ballot_type'] = None
            session.add(Votes(**mapped_values))
            if i % 1000 == 0:
                session.flush()
                sys.stdout.write('\r%s of %s' % (i + 1, total))
                sys.stdout.flush()
            i += 1

    print '\nDone'
    session.commit()

    # update district_code values
    municipalities = session.query(Municipality).all()
    for municipality in municipalities:
        session.query(Votes) \
            .filter(
            or_(Votes.electoral_event=="2014 NATIONAL ELECTION", Votes.electoral_event=="2014 PROVINCIAL ELECTION")) \
            .filter(Votes.municipality_code==municipality.code) \
            .update({"district_code": municipality.district_code})
    session.commit()
    session.close()
