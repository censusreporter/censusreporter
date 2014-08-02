import requests
import re

from sqlalchemy import create_engine, MetaData, Table
from sqlalchemy.orm import sessionmaker

from .config import (DB_NAME, DB_USER, DB_PASSWORD, WARD_SEARCH_ENDPOINT)


_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))
_metadata = MetaData()
_Session = sessionmaker(bind=_engine)

province_codes = {
    'kwazulu-natal': 'KZN',
    'free state': 'FS',
    'eastern cape': 'EC',
    'gauteng': 'GT',
    'mpumalanga': 'MP',
    'northern cape': 'NC',
    'limpopo': 'LIM',
    'north west': 'NW',
    'western cape': 'WC',
}


def get_session():
    return _Session()


def get_table_model(name):
    return Table(name, _metadata, autoload=True, autoload_with=_engine)


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
                            params={'address': term,
                                    'database': 'wards_2011'})
        if resp.status_code != 200:
            raise WardSearchException('%s response code' % resp.status_code)
        # if the request is invalid it returns the landing page html
        elif resp.headers['content-type'] not in ('application/json',
                                              'text/javascript'):
            raise WardSearchException('Invalid request')

        data = resp.json()
        # this is not actually an error condition, just not found
        if isinstance(data, dict) and 'error' in data:
            return []

        return [Location(obj['address'], self.clean_province(obj['province']),
                         obj['ward'], obj['wards_no'], obj['municipality'],
                         obj['coords'])
                for obj in data]

    def clean_province(self, value):
        if 2 <= len(value) <=3:
            # pre-2011 data provides province code in the 'province' field
            return value
        else:
            # 2011 data provides province name in the 'province' field
            # convert it to province code if possible
            try:
                return province_codes[value.lower()]
            except KeyError:
                pass


ward_search_api = WardSearchAPI(WARD_SEARCH_ENDPOINT)

def capitalize(s):
    """
    Capitalize the first char of a string, without
    affecting the rest of the string.
    This differs from `str.capitalize` since the latter
    also lowercases the rest of the string.
    """
    if not s:
        return s

    return ''.join([s[0].upper(), s[1:]])
