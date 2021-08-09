import json
from django.utils.safestring import mark_safe
from django.utils.html import format_html
from django.template.defaultfilters import register

_json_script_escapes = {
    ord('>'): '\\u003E',
    ord('<'): '\\u003C',
    ord('&'): '\\u0026',
}

# backport from later versions of Django; change name so there's no confusion later
# https://github.com/django/django/blob/68cc04887b3c5b7ce8f28eaae5de266db99ca9a6/django/utils/html.py#L71-L89
@register.filter(is_safe=True)
def cr_json_script(value, element_id):
    """
    Escape all the HTML/XML special characters with their unicode escapes, so
    value is safe to be output anywhere except for inside a tag attribute. Wrap
    the escaped JSON in a script tag.
    """
    from django.core.serializers.json import DjangoJSONEncoder
    json_str = json.dumps(value, cls=DjangoJSONEncoder).translate(_json_script_escapes)
    return format_html(
        '<script id="{}" type="application/json">{}</script>',
        element_id, mark_safe(json_str)
    )
