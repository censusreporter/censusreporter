import requests

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from .config import (DB_NAME, DB_USER, DB_PASSWORD, WARD_SEARCH_ENDPOINT)


_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))
_Session = sessionmaker(bind=_engine)

# Postgres has a max name length of 63 by default
MAX_TABLE_NAME_LENGTH = 63


census_fields = set([
    'age groups in 5 years',
    'age in completed years',
    'energy or fuel for cooking',
    'energy or fuel for heating',
    'energy or fuel for lighting',
    'highest educational level',
    'individual monthly income',
    'official employment status',
    'population group',
    'refuse disposal',
    'source of water',
    'toilet facilities',
    'type of main dwelling',
    'type of sector',
])
geo_levels = (
    'ward',
    'municipality',
    'district',
    'province',
    'country',
)


def get_session():
    return _Session()


def get_table_name(fields, geo_level):
    if geo_level not in geo_levels:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    for field in fields:
        if field not in census_fields:
            raise ValueError('Invalid field: %s' % field)

    sorted_fields = sorted(fields)
    table_name = ''.join(sorted_fields[0].lower().split(' '))
    for field in sorted_fields[1:]:
        table_name = '%s_%s' % (table_name,
                                ''.join(field.lower().split(' ')))

    table_name_length = len(table_name) + len(geo_level) + 1
    if table_name_length > MAX_TABLE_NAME_LENGTH:
        if table_name_length - len(sorted_fields[-1]) + 1 > MAX_TABLE_NAME_LENGTH:
            raise RuntimeError("Table name exceeds %s characters"
                               % MAX_TABLE_NAME_LENGTH)
        table_name = table_name[:MAX_TABLE_NAME_LENGTH - table_name_length]

    return '%s_%s' % (table_name, geo_level)


class LocationNotFound(Exception):
    pass


class Location(object):
    '''
    Simple object to represent a location in the South African
    context.
    '''
    def __init__(self, address, province_code, ward_code, ward_no,
                 municipality, coordinates):
        self.address = address
        self.province_code = province_code
        # Northern Province is now called Limpopo
        if self.province_code == 'NP':
            self.province_code = 'LIM'
        self.ward_code = ward_code
        self.ward_no = ward_no
        self.municipality = municipality
        self.latitude = coordinates[0]
        self.longitude = coordinates[1]

    def __repr__(self):
        return 'Location(address="%s", ward_code="%s", ' \
               'municipality="%s", province_code="%s", ' \
               'latitude=%s, longitude=%s, ward_no=%s)' \
               % (self.address, self.ward_code, self.municipality,
                  self.province_code, self.latitude, self.longitude,
                  self.ward_no)


class WardSearchException(Exception):
    pass


class WardSearchAPI(object):

    def __init__(self, endpoint_url):
        self.endpoint_url = endpoint_url

    def search(self, term):
        resp = requests.get(self.endpoint_url,
                            params={'address': term})
        if resp.status_code != 200:
            raise WardSearchException('%s response code' % resp.status_code)
        # if the request is invalid it returns the landing page html
        elif resp.headers['content-type'] != 'application/json':
            raise WardSearchException('Invalid request')

        data = resp.json()
        # this is not actually an error condition, just not found
        if isinstance(data, dict) and 'error' in data:
            return []

        return [Location(obj['address'], obj['province'], obj['ward'],
                         obj['wards_no'], obj['municipality'], obj['coords'])
                for obj in data]


ward_search_api = WardSearchAPI(WARD_SEARCH_ENDPOINT)
