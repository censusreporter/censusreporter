from collections import OrderedDict

from api.models import Ward, Municipality, District, Province


# dictionaries that merge_dicts will merge
MERGE_KEYS = set(['values', 'numerators'])


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


def get_summary_geo_info(geo_code=None, geo_level=None, session=None,
                         geo_object=None):
    if geo_object is not None:
        geo_level = geo_object.level

    if geo_level in set(['ward', 'municipality', 'district']):
        if geo_object is None:
            geo_object = get_geo_object(geo_code, geo_level, session)
        return zip(('country', 'province'), ('ZA', geo_object.province_code))
    elif geo_level == 'province':
        return zip(('country', ), ('ZA', ))
    else:
        return tuple()


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


def merge_dicts(this, other, other_key):
    '''
    Recursively merges 'other' dict into 'this' dict. In particular
    it merges the leaf nodes specified in MERGE_KEYS.
    '''
    for key, values in this.iteritems():
        if key in MERGE_KEYS:
            if key in other:
                values[other_key] = other[key]['this']
        elif isinstance(values, dict):
            merge_dicts(values, other[key], other_key)


def group_remainder(data, num_items=4, make_percentage=True,
                    remainder_name="Other"):
    '''
    This function assumes data is an OrderedDict instance. It iterates
    over the dict items, grouping items with index >= num_items - 1 together
    under key remainder_name. If make_percentage = True, the 'values' dict
    contains percentages and the 'numerators' dict the totals. Otherwise
    'values' contains the totals.
    '''
    num_key = 'numerators' if make_percentage else 'values'
    total_all = dict((k, 0.0) for k in data.values()[0][num_key].keys())
    total_other = total_all.copy()
    other_dict = {
        "name": remainder_name,
        "error": {"this": 0.0},
        num_key: total_other,
    }
    cutoff = num_items - 2

    for i, (key, values) in enumerate(data.iteritems()):
        for k, v in values[num_key].iteritems():
            total_all[k] += v

        if i > cutoff:
            del data[key]
            data.setdefault(remainder_name, other_dict)
            for k, v in values[num_key].iteritems():
                total_other[k] += v

    if make_percentage:
        for values in data.values():
            values['values'] = dict((k, round(v / total_all[k] * 100, 2))
                                    for k, v in values['numerators'].iteritems())
