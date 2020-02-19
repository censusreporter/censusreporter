from __future__ import absolute_import
from __future__ import print_function
import os
from django.core.management.base import BaseCommand, CommandError
from census.models import Districts
import csv
import six
from six.moves import range


class Command(BaseCommand):

    def load_districts(self):
        # create dictionary for each type of district
        # Wayne county commission district
        WCCNums = list(range(1, 16))
        WCCDistricts = dict.fromkeys(WCCNums, '')

        DPDNums = list(range(2, 13))
        DPDPrecincts = dict.fromkeys(DPDNums, '')        

        DETCouncilDistNums = list(range(1, 8))
        DETCouncilDists = dict.fromkeys(DETCouncilDistNums, '')     

        __location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))
        # open csv, parse dump into Districts table
        with open(os.path.join(__location__, 'tracts_to_districts.csv'), 'rb') as f:
            reader = csv.reader(f)
            for row in reader:
                if row[0] != 'OBJECTID': # Ignore the header row, import everything else
                    if row[2]:
                        WCCDistricts[int(row[2])] = WCCDistricts[int(row[2])] + '14000US' + row[1] + ','
                    if row[3]:
                        DPDPrecincts[int(row[3])] = DPDPrecincts[int(row[3])] + '14000US' + row[1] + ','
                    if row[4]:
                        DETCouncilDists[int(row[4])] = DETCouncilDists[int(row[4])] + '14000US' + row[1] + ','

        # now add to database
        for i, d in six.iteritems(WCCDistricts):
            district = Districts()
            district.dashboard_name = 'Wayne County Commission District ' + str(i)
            district.dashboard_slug = 'wayne-county-commission-district-' + str(i)
            district.dashboard_geoids = d.rstrip(',')
            district.save()

        for i, d in six.iteritems(DPDPrecincts):
            district = Districts()
            district.dashboard_name = 'Detroit Police Department Precinct ' + str(i)
            district.dashboard_slug = 'detroit-police-department-precinct-' + str(i)
            district.dashboard_geoids = d.rstrip(',')
            district.save()            

        for i, d in six.iteritems(DETCouncilDists):
            district = Districts()
            district.dashboard_name = 'Detroit City Council District ' + str(i)
            district.dashboard_slug = 'detroit-city-council-district-' + str(i)
            district.dashboard_geoids = d.rstrip(',')
            district.save() 


    def handle(self, *args, **options):
        print("Loading Districts....")
        self.load_districts()
        print("Done.")