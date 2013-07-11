from django.contrib import admin

from .models import SubjectConcept, SummaryLevel, Geography

class SubjectConceptAdmin(admin.ModelAdmin):
    save_on_top = True
    prepopulated_fields = {'slug': ('name',)}
    list_display = ('name', 'census_category')
    list_editable = ('census_category',)

class SummaryLevelAdmin(admin.ModelAdmin):
    save_on_top = True
    prepopulated_fields = {'slug': ('name',)}
    list_display = ('summary_level', 'name', 'short_name','plural_name')
    list_editable = ('short_name', 'plural_name')
    filter_horizontal = ('ancestors',)
    list_display_links = ('name',)

admin.site.register(SubjectConcept, SubjectConceptAdmin)
admin.site.register(SummaryLevel, SummaryLevelAdmin)
admin.site.register(Geography)
