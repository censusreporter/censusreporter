# Census Reporter — front-end (Django)

Census Reporter (censusreporter.org) helps journalists use American Community Survey (ACS) data.
The code is old, from 2013 onward, and runs in production. **Keep changes small and incremental.** Match the
existing style. Don't modernize code you weren't asked to change.

## The system (five sibling repos under `~/Development/`)

```
Census Bureau files ─► census-postgres-scripts (download/import shell scripts, run on an EC2 box)
                        │   uses SQL generated in census-postgres (per-release DDL)
                        │   and metadata CSVs from census-table-metadata
                        ▼
                  PostgreSQL + PostGIS  (schemas: acsYYYY_Nyr, tigerYYYY, dec20X0_pl94, public/aggregation)
                        ▼
                  census-api (Flask, api.censusreporter.org, JSON) ─► also Celery worker + Redis for user_geo
                        ▼
                  censusreporter (this repo: Django, server-renders pages + lots of client-side JS)
```

- **censusreporter**: this repo. Profile pages, table pages, comparison pages (map/table/distribution), topic pages, search.
  It has no database of its own; everything comes from the API over HTTP (`settings.API_URL`).
- **census-api** (`../census-api`): Flask app. `census_extractomatic/api.py` holds nearly all of it. See its CLAUDE.md.
- **census-postgres** (`../census-postgres`): generated SQL (create tables/views/geoheader), one directory per release, plus `meta-scripts/`.
- **census-postgres-scripts** (`../census-postgres-scripts`): numbered bash/SQL scripts that download and load releases. The current ones are in `table_based/`.
- **census-table-metadata** (`../census-table-metadata`): builds the table/column metadata CSVs in `precomputed/`.

**The canonical annual-update runbook is `../census-api/DATA_UPDATES.md`.** Read it before any release work.

### Release identifiers are hardcoded in many places
A new ACS or TIGER year means touching all of these. Grep for `acs20` and `tiger20` to find the current set:
- API: `allowed_acs`, `ACS_NAMES`, `allowed_tiger` at the top of `census-api/census_extractomatic/api.py`; also raw `tigerYYYY.` schema names in SQL throughout api.py, `exporters.py`, and `sitemap/profile.py`.
- Front-end Python: `ACS_RELEASES` in `censusreporter/apps/census/utils.py`; `/1.0/geo/tigerYYYY/` URLs in `profile.py` and `views.py`.
- Front-end JS/templates: `releaseNames` in `static/js/app.js`; `tigerYYYY` in `comparisons.js`, `cr-leaflet.js`, `profile.topic.picker.js`, `templates/profile/profile_detail.html`.

## Domain essentials
- **Release slug**: `acs2024_5yr`, `acs2024_1yr` (the database schema names). Display names look like "ACS 2024 5-year". Some embed code uses `ACS_2024_5-year`.
  1-year data covers only geographies with 65k+ population. The API falls back from 1-year to 5-year when a geo is missing (order of `allowed_acs`).
- **Geoid**: Census Reporter format is `SSS00USxxxx`, where the first 3 digits are the summary level, e.g. `16000US1714000` = Chicago (place), `04000US17` = Illinois.
  The Census's own 7-character form (`1600000US...`) is normalized to this format, both on import and in `GeographyDetailView.parse_fragment`.
- **Summary levels (sumlev)**: 010 nation, 040 state, 050 county, 060 county subdivision, 140 tract, 150 block group, 160 place, 310 CBSA, 500 congressional district, 860 ZCTA, etc.
  See `SUMMARY_LEVEL_DICT` in `utils.py` and `SUMLEV_NAMES` in api.py. Geo-lists like `050|04000US17` mean "all counties in Illinois".
- **Table IDs**: `B01001` (B = detailed, C = collapsed), race iterations get suffixes (`B01001A`–`I`). Columns are `B01001001`, etc.
  Every estimate has a margin of error (MOE). `profile.py` propagates MOEs (`moe_add`, `moe_proportion`, `moe_ratio`), so preserve that when you edit derived stats.
- **Profile stats** are defined in `profile.py::geo_profile` with small RPN strings (`value_rpn_calc`), e.g. `'B01001003 B01001004 + ... B01001001 / %'`.

## Layout
- `censusreporter/config/{base,dev,prod}/`: Django settings and URL configs. Dev uses DummyCache. Prod uses a file cache at `/tmp/censusreporter_cache`.
- `censusreporter/apps/census/` is the only app:
  - `urls.py`: all routes. Most views are wrapped in `cache_page(1 week)`.
  - `views.py`: class-based views (`GeographyDetailView`, `TableDetailView`, `DataView`, `SearchResultsView`, `MakeJSONView` for embed JSON written to S3, and user_geo views).
  - `profile.py`: builds the profile-page data structure from API calls (`ApiClient`).
  - `utils.py`: `ACS_RELEASES`, sumlev dicts, helpers. `topics.py`: topic-page metadata.
  - `templatetags/`: custom filters. `management/commands/`: one-off maintenance (cache_to_s3, scrape_other_tables, taxonify).
  - `templates/`: `profile/`, `table/`, `data/` (comparison pages), `topics/` (many hand-written topic pages), `user_geo/`.
  - `static/js/`: hand-written jQuery/D3/Leaflet code. `comparisons.js` and `charts.js` are the large ones.
    `static/js/aggregate.js` is **built output**: its source is `js-src/aggregate.jsm` (Parcel, `npm run build`).
  - `static/sitemap/`: generated by `census-api/sitemap/build_all.py`. Don't hand-edit.
- `embed.censusreporter.org/`: static embed-chart assets, deployed separately.
- `town-tips/`: gitignored work-in-progress (county-subdivision/place crossref from Gazetteer files).

## Running locally
- Python env: virtualenv at `~/.virtualenvs/censusreporter` (Python 3.11). The pyenv global python does *not* have Django.
- Env vars come from `.env` (dotenv via `.envrc`): `DJANGO_SETTINGS_MODULE=censusreporter.config.dev.settings`, `CENSUSREPORTER_API_URL`
  (point it at `http://localhost:5000` for a local API, or `https://api.censusreporter.org` for production data).
- Tests (8 unit tests, no DB or API needed; they use in-memory sqlite):
  ```bash
  set -a; source .env; set +a; PYTHONPATH=censusreporter/apps:censusreporter ~/.virtualenvs/censusreporter/bin/python manage.py test census
  ```
- Dev server: `python manage.py runserver` (same env). JS bundle: `npm run build`.
- The README is mostly API/profile explainer text from 2014. Its setup section is outdated (virtualenvwrapper, `config.dev.settings`).

## Deployment — do not do this without explicit permission
- Git remotes: `origin` (GitHub censusreporter/censusreporter) and `dokku` (dokku.censusreporter.org). **Pushing to `dokku` deploys to production.**
- Prod runs from the `Dockerfile` (gunicorn, `censusreporter.config.prod.settings`, whitenoise static files).

## Caveats
- `.env` and `../census-api/.envrc` contain live credentials. They're gitignored. Never print, copy, or commit them.
- No linter/formatter is configured. Don't reformat whole files.
- Cached pages mean front-end changes may not show until the cache is cleared (`cache_clearer.py` exists for prod).
