from __future__ import absolute_import
import re
from collections import defaultdict

from django import template
from django.utils.safestring import mark_safe

from ..utils import parse_table_id, generic_table_description, table_link

register = template.Library()

@register.filter
def format_subtables_for_results(table_ids):

    parts = []
    deferred_racials = defaultdict(list)
    deferred_pr = []
    for table in table_ids:
        parsed = parse_table_id(table)
        if parsed['racial']:
            key = parsed['table_type']
            if parsed['puerto_rico']:
                key += 'PR'
            deferred_racials[key].append(parsed)
        elif parsed['puerto_rico']:
            deferred_pr.append(table)
        else:
            parts.append(table_link(table, generic_table_description(table)))

    for table in deferred_pr:
        parts.append(table_link(table, generic_table_description(table)))

    racial_label_tests = [
        ('B', 'Detailed (by race)'),
        ('C', 'Detailed (by race)'),
        ('BPR', 'Detailed (by race) for Puerto Rico'),
        ('CPR', 'Detailed (by race) for Puerto Rico'),
    ]
    for test, label in racial_label_tests:
        try:
            first = deferred_racials[test][0]
            parts.append(table_link(first['table_id'], label))
        except: pass




    return mark_safe(', '.join(parts))
