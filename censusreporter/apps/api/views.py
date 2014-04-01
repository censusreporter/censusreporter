from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from .config import DB_NAME, DB_USER, DB_PASSWORD

_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))
_Session = sessionmaker(bind=_engine)

def get_session():
    return _Session()
