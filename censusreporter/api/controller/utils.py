from collections import OrderedDict

from api.models import Ward, Municipality, District, Province


def collapse_categories(data, categories, key_order=None):
    if key_order:
        collapsed = OrderedDict((key, {'name': key}) for key in key_order)
    else:
        collapsed = {}

    # level 1: iterate over categories in data
    for fields in data.values():
        new_category_name = categories[fields['name']]
        collapsed.setdefault(new_category_name, {'name': new_category_name})
        new_fields = collapsed[new_category_name]
        # level 2: iterate over measurement objects in category
        for measurement_key, measurement_objects in fields.iteritems():
            if measurement_key == 'name':
                continue
            new_fields.setdefault(measurement_key, {})
            new_measurement_objects = new_fields[measurement_key]
            # level 3: iterate over data points in measurement objects
            for datapoint_key, datapoint_value in measurement_objects.iteritems():
                try:
                    new_measurement_objects.setdefault(datapoint_key, 0)
                    new_measurement_objects[datapoint_key] += float(datapoint_value)
                except (ValueError, TypeError):
                    new_measurement_objects[datapoint_key] = datapoint_value

    return collapsed


def calculate_median(objects, field_name):
    '''
    Calculates the median where obj.total is the distribution count and
    getattr(obj, field_name) is the distribution segment.
    Note: this function assumes the objects are sorted.
    '''
    total = 0
    for obj in objects:
        total += obj.total
    half = total / 2.0

    counter = 0
    for i, obj in enumerate(objects):
        counter += obj.total
        if counter > half:
            if counter - half == 1:
                # total must be even (otherwise counter - half ends with .5)
                return (float(getattr(objects[i - 1], field_name)) +
                        float(getattr(obj, field_name))) / 2.0
            return float(getattr(obj, field_name))
        elif counter == half:
            # total must be even (otherwise half ends with .5)
            return (float(getattr(obj, field_name)) +
                    float(getattr(objects[i + 1], field_name))) / 2.0


def get_summary_geo_info(geo_object):
    if geo_object.level in set(['ward', 'municipality', 'district']):
        levels = ('country', 'province', geo_level)
        codes = [None, geo_obj.province_code, geo_object.code]
        return zip(levels, codes)
    elif geo_object.level == 'province':
        return zip(('country', 'province'), (None, geo_object.code))
    else:
        return zip(('country', ), (None, ))


def get_geo_object(geo_code, geo_level, session):
    model = {
            'ward': Ward,
            'district': District,
            'municipality': Municipality,
            'province': Province,
            'country': None,
    }[geo_level]

    if model is None:
        return None
    return session.query(model).get(geo_code)
