FROM python:3.8

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt gunicorn

ENV DJANGO_SETTINGS_MODULE=censusreporter.config.prod.settings \
    PYTHONPATH=censusreporter/apps:$PYTHONPATH

ADD . .
RUN ./manage.py collectstatic --noinput

CMD NEW_RELIC_CONFIG_FILE=newrelic.ini newrelic-admin run-program gunicorn --workers 5 --bind 0.0.0.0:$PORT --statsd-host telegraf.web:8125 --statsd-prefix censusreporter censusreporter.config.prod.wsgi
