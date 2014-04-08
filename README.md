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
    create database census with owner census encoding 'UTF8' template template0;

Populate the database with census data:

    >> cd <your cloned repo dir>
    >> fab --set --deploy_type=dev,deploy_dir=../ load_api_data

Then fire it up:

    >> ./manage.py runserver

