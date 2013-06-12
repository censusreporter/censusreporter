censusreporter
==============

Quick clone and setup. Assumes you have `virtualenvwrapper` installed.
    
    >> mkvirtualenv census --no-site-packages
    >> cd <your cloned repo dir>
    >> pip install -r requirements.txt
    >> add2virtualenv ./censusreporter
    >> add2virtualenv ./censusreporter/apps
    
Make sure your virtualenv knows the proper DJANGO_SETTINGS_MODULE:

    >> cdvirtualenv census
    >> cd bin
    >> touch postactivate
    
Add this to your `postactivate` (changing 'dev' to 'prod' as appropriate):

    export DJANGO_SETTINGS_MODULE='config.dev.settings'
    echo "DJANGO_SETTINGS_MODULE set to $DJANGO_SETTINGS_MODULE"
    
Then fire it up:    
    
    >> cd <your cloned repo dir>
    >> workon census
    >> ./manage.py runserver

