from django.core.management.base import BaseCommand
from multiprocessing import Pool
from traceback import format_exc
import boto
from boto.s3.connection import S3Connection
from boto.s3.key import Key

from django.conf import settings

import json
import cStringIO
import gzip

from ...profile import geo_profile, enhance_api_data

import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

if settings.AWS_KEY and settings.AWS_SECRET:
	s3 = boto.s3.connect_to_region('us-east-2', aws_access_key_id=settings.AWS_KEY,aws_secret_access_key=settings.AWS_SECRET, calling_format = boto.s3.connection.OrdinaryCallingFormat(),)
	logger.warn(s3)
	lookup = s3.lookup('d3-sd-child')
else:
	try:
		s3 = S3Connection()
	except:
		s3 = None

def s3_keyname(geoid):
    return '/1.0/data/dev-profiles/2012/%s.json' % geoid

def key(geoid):
    bucket = s3.get_bucket('d3-sd-child')
    keyname = s3_keyname(geoid)
    key = Key(bucket, keyname)

    return key

def write_profile_json(s3_key, data):
    s3_key.metadata['Content-Type'] = 'application/json'
    s3_key.metadata['Content-Encoding'] = 'gzip'
    s3_key.storage_class = 'REDUCED_REDUNDANCY'

    # create gzipped version of json in memory
    memfile = cStringIO.StringIO()
    #memfile.write(data)
    with gzip.GzipFile(filename=s3_key.key, mode='wb', fileobj=memfile) as gzip_data:
        gzip_data.write(data)
    memfile.seek(0)

    # store static version on S3
    s3_key.set_contents_from_file(memfile)

def seed(geoid):
    print "Working on {}".format(geoid)
    try:
        api_data = geo_profile(geoid, 'acs2012_5yr')
        api_data = enhance_api_data(api_data)

        s3key = key(geoid)
        write_profile_json(s3key, json.dumps(api_data))
        print "Wrote to key {}".format(s3key)
    except Exception, e:
        logger.error("Problem caching {}".format(geoid))
        logger.exception(e)
    print "Done working on {}".format(geoid)


class Command(BaseCommand):
    help = 'Pre-generates some Census Reporter content and places it on S3.'

    def handle(self, *args, **options):
        if not args:
            print "Please include the name of a file containing the seed geo_ids."
            return False

        parallelism = 1
        if 'parallelism' in options:
            parallelism = int(options.get('parallelism'))

        pool = Pool(parallelism)

        seed_file = open(args[0], 'r')

        for geoid in seed_file:
            pool.apply_async(seed, (geoid.strip(),))

        pool.close()
        pool.join()
