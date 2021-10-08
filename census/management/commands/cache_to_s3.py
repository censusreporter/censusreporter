from __future__ import absolute_import
from __future__ import print_function
from django.core.management.base import BaseCommand
from multiprocessing import Pool
from traceback import format_exc
import boto3
import botocore
from boto3 import Session
# import boto
# from boto.s3.connection import S3Connection
# from boto.s3.key import Key

from django.conf import settings

import json
from io import BytesIO
import gzip

from ...profile import geo_profile, enhance_api_data

import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

if settings.AWS_KEY and settings.AWS_SECRET:
    s3_session = boto3.Session(
        aws_access_key_id=settings.AWS_KEY,
        aws_secret_access_key=settings.AWS_SECRET,
        region_name='us-east-2'
    )
    s3 = s3_session.resource('s3')
else:
    s3 = None

def s3_keyname(geoid):
    return '1.0/data/profiles/2019/%s.json' % geoid

def get_s3_object(geoid):
    s3_object = None
    if s3:
        keyname = s3_keyname(geoid)
        s3_object = s3.Object('d3-sd-child', keyname)
            
    return s3_object

def write_profile_json(s3_object, data, geoid):
    # create gzipped version of json in memory
    memfile = BytesIO()
    #memfile.write(data)
    keyname = s3_keyname(geoid)
    data_as_bytes = str.encode(data)
    with gzip.GzipFile(filename=keyname, mode='wb', fileobj=memfile) as gzip_data:
        gzip_data.write(data_as_bytes)
    memfile.seek(0)

    # store static version on S3
    s3_object.put(Body=memfile, ContentType='application/json', ContentEncoding='gzip', StorageClass='REDUCED_REDUNDANCY')

def seed(geoid):
    print("Working on {}".format(geoid))
    try:
        api_data = geo_profile(geoid, 'acs2019_5yr')
        api_data = enhance_api_data(api_data)

        s3_object = get_s3_object(geoid)
        write_profile_json(s3_object, json.dumps(api_data), geoid)
        print("Wrote to key {}".format(s3_object))
    except Exception as e:
        logger.error("Problem caching {}".format(geoid))
        logger.exception(e)
    print("Done working on {}".format(geoid))


class Command(BaseCommand):
    help = 'Pre-generates some Census Reporter content and places it on S3.'

    def add_arguments(self, parser):
        parser.add_argument('file')
        parser.add_argument('parallelism')

    def handle(self, *args, **options):
        file = options['file']
        if not file:
            print("Please include the name of a file containing the seed geo_ids.")
            return False

        parallelism = 1
        if 'parallelism' in options:
            parallelism = int(options.get('parallelism'))

        pool = Pool(parallelism)

        seed_file = open(file, 'r')

        for geoid in seed_file:
            pool.apply_async(seed, (geoid.strip(),))

        pool.close()
        pool.join()
