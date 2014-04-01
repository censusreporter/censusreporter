from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from .config import DB_NAME, DB_USER, DB_PASSWORD


_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))
_Session = sessionmaker(bind=_engine)


census_fields = set([
    'highest educational level',
    'individual monthly income',
    'source of water',
    'refuse disposal',
    'type of sector',
    'population group',
    'age group in 5 years'
])
geo_levels = (
    'ward',
    'municipality',
    'district',
    'province'
)


def get_session():
    return _Session()


def get_table_name(field, geo_level):
    if geo_level not in geo_levels:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    if field not in census_fields:
        raise ValueError('Invalid field: %s' % field)
    return '%s_%s' % (''.join(field.lower().split(' ')), geo_level)
