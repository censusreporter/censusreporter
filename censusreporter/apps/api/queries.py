from .models import get_table_model
from .utils import get_session


def get_location_profile(geo_code, geo_level):
    session = get_session()
    db_model = get_table_model('highest educational level', geo_level)
    query = session.query(db_model).filter(getattr(db_model, '%s_code' % geo_level) \
                                           == geo_code).order_by('category')
    data = {}
    total = 0.0
    for i, obj in enumerate(query):
        total += obj.total
        data['percent_%s' % str(i)] = {
            "name": obj.category,
            "error": {
                "this": 0.0,
            },
            "numerators": {
                "this": obj.total
            },
            "numerator_errors": {
                "this": 0.0,
            }
        }
    for key, vals in data.iteritems():
        vals["values"] = {"this": vals["numerators"]["this"] / total * 100}

    return {
        'social': {
            'educational_attainment_distribution': data,
            'age': {}
        },
        'geography': {
            'this': {},
            'parents': {},
        }
    }
