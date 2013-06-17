'''
This will run against the output from census-shapefile-utils
'''
import csv
from apps.census.models import Geography

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
    
path = 'all_geographies.csv'
with open(path) as f:
       reader = csv.DictReader(f)
       
       for row in reader:
           print row['FULL_NAME']
           record = Geography(
               full_geoid = row['FULL_GEOID'],
               full_name = _to_unicode(row['FULL_NAME']),
               sumlev = row['SUMLEV'],
               geo_type = row['GEO_TYPE'],
               region = row['REGION'],
               region_name = row['REGION_NAME'],
               division = row['DIVISION'],
               division_name = row['DIVISION_NAME'],
               statefp = row['STATEFP'],
               geoid = row['GEOID'],
               cd112fp = row['CD112FP'],
               cdsessn = row['CDSESSN'],
               countyfp = row['COUNTYFP'],
               placefp = row['PLACEFP'],
               classfp = row['CLASSFP'],
               sldlst = row['SLDLST'],
               sldust = row['SLDUST'],
               elsdlea = row['ELSDLEA'],
               scsdlea = row['SCSDLEA'],
               unsdlea = row['UNSDLEA'],
               pcicbsa = row['PCICBSA'],
               pcinecta = row['PCINECTA'],
               csafp = row['CSAFP'],
               cbsafp = row['CBSAFP'],
               metdivfp = row['METDIVFP'],
               zcta5ce10 = row['ZCTA5CE10'],
               name = _to_unicode(row['NAME']),
               namelsad = _to_unicode(row['NAMELSAD']),
               lsad = row['LSAD'],
               aland = row['ALAND'],
               intptlat = str(row['INTPTLAT'].replace('+','')),
               intptlon = str(row['INTPTLON']),
           )
           record.save()
