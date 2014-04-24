from django.core.management.base import BaseCommand
from multiprocessing import Pool
from traceback import format_exc
import json

from ...profile import geo_profile, enhance_api_data

def seed(geoid):
    print "Working on {}".format(geoid)
    try:
        api_data = geo_profile(geoid)
        api_data = enhance_api_data(api_data)
    except Exception, e:
        format_exc(e)
    print "Done working on {}".format(geoid)

    print json.dumps(api_data)

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
