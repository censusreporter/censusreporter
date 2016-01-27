from django import template

register = template.Library()

@register.simple_tag(takes_context=True)
def table_specific(context, table_id):
    """Safely include a fragment specific to the given table, but handle no special info gracefully."""
    try:
        fragment_path = "table/specific/%s.html" % table_id
        t = template.loader.get_template(fragment_path)
        return t.render(context)
    except template.TemplateDoesNotExist:
        return ""
