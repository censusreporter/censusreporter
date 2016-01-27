from django.db import models

class Table(models.Model):
    table_id = models.CharField(max_length=8)
    table_name = models.CharField(max_length=255)
    table_universe = models.CharField(max_length=128)
    table_size = models.IntegerField()
    subject_area = models.CharField(max_length=32)
    topics = models.CharField(max_length=255, blank=True)
    release = models.CharField(max_length=16)
    
    class Meta:
        ordering = ('release','table_id')

    def __unicode__(self):
        return '%s' % self.table_name

class Column(models.Model):
    table = models.ForeignKey(Table)
    parent_table_id = models.CharField(max_length=8)
    column_id = models.CharField(max_length=16)
    column_order = models.DecimalField(max_digits=4, decimal_places=1)
    column_name = models.CharField(max_length=255)
    indent_value = models.IntegerField(blank=True, null=True)
    parent_column_id = models.CharField(max_length=255)
    has_children = models.BooleanField()

    class Meta:
        ordering = ('table__table_id','table__release','column_id')

    def __unicode__(self):
        return '%s' % self.column_name


class SummaryLevel(models.Model):
    summary_level = models.CharField(max_length=3)
    name = models.CharField(max_length=128)
    slug = models.SlugField()
    short_name = models.CharField(max_length=128, blank=True)
    plural_name = models.CharField(max_length=128, blank=True)
    
    description = models.TextField(blank=True)
    census_description = models.TextField(blank=True)
    census_code_description = models.TextField(blank=True)
    census_notes = models.TextField(blank=True)
    source = models.CharField(max_length=64, blank=True)
    
    # Relationships
    parent = models.ForeignKey('self', related_name='children', blank=True, null=True)
    ancestors = models.ManyToManyField('self', related_name='descendants', symmetrical=False, blank=True, null=True)
    
    class Meta:
        ordering = ('summary_level',)

    def __unicode__(self):
        return '%s' % self.name
        
    @property
    def display_name(self):
        return self.short_name or self.name
        
    def pretty_ancestor_list(self):
        return ', '.join([ancestor.name for ancestor in self.ancestors.all()])

    def pretty_ancestor_options(self):
        _list = self.pretty_ancestor_list()
        return ' or '.join(_list.rsplit(',',1))

    def pretty_ancestor_sumlev_list(self):
        return ','.join([ancestor.summary_level for ancestor in self.ancestors.all()])

    def ancestor_sumlev_list(self):
        return [ancestor.summary_level for ancestor in self.ancestors.all()]


class SubjectConcept(models.Model):
    name = models.CharField(max_length=128)
    slug = models.SlugField()
    census_category = models.CharField(max_length=128, blank=True, default="Population")
    census_description = models.TextField(blank=True)
    census_history = models.TextField(blank=True)
    census_comparability = models.TextField(blank=True)
    census_notes = models.TextField(blank=True)
    description = models.TextField(blank=True)
    source = models.CharField(max_length=64, blank=True, default="American Community Survey Subject Definitions")
    
    class Meta:
        ordering = ('name',)
        
    def __unicode__(self):
        return '%s' % self.name
        
        
class Geography(models.Model):
    full_geoid = models.CharField(max_length=16)
    full_name = models.CharField(max_length=128)
    sumlev = models.CharField(max_length=3)
    geo_type = models.CharField(max_length=24)
    region = models.CharField(max_length=2, blank=True, null=True)
    region_name = models.CharField(max_length=24, blank=True)
    division = models.CharField(max_length=2, blank=True, null=True)
    division_name = models.CharField(max_length=24, blank=True)
    statefp = models.CharField(max_length=2, blank=True, null=True)
    geoid = models.CharField(max_length=24, blank=True, null=True)
    cd112fp = models.CharField(max_length=12, blank=True, null=True)
    cdsessn = models.CharField(max_length=12, blank=True, null=True)
    countyfp = models.CharField(max_length=12, blank=True, null=True)
    placefp = models.CharField(max_length=12, blank=True, null=True)
    classfp = models.CharField(max_length=12, blank=True)
    sldlst = models.CharField(max_length=12, blank=True, null=True)
    sldust = models.CharField(max_length=12, blank=True, null=True)
    elsdlea = models.CharField(max_length=12, blank=True, null=True)
    scsdlea = models.CharField(max_length=12, blank=True, null=True)
    unsdlea = models.CharField(max_length=12, blank=True, null=True)
    pcicbsa = models.CharField(max_length=1, blank=True, null=True)
    pcinecta = models.CharField(max_length=1, blank=True, null=True)
    csafp = models.CharField(max_length=12, blank=True, null=True)
    cbsafp = models.CharField(max_length=12, blank=True, null=True)
    metdivfp = models.CharField(max_length=12, blank=True, null=True)
    zcta5ce10 = models.CharField(max_length=12, blank=True, null=True)
    name = models.CharField(max_length=128, blank=True)
    namelsad = models.CharField(max_length=128, blank=True)
    lsad = models.CharField(max_length=4, blank=True, null=True)
    aland = models.CharField(max_length=24, blank=True, null=True)
    intptlat = models.CharField(max_length=16, blank=True)
    intptlon = models.CharField(max_length=16, blank=True)
    
    class Meta:
        ordering = ('full_geoid',)
        verbose_name_plural = "Geographies"

    def __unicode__(self):
        return '%s' % self.full_name
    