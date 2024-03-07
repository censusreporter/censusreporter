FROM python:3.11

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt gunicorn

ENV DJANGO_SETTINGS_MODULE=censusreporter.config.prod.settings \
    PYTHONPATH=censusreporter/apps:$PYTHONPATH

ADD . .
RUN ./manage.py collectstatic --noinput

CMD gunicorn --workers 10 --bind 0.0.0.0:$PORT --statsd-host telegraf.web:8125 --statsd-prefix censusreporter censusreporter.config.prod.wsgi
