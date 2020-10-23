FROM python:3.8

ADD requirements.txt /censusreporter/requirements.txt
RUN pip install -r /censusreporter/requirements.txt gunicorn

ENV DJANGO_SETTINGS_MODULE=config.prod.settings \
    PYTHONPATH=/censusreporter:/censusreporter/censusreporter/apps:$PYTHONPATH

ADD . /censusreporter

CMD gunicorn --workers 3 --bind 0.0.0.0:$PORT censusreporter.config.prod.wsgi
