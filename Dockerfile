FROM python:3.11

# uv for dependency management (copied from the official standalone image)
COPY --from=ghcr.io/astral-sh/uv:0.11.23 /uv /uvx /bin/

WORKDIR /app

# Install locked dependencies into /app/.venv (reproducible from uv.lock)
COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev

# Put the project virtualenv on PATH so python/gunicorn resolve to it
ENV PATH="/app/.venv/bin:$PATH" \
    DJANGO_SETTINGS_MODULE=censusreporter.config.prod.settings \
    PYTHONPATH=censusreporter/apps:$PYTHONPATH

ADD . .
RUN ./manage.py collectstatic --noinput

CMD gunicorn --workers 10 --bind 0.0.0.0:$PORT --statsd-host telegraf.web:8125 --statsd-prefix censusreporter censusreporter.config.prod.wsgi
