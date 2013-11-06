from django import template
from numpy import array

register = template.Library()

COMPARISON_PHRASE_MAP = {
    "206": "more than double",
    "195": "about double",
    "180": "nearly double",
    "161": "more than one and a half times",
    "144": "about one and a half times",
    "133": "nearly one and a half times",
    "120": "significantly higher than",
    "109": "higher than",
    "103": "a little higher than",
    "98": "about the same as",
    "94": "a little less than",
    "86": "about 90 percent of",
    "78": "about 80 percent of",
    "72": "about three-quarters of",
    "64": "about two-thirds of",
    "56": "about three-fifths of",
    "45": "about half",
    "37": "about two-fifths of",
    "30": "about one-third of",
    "23": "about one-quarter of",
    "17": "about two-fifths of",
    "13": "less than two-fifths of",
    "8": "about 10 percent of",
    "0": "less than 10 percent of",
}

@register.filter
def comparison_index_phrase(value):
    # make sure we have an int for comparison
    index = round(float(value))
    
    # get lower boundaries for each phrase in the map
    thresholds = array(sorted([int(k) for k,v in COMPARISON_PHRASE_MAP.iteritems()]))

    # get highest boundary that's less than the index value we've been passed
    phrase_key = str(max(thresholds[thresholds<=index]))
    
    return COMPARISON_PHRASE_MAP[phrase_key]
