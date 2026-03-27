from django.core.management.base import BaseCommand
from django.conf import settings
from multiprocessing import Pool
from traceback import format_exc
import boto3
from botocore.config import Config as BotoConfig

import json
import io
import gzip

from ...profile import geo_profile, enhance_api_data

import logging
logging.basicConfig(level=logging.WARN)
logger = logging.getLogger(__name__)

BUCKET_NAME = 'embed.censusreporter.org'

def get_s3_client():
    try:
        if settings.AWS_ACCESS_KEY_ID and settings.AWS_SECRET_ACCESS_KEY:
            return boto3.client(
                's3',
                aws_access_key_id=settings.AWS_ACCESS_KEY_ID,
                aws_secret_access_key=settings.AWS_SECRET_ACCESS_KEY,
                config=BotoConfig(s3={'addressing_style': 'path'})
            )
        else:
            return boto3.client('s3', config=BotoConfig(s3={'addressing_style': 'path'}))
    except Exception:
        return None

def s3_keyname(geoid):
    return '/1.0/data/profiles/%s.json' % geoid

def write_profile_json(s3_client, keyname, data):
    # create gzipped version of json in memory
    memfile = io.BytesIO()
    with gzip.GzipFile(filename=keyname, mode='wb', fileobj=memfile) as gzip_data:
        gzip_data.write(data.encode('utf-8'))
    memfile.seek(0)

    # store static version on S3
    s3_client.put_object(
        Bucket=BUCKET_NAME,
        Key=keyname,
        Body=memfile,
        ContentType='application/json',
        ContentEncoding='gzip'
    )

def seed(geoid):
    logger.info("Working on {}".format(geoid))
    try:
        api_data = geo_profile(geoid)
        api_data = enhance_api_data(api_data)

        s3_client = get_s3_client()
        if s3_client:
            keyname = s3_keyname(geoid)
            write_profile_json(s3_client, keyname, json.dumps(api_data))
            logger.info("Wrote to key {}".format(keyname))
        else:
            logger.error("Could not connect to S3")
    except Exception as e:
        logger.error("Problem caching {}".format(geoid))
        logger.exception(e)
    logger.info("Done working on {}".format(geoid))


class Command(BaseCommand):
    help = 'Pre-generates some Census Reporter content and places it on S3.'

    def handle(self, *args, **options):
        if not args:
            print("Please include the name of a file containing the seed geo_ids.")
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
