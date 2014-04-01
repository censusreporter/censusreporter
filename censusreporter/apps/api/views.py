from sqlalchemy import create_engine

from .config import DB_NAME, DB_USER, DB_PASSWORD

_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))

def get_connection():
    return _engine.connect()