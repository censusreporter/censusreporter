from sqlalchemy.orm import joinedload
from sqlalchemy.sql.expression import or_
from sqlalchemy import func

from api.models import Ward, District, Municipality, Province
from api.utils import (get_session, ward_search_api, geo_levels,
                       LocationNotFound)


def get_geography(geo_code, geo_level):
    """
    Get a geography model (Ward, Province, etc.) for this geography, or
    raise LocationNotFound if it doesn't exist.
    """
    session = get_session()

    try:
        try:
            model = {
                'ward': Ward,
                'district': District,
                'municipality': Municipality,
                'province': Province,
            }[geo_level]
        except KeyError:
            raise LocationNotFound(geo_code)

        geo = session.query(model).get(geo_code)
        if not geo:
            raise LocationNotFound(geo_code)

        return geo
    finally:
        session.close()


def get_locations(search_term, geo_level=None, year='2011'):
    if geo_level is not None and geo_level not in geo_levels:
        raise ValueError('Invalid geo_level: %s' % geo_level)
    session = get_session()

    if geo_level == 'ward':
        # try to find by ward code first, then address/place name
        ward = session.query(Ward).get(search_term)
        if not ward:
            locations = ward_search_api.search(search_term)
            if locations:
                ward_codes = [l.ward_code for l in locations]
                wards = session \
                        .query(Ward) \
                        .filter(Ward.code.in_(ward_codes)) \
                        .filter(Ward.year == year) \
                        .all()
                _complete_ward_data_from_api(locations, session)
            else:
                wards = []
        else:
            wards = [ward]
        return serialize_demarcations(wards)

    elif geo_level is not None:
        # already checked that geo_level is valid
        model = {
            'district': District,
            'municipality': Municipality,
            'province': Province,
        }[geo_level]
        # try to find by code or name
        demarcations = session \
                .query(model) \
                .filter(model.year == year) \
                .filter(or_(model.name.ilike(search_term + '%'),
                            model.code == search_term.upper())) \
                .all()
        return serialize_demarcations(demarcations)

    else:
        '''
        This search differs from the above in that it first
        search for wards. If it finds wards it adds the wards and
        their provinces, districts and municipalities to the results.
        It then also checks if any province, district or municipality
        matches the search term in their own right, adding these
        to the results as well.
        '''
        objects = set()
        # look up wards
        locations = ward_search_api.search(search_term)
        if locations:
            _complete_ward_data_from_api(locations, session)
            ward_codes = [l.ward_code for l in locations]
            wards = session \
                    .query(Ward) \
                    .options(joinedload('*', innerjoin=True)) \
                    .filter(Ward.code.in_(ward_codes)) \
                    .filter(Ward.year == year) \
                    .all()
            objects.update(wards)
            for ward in wards:
                objects.update([ward.municipality, ward.district, ward.province])

        # find other matches
        for model in (Municipality, District, Province):
            objects.update(session
                .query(model)
                .filter(model.year == year)
                .filter(or_(model.name.ilike(search_term + '%'),
                            model.name.ilike('City of %s' % search_term + '%'),
                            model.code == search_term.upper()))
                .all()
            )

        order_map = {Ward: 1, Municipality: 2, District: 3, Province: 4}
        objects = sorted(objects, key=lambda o: "%d%s" % (
            order_map[o.__class__],
            getattr(o, 'name', getattr(o, 'code'))
        ))
        return serialize_demarcations(objects)


def serialize_demarcations(objects):
    data = []
    for obj in objects:
        if isinstance(obj, Ward):
            obj_dict = {
                'full_name': '%s, %s, %s' % (obj.code, obj.municipality.name,
                                             obj.province_code),
                'full_geoid': 'ward-%s' % obj.code,
            }
        elif isinstance(obj, Municipality):
            obj_dict = {
                'full_name': '%s, %s' % (obj.name, obj.province_code),
                'full_geoid': 'municipality-%s' % obj.code,
            }
        elif isinstance(obj, District):
            obj_dict = {
                'full_name': '%s, %s' % (obj.name, obj.province_code),
                'full_geoid': 'district-%s' % obj.code,
            }
        elif isinstance(obj, Province):
            obj_dict = {
                'full_name': '%s' % obj.name,
                'full_geoid': 'province-%s' % obj.code,
            }
        else:
            raise ValueError("Unrecognized demarcation class")
        data.append(obj_dict)
    return data


def _complete_ward_data_from_api(locations, session):
    '''
    Completes the ward data in the DB when a ward appears in a search result
    '''
    for location in locations:
        ward_obj = session.query(Ward).get(location.ward_code)
        if ward_obj is not None and not (ward_obj.province_code and
                                         ward_obj.district_code and
                                         ward_obj.muni_code):
            ward_obj.province_code = location.province_code
            # there are no duplicate names within a province, incidentally
            municipality = session \
                    .query(Municipality) \
                    .filter(func.lower(Municipality.name) ==
                            func.lower(location.municipality)) \
                    .filter(Municipality.province_code ==
                            location.province_code) \
                    .one()
            ward_obj.muni_code = municipality.code
            ward_obj.district_code = municipality.district_code

    session.commit()
