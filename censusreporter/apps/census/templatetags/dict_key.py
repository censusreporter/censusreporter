from django.template.defaultfilters import register
# from https://stackoverflow.com/a/51090108/102476
@register.filter(name='dict_key')
def dict_key(d, k):
    '''Returns the given key from a dictionary.'''
    return d[k]