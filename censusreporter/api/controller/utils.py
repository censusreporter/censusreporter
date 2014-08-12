from collections import OrderedDict

from sqlalchemy import func
from sqlalchemy.orm import class_mapper


from api.controller.geography import LocationNotFound
from api.models import Ward, Municipality, District, Province
from api.models import get_model_from_fields
from api.models.tables import get_datatable
from api.utils import capitalize


# dictionaries that merge_dicts will merge
MERGE_KEYS = set(['values', 'numerators'])


def collapse_categories(data, categories, key_order=None):
    if key_order:
        collapsed = OrderedDict((key, {'name': key}) for key in key_order)
    else:
        collapsed = {}

    metadata = None
    if 'metadata' in data:
        metadata = data['metadata']
        del data['metadata']

    # level 1: iterate over categories in data
    for fields in data.values():
        new_category_name = categories[fields['name']]

        # ignore items with a None category
        if new_category_name is None:
            continue

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

    if metadata is not None:
        collapsed['metadata'] = metadata

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
        "numerator_errors": {"this": 0.0},
        num_key: total_other,
    }
    cutoff = num_items - 2

    for i, (key, values) in enumerate(data.items()):
        if key == 'metadata':
            continue

        for k, v in values[num_key].iteritems():
            total_all[k] += v

        if i > cutoff:
            del data[key]
            data.setdefault(remainder_name, other_dict)
            for k, v in values[num_key].iteritems():
                total_other[k] += v

    if make_percentage:
        for key, values in data.iteritems():
            if key != 'metadata':
                values['values'] = dict((k, percent(v, total_all[k]))
                                        for k, v in values['numerators'].iteritems())

def add_metadata(data, model):
    if not 'metadata' in data:
        data['metadata'] = {}

    if hasattr(model, 'field_table'):
        data_table = model.field_table
        data['metadata']['table_id'] = data_table.id.upper()
        if data_table.universe:
            data['metadata']['universe'] = data_table.universe


def get_objects_by_geo(db_model, geo_code, geo_level, session, fields=None, order_by=None):
    """ Get rows of statistics from the stats mode +db_model+ at a particular
    geo_code and geo_level, summing over the 'total' field and grouping by
    +fields+.
    """
    geo_attr = '%s_code' % geo_level

    if fields is None:
        fields = [c.key for c in class_mapper(db_model).attrs if c.key not in [geo_attr, 'total']]

    fields = [getattr(db_model, f) for f in fields]

    objects = session\
            .query(func.sum(db_model.total).label('total'),
                   *fields)\
            .group_by(*fields)\
            .filter(getattr(db_model, geo_attr) == geo_code)

    if order_by is not None:
        attr = order_by
        is_desc = False
        if order_by[0] == '-':
            is_desc = True
            attr = attr[1:]

        if attr == 'total':
            if is_desc:
                attr = attr + ' DESC'
        else:
            attr = getattr(db_model, attr)
            if is_desc:
                attr = attr.desc()

        objects = objects.order_by(attr)

    objects = objects.all()
    if len(objects) == 0:
        raise LocationNotFound("%s.%s with code '%s' not found"
                               % (db_model.__tablename__, geo_attr, geo_code))
    return objects


def get_stat_data(fields, geo_level, geo_code, session, order_by=None,
                  percent=True, total=None, table_fields=None,
                  table_name=None, only=None, exclude=None, exclude_zero=False,
                  recode=None, key_order=None):
    """
    This is our primary helper routine for building a dictionary suitable for
    a place's profile page, based on a statistic.

    It sums over the data for +fields+ in the database for the place identified by
    +geo_level+ and +geo_code+ and calculates numerators and values. If multiple
    fields are given, it creates nested result dictionaries.

    Control the rows that are included or ignored using +only+, +exclude+ and +exclude_zero+.

    The field values can be recoded using +recode+ and and re-ordered using +key_order+.

    :param str or list fields: the census field to build stats for. Specify a list of fields to build
                               nested statistics. If multiple fields are specified, then the values 
                               of parameters such as +only+, +exclude+ and +recode+ will change. 
                               These must be fields in `api.models.census.census_fields`, e.g. 'highest educational level'
    :param str geo_level: the geographical level
    :param str geo_code: the geographical code
    :param dbsession session: sqlalchemy session
    :param str order_by: field to order by, or None for default, eg. '-total'
    :param bool percent: should we calculate percentages, or just sum raw values?
    :param list table_fields: list of fields to use to find the table, defaults to `fields`
    :param int total: the total value to use for percentages, or None to total columns automatically
    :param str table_name: override the table name, otherwise it's calculated from the fields and geo_level
    :param dict or list only: only include these field values. If +fields+ has many items, this must be a dict
                              mapping field names to a list of strings.
    :param doct or list exclude: ignore these field values. If +fields+ has many items, this must be a dict
                                 mapping field names to a list of strings. Field names are checked
                                 before any recoding.
    :param bool exclude_zero: ignore fields that have a zero total
    :param dict or lambda: function or dict to recode values of +key_field+. If +fields+ is a singleton,
                           then the keys of this dict must be the values to recode from, otherwise
                           they must be the field names and then the values. If this is a lambda,
                           it is called with the field name and its value as arguments.
    :param dict or list key_order: ordering for keys in result dictionary. If +fields+ has many items,
                                   this must be a dict from field names to orderings.
                                   The default ordering is determined by +order+.

    :return: (data-dictionary, total)
    """

    if not isinstance(fields, list):
        fields = [fields]

    n_fields = len(fields)
    many_fields = n_fields > 1

    if order_by is None:
        order_by = fields[0]

    if only is not None:
        if not isinstance(only, dict):
            if many_fields:
                raise ValueError("If many fields are given, then only must be a dict. I got %s instead" % only)
            else:
                only = {fields[0]: set(only)}

    if exclude is not None:
        if not isinstance(exclude, dict):
            if many_fields:
                raise ValueError("If many fields are given, then exclude must be a dict. I got %s instead" % exclude)
            else:
                exclude = {fields[0]: set(exclude)}

    if key_order:
        if not isinstance(key_order, dict):
            if many_fields:
                raise ValueError("If many fields are given, then key_order must be a dict. I got %s instead" % key_order)
            else:
                key_order = {fields[0]: key_order}
    else:
        key_order = {}

    if total is not None and many_fields:
        raise ValueError("Cannot specify a total if many fields are given")

    if recode:
        if not isinstance(recode, dict) or not many_fields:
            recode = dict((f, recode) for f in fields)


    model = get_model_from_fields(table_fields or fields, geo_level, table_name)
    objects = get_objects_by_geo(model, geo_code, geo_level, session, fields=fields, order_by=order_by)

    root_data = OrderedDict()
    our_total = {}

    def get_data_object(obj):
        """ Recurse down the list of fields and return the
        final resting place for data for this stat. """
        data = root_data

        for i, field in enumerate(fields):
            key = getattr(obj, field)

            if only and key not in only.get(field, {}):
                return key, None

            if exclude and key in exclude.get(field, {}):
                return key, None

            if recode and field in recode:
                recoder = recode[field]
                if isinstance(recoder, dict):
                    key = recoder.get(key, key)
                else:
                    key = recoder(field, key)
            else:
                key = capitalize(key)

            # enforce key ordering
            if not data and field in key_order:
                for fld in key_order[field]:
                    data[fld] = OrderedDict()

            # ensure it's there
            if key not in data:
                data[key] = OrderedDict()

            data = data[key]

            # default values for intermediate fields
            if data and i < n_fields-1:
                data['metadata'] = {'name': key}

        # data is now the dict where the end value is going to go
        if not data:
            data['name'] = key
            data['numerators'] = {'this': 0.0}

        return key, data


    # run the stats for the objects
    for obj in objects:
        if obj.total == 0 and exclude_zero:
            continue

        # get the data dict where these values must go
        key, data = get_data_object(obj)
        if not data:
            continue

        our_total[key] = our_total.get(key, 0.0) + obj.total
        data['numerators']['this'] += obj.total

    if total is not None:
        grand_total = total
    else:
        grand_total = sum(our_total.values())

    # add in percentages
    if percent:
        def calc_percent(data):
            for key, data in data.iteritems():
                if not key == 'metadata':
                    if 'numerators' in data:
                        tot = our_total[key] if many_fields else grand_total
                        perc = 0 if tot == 0 else (data['numerators']['this'] / tot * 100)
                        data['values'] = {'this': round(perc, 2)}
                    else:
                        calc_percent(data)

        calc_percent(root_data)

    add_metadata(root_data, model)

    return root_data, grand_total

def percent(num, denom, places=2):
    if denom == 0:
      return 0
    else:
      return round(num / denom * 100, places)
