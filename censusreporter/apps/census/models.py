from django.db import models

class Table(models.Model):
    table_id = models.CharField(max_length=8)
    table_name = models.CharField(max_length=255)
    table_universe = models.CharField(max_length=128)
    table_size = models.IntegerField()
    subject_area = models.CharField(max_length=32)
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
    pcicbsa = models.CharField(max_length=1)
    pcinecta = models.CharField(max_length=1)
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
    