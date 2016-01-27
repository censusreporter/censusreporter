'''
This will run against the output from census-table-metadata, assuming you drop
the output csv in the same dir as this script, and point `path` to it
'''
import csv
from apps.census.models import Table, Column

def _to_unicode(str, verbose=False):
    '''attempt to fix non uft-8 string into utf-8, using a limited set of encodings'''
    # fuller list of encodings at http://docs.python.org/library/codecs.html#standard-encodings
    if not str:  return u''
    u = None
    # we could add more encodings here, as warranted.  
    encodings = ('ascii', 'utf8', 'latin1')
    for enc in encodings:
        if u:  break
        try:
            u = unicode(str,enc)
        except UnicodeDecodeError:
            if verbose: print "error for %s into encoding %s" % (str, enc)
            pass
    if not u:
        u = unicode(str, errors='replace')
        if verbose:  print "using replacement character for %s" % str
    return u
    
def split_release(release):
    bits = release.split('ACS')
    bits = " ".join(bits)
    bits = "ACS" + bits.replace("_"," ")
    return bits
    
path = 'ACS2011_5-Year_Table_Metadata.csv'

with open(path) as f:
    reader = csv.DictReader(f)

    for row in reader:
        release_name = split_release(row['source'])
        if not row['column_id']:
            print "Table: " + row['table_name']
            record = Table(
                release = release_name,
                table_id = row['table_id'],
                table_name = row['table_name'],
                table_universe = row['table_universe'],
                table_size = row['table_size'],
                subject_area = row['subject_area'],
            )
            record.save()
        else:
            print "Column: " + row['column_name']
            table = Table.objects.get(table_id = row['table_id'], release = release_name)
            record = Column(
                table = table,
                parent_table_id = row['table_id'],
                column_id = row['column_id'],
                column_order = row['column_order'],
                column_name = row['column_name'].strip(':'),
                indent_value = row['indent'],
                parent_column_id = row['parent'],
                has_children = row['has_children'],
            )
            record.save()
        
