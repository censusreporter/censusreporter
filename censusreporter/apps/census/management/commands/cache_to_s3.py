from django.core.management.base import BaseCommand
from multiprocessing import Pool
from traceback import format_exc

import boto3
import json
import cStringIO
import gzip

from ...profile import geo_profile, enhance_api_data

import logging
logging.basicConfig(level=logging.WARN)
logger = logging.getLogger(__name__)

s3_client = boto3.client('s3')

def s3_keyname(geoid):
    return '/1.0/data/profiles/%s.json' % geoid

def write_profile_json(keyname, data):
    # create gzipped version of json in memory
    memfile = cStringIO.StringIO()
    #memfile.write(data)
    with gzip.GzipFile(filename=keyname, mode='wb', fileobj=memfile) as gzip_data:
        gzip_data.write(data)
    memfile.seek(0)

    # store static version on S3
    s3_client.put_object(
        Bucket='embed.censusreporter.org',
        Key=keyname,
        Body=memfile.getvalue(),
        ContentType='application/json',
        ContentEncoding='gzip'
    )

def seed(geoid):
    logger.info("Working on {}".format(geoid))
    try:
        api_data = geo_profile(geoid)
        api_data = enhance_api_data(api_data)

        keyname = s3_keyname(geoid)
        write_profile_json(keyname, json.dumps(api_data))
        logger.info("Wrote to key {}".format(s3key))
    except Exception as e:
        logger.error("Problem caching {}".format(geoid))
        logger.exception(e)
    logger.info("Done working on {}".format(geoid))

class Command(BaseCommand):
    help = 'Pre-generates some Census Reporter content and places it on S3.'

    def handle(self, *args, **options):
        if not args:
            print "Please include the name of a file containing the seed geo_ids."
            return False

        parallelism = 4
        if 'parallelism' in options:
            parallelism = int(options.get('parallelism'))

        pool = Pool(parallelism)

        seed_file = open(args[0], 'r')

        for geoid in seed_file:
            pool.apply_async(seed, (geoid.strip(),))

        pool.close()
        pool.join()
