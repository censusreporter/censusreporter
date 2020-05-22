# -*- coding: utf-8 -*-
from urlparse import urljoin
from collections import OrderedDict

from django import template
from django.conf import settings
from django.utils.safestring import mark_safe

import requests
from requests.adapters import HTTPAdapter
from requests.packages.urllib3.util import Retry

register = template.Library()


@register.inclusion_tag('topics/_blocks/_table_list.html')
def list_tables(topics=None,prefix=None):
    api = ApiClient(settings.API_URL)
    # data = api.query_topics('housing')
    if prefix:
        data = api.query_prefix(prefix)
    elif topics:
        data = api.query_topics(topics)
    else:
        data = []
    tabulations = map(api_to_page,data)
    notes_for_all = dict(BLANK_DICT)
    for t in tabulations:
        for k,v in t['notes'].items():
            if v:
                notes_for_all[k] = True
    item_context = {
        'tabulations': tabulations,
        'notes_for_all': notes_for_all,
        'note_marks': NOTE_MARKS,
        'note_text': NOTE_TEXT
    }



    return item_context

def api_to_page(item):
    o = {
        'title': item['simple_table_title']
    }
    if item.get('tables_in_five_yr'):
        o['code'] = item['tables_in_five_yr'][0]
    else:
        o['code'] = item['tables_in_one_yr'][0]
    o['notes'] = table_breakdown(item['tables_in_one_yr'],item['tables_in_five_yr'])
    
    return o


@register.filter
def table_marks(mark_dict):
    symbols = []
    for k, v in NOTE_MARKS.items():
        if mark_dict.get(k, False):
            symbols.append(v)
    if symbols:
        return mark_safe(u"<sup>{}</sup>".format(u''.join(symbols)))
    return ''

@register.filter
def table_notes(notes_for_all):
    lines = []
    for k, v in NOTE_MARKS.items():
        if notes_for_all.get(k, False):
            lines.append(u"<sup>{}</sup>{}".format(v,NOTE_TEXT[k]))
    if lines:
        return mark_safe('<br>'.join(lines))
    return ''




class ApiClient(object):
    TABLE_SEARCH_ROOT = '/1.0/tabulations'

    def __init__(self, base_url):
        self.base_url = base_url
        self.retry_session = requests.Session()
        self.retry_session.mount(self.base_url, HTTPAdapter(
            max_retries=Retry(total=3, status_forcelist=[503])
        ))

    def _get(self, params=None):
        url = urljoin(self.base_url,self.TABLE_SEARCH_ROOT)
        r = requests.get(url, params=params, headers={'User-Agent': 'censusreporter.org frontend table lister'})
        data = None
        if r.status_code == 200:
            data = r.json(object_pairs_hook=OrderedDict)
        else:
            raise ApiException("HTTP %s error fetching data: %s" % (r.status_code, r.text))

        return data


    def query_topics(self, topics): # topics should be a comma-separated string
        p = {
            'topics': topics
        }
        return self._get(params=p)

    def query_prefix(self, prefix):
        p = {
            'prefix': prefix
        }
        return self._get(params=p)


def table_breakdown(one_year_codes, five_year_codes):
    """Given arrays of available table codes for one and five year ACS for a tabulation,
       work out which notes to present.
    """
    if one_year_codes is None:
        one_year_codes = []
    if five_year_codes is None:
        five_year_codes = []

    analyzed = dict(BLANK_DICT) # copy it

    analyzed['1'] = bool(one_year_codes)
    analyzed['5'] = bool(five_year_codes)
    codes = one_year_codes + five_year_codes    
    for code in codes:
        analyzed[code[0]] = True
        if code.endswith('PR'):
            analyzed['PR'] = True
        elif code[-1].isalpha():
            analyzed['I'] = True
    if analyzed['1'] and not analyzed['5']:
        analyzed['1_only'] = True
    if analyzed['5'] and not analyzed['1']:
        analyzed['5_only'] = True
    # if analyzed['B'] and not analyzed['C']: # maybe this is too common to be worthwhile?
    #     analyzed['B_only'] = True
    if analyzed['C'] and not analyzed['B']:
        analyzed['C_only'] = True
    if analyzed['B'] and analyzed['C']:
        analyzed['C_available'] = True
        
            
    return analyzed 

NOTE_MARKS = OrderedDict({
    'B_only': u'ª', 
    'C_only': u'*', 
    'C_available': u'‡', 
    'I': u'†', 
    'PR': u'§', 
    '1_only': u'º', 
    '5_only': u'ˆ'
})

NOTE_TEXT = {
    'B_only': "No 'C' (collapsed) table is offered.", 
    'C_only': u"""No basic 'B' table is offered.""",
    'C_available': u"""Table also available in "collapsed" version: change "B" to "C" for table code.""",
    'I': u"""Also available in <a href="/topics/race-latino/#topic-elsewhere">racial iterations</a>.""",
    'PR': u"""Tabulated for Puerto Rico. Add 'PR' to the table code. Column names may vary slightly from non-PR version.""",
    '1_only': "Only available in the 1-year ACS release.", 
    '5_only': "Only available in the 5-year ACS release." 
}

KEYS = list(NOTE_MARKS.keys()) + ['B', 'C', '1', '5']
BLANK_DICT = dict((k,False) for k in KEYS)


class ApiException(Exception):
    pass
