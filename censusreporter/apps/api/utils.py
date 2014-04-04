from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from .config import DB_NAME, DB_USER, DB_PASSWORD


_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))
_Session = sessionmaker(bind=_engine)

# Postgres has a max name length of 63 by default
MAX_TABLE_NAME_LENGTH = 63


census_fields = set([
    'highest educational level',
    'individual monthly income',
    'official employment status',
    'source of water',
    'refuse disposal',
    'type of sector',
    'population group',
    'age groups in 5 years',
    'age in completed years',
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
