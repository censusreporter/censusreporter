from .models import get_model_from_fields
from .utils import get_session


def get_location_profile(geo_code, geo_level):
    session = get_session()
    db_model = get_model_from_fields(['highest educational level'], geo_level)
    query = session.query(db_model).filter(getattr(db_model, '%s_code' % geo_level) \
                                           == geo_code).order_by('category')
    data = {}
    total = 0.0
    for i, obj in enumerate(query):
        total += obj.total
        data['percent_%s' % str(i)] = {
            "name": getattr(obj, 'highest educational level'),
            "error": {
                "this": 0.0,
            },
            "numerators": {
                "this": obj.total
            }
        }
    for key, vals in data.iteritems():
        vals["values"] = {"this": vals["numerators"]["this"] / total * 100}

    return {
        'social': {
            'educational_attainment_distribution': data,
            'age': {}
        }
    }
