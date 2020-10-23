FROM python:3.8

ADD . /censusreporter
WORKDIR /censusreporter

RUN pip install -r requirements.txt gunicorn

ENV DJANGO_SETTINGS_MODULE=config.prod.settings \
    PYTHONPATH=/censusreporter:/censusreporter/censusreporter/apps:$PYTHONPATH

CMD gunicorn --workers 3 --bind 0.0.0.0:$PORT censusreporter.config.prod.wsgi
