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
    
Then fire it up:    
    
    >> cd <your cloned repo dir>
    >> workon census
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
