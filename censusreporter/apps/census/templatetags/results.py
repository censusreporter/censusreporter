from collections import defaultdict

from django import template
from django.utils.safestring import mark_safe

from censusreporter.apps.census.utils import parse_table_id, generic_table_description, table_link

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
        ('C', 'Simplified (by race)'),
        ('BPR', 'Detailed (by race) for Puerto Rico'),
        ('CPR', 'Simplified (by race) for Puerto Rico'),
    ]
    for test, label in racial_label_tests:
        try:
            iteration_parts = []

            for table_dict in deferred_racials[test]:
                iteration_parts.append(table_link(table_dict['table_id'], table_dict['race']))
                group_table_id = table_dict['table_id']
            if iteration_parts:
                contents = ' / '.join(iteration_parts)
                iter_wrapper = """
<a class="toggler" data-id="{}">{}</a>
<span data-id="{}" class='racial-iteration'>{}</span>

""".format(group_table_id, label, group_table_id, contents)
                parts.append(iter_wrapper)
        except Exception as e:
            parts.append(e.message)

    return mark_safe(', '.join(parts))
