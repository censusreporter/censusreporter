"""A crude script for clearing out cached profiles. It has mutated a lot, so treat it as a scratchpad and tweak it
  as needed. Perhaps we'll ultimately figure out some patterns and we can make it more robust.

  You must set environment variables for AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY to be able to make changes to the S3 bucket.

   This script doesn't assume database access; instead:
   Do something like this to get a seed file of geoids from a database with our ACS 1 year schema:
   \copy (select geoid from acs2016_1yr.geoheader where component = '00' order by geoid) to '/tmp/2016_1yr_geoids.txt';

   .
"""
from boto.s3.connection import S3Connection, OrdinaryCallingFormat
from boto.s3.key import Key
from gzip import GzipFile
from cStringIO import StringIO
import json
import re
import requests
import time
import os, sys

CACHE_KEY_YEAR = '2016' # this specifies the S3 prefix we're checking for profile JSON which needs to be cleared
OBSOLETE_YEAR = '2015' # change this when we bump the 5-year release so we can recognize what is no longer welcome.
GEOID_LIST = '/tmp/2016_1yr_geoids.txt' # make a file of 1 year geoids to massively reduce search space
AWS_ACCESS_KEY_ID = os.environ.get('AWS_ACCESS_KEY_ID')
AWS_SECRET_ACCESS_KEY = os.environ.get('AWS_SECRET_ACCESS_KEY')

if AWS_ACCESS_KEY_ID is None or AWS_SECRET_ACCESS_KEY is None:
  print("You must define AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY as environment variables")
  sys.exit()

def decode_key(k):
  sio = StringIO(k.get_contents_as_string())
  return GzipFile(fileobj=sio).read()

def releases(j_string):
  pat = re.compile('ACS (.+?)-year')
  return set(pat.findall(j_string))

def get_key(b,geoid):
    key_path = '1.0/data/profiles/{}/{}.json'.format(CACHE_KEY_YEAR,geoid)
    return b.get_key(key_path)

s3 = S3Connection(AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, calling_format=OrdinaryCallingFormat())
bucket = s3.get_bucket('embed.censusreporter.org')

deleted = []

def prime_cache(geoid):
    url = "https://censusreporter.org/profiles/{}".format(geoid)
    resp = requests.get(url)
    if resp.status_code == 200:
        return True
    else:
        print("Fetch error {} for geoid {}".format(resp.status_code,geoid))
        return False
# with open(GEOID_LIST) as f:
#     for i,geoid in enumerate(f):
#         if i % 100 == 0: print i
#         geoid = geoid[:-1] # trim newline
#         k = get_key(bucket, geoid)
#         if k:
#             j = decode_key(k)
#             r = releases(j)
#             for release in r:
#               if OBSOLETE_YEAR in release:
#                 deleted.append(geoid)
#                 k.delete()
#                 print "deleted", geoid
#                 break
#
# errors = 0
# to_restore = list(deleted)
# for i,geoid in enumerate(to_restore):
#     if i % 100 == 0: print "{} of {} - {}".format(i,len(to_restore),geoid)
#     url = "https://censusreporter.org/profiles/{}".format(geoid)
#     resp = requests.get(url)
#     if resp.status_code == 200:
#         deleted.remove(geoid)
#     else:
#         errors += 1
#         if errors > 5:
#             print "5 errors so I quit"
#             break
#     time.sleep(5)


def delete_embed(release_slug, embed_slug,delete=False):
  """Given a 'release_slug' (such as 'ACS_2017_5-year') and an 'embed_slug' (such as 'social-place_of_birth-distribution'),
     delete any existing JSON embeds for that combination, or report that you would have, depending on the value of 'delete'

     Note that this JSON is not automatically generated on 404 from outside callers, so things only exist here because someone is
     using an embed, and if you delete the JSON without fixing it, you break their embed. So be nice and go to the profile pages which
     are impacted and find the right section and click 'embed' -- or, better, be a mensch and fix https://github.com/censusreporter/censusreporter/issues/249
     so that the missing cached embeds are autogenerated when needed!
  """
  to_fix = []
  for key in bucket.list('1.0/data/charts/{}'.format(release_slug)):
    if key.name.endswith('{}.json'.format(embed_slug)):
      if delete:
        print("deleting {}".format(key.name))
        key.delete()
      else:
        print("would delete {}".format(key.name))
      geoid = key.name.split('/')[-1].split('-')[0]
      to_fix.append("https://censusreporter.org/profiles/{}".format(geoid))
  if len(to_fix) > 0:
    if delete:
      word = ''
    else:
      word = 'would '
    print("{}need to fix these embeds for {}:".format(word, embed_slug))
    for x in to_fix:
      print(x)
  else:
    print("nothing to fix")

def delete_all_profiles(year_str):
  deleted = []
  for key in bucket.list('1.0/data/profiles/{}'.format(year_str)):
    key.delete()
    deleted.append(key)
    print(key.name)
    # if len(deleted) > 10:
    #     print("stopping at 10 for now")
    #     break
    if len(deleted) % 100 == 0:
      print(len(deleted))

# most recently, I wanted to
# delete_embed('ACS_2017_5-year', 'social-place_of_birth-distribution',delete=False)

def delete_by_pattern(key_prefix,patterns,do_it=False):
  """Given a prefix, look at every key matching that prefix, and, if
     the non-prefix part of the key matches any pattern, delete it
     (or, if do_it is False, print that it would be done)
  """
  regexes = []
  if isinstance(patterns,basestring):
    print("patterns should be a sequence not a string")
    return
  for pat in patterns:
    if type(pat) == '_sre.SRE_Pattern':
      regexes.append(pat)
    else:
      regexes.append(re.compile(pat))
  from collections import defaultdict
  delete_dict = defaultdict(list)
  for key in bucket.list(key_prefix):
    fn = key.name.replace(key_prefix,'')
    if fn[0] == '/': fn = fn[1:]
    for pat in regexes:
      if pat.match(fn):
        delete_dict[pat.pattern].append(fn)
        if do_it:
          key.delete()
        else:
          print("would delete ", key.name)
        continue
  for k,v in delete_dict.items():
    print("Pattern", k, " - ", len(v))


if __name__ == '__main__':
  delete_by_pattern('1.0/data/profiles/2018/',
    [
      '05000US.*',
      '31000US.*',
      '33000US.*',
    ],
    do_it=True
  )
  delete_by_pattern('tiger2018/show/',
    [
      '05000US.*parents.json',
      '31000US.*parents.json',
    ],
    do_it=True
  )
