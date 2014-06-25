censusreporter
==============

Quick clone and setup. Assumes you have `virtualenvwrapper` installed.
    
    >> mkvirtualenv census --no-site-packages
    >> cd <your cloned repo dir>
    >> pip install -r requirements.txt
    >> add2virtualenv ./censusreporter
    >> add2virtualenv ./censusreporter/apps

Make sure your virtualenv knows the proper DJANGO_SETTINGS_MODULE:

    >> workon census
    >> cdvirtualenv bin
    >> touch postactivate

Add this to your `postactivate` (changing 'dev' to 'prod' as appropriate):

    export DJANGO_SETTINGS_MODULE='config.dev.settings'
    echo "DJANGO_SETTINGS_MODULE set to $DJANGO_SETTINGS_MODULE"

Activate the virtualenv:

    >> workon census

Setup a local Postgres database:

    >> psql
    create user census with password 'census';
    create database census_2011 with owner census encoding 'UTF8' template template0;

Populate the database with census data:

    >> cd <your cloned repo dir>
    >> fab dev load_api_data

Then fire it up:

    >> ./manage.py runserver

Embedded content
----------------

The charts on censusreporter are made available for embedding on 3rd party sites through the
use of iframes. These embedded charts rely on static content and json data files that are hosted
in an AWS S3 bucket.

The S3 bucket contains many of the static files found in `apps/census/static`, so the same
rendering logic is used for the site's graphs and the embedded graphs. The data files that are
needed for rendering embedded graphs are automatically pushed to the S3 bucket each time a
new profile is accessed on the censusreporter site.

Deployment
----------

Deployments are done from the code on GitHub, NOT the code on your local machine.
So be sure to run `git push` before deploying.

To deploy to an already provisioned machine, run:

    >> fab prod deploy

To reload all stats data, run:

    >> fab prod deploy reload_api_data
