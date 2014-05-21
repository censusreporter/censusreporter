About Census Reporter
=====================

The United States Census Bureau provides a massive amount of data about the American people, covering topics from demographics to poverty rates to educational attainment, and at geographical levels ranging from the entire country down to city blocks. As a product of the federal government, the <a href="http://factfinder2.census.gov/faces/nav/jsf/pages/index.xhtml">data is free to use</a>. But for working journalists&mdash;especially those who don't have experience with the particulars of Census data&mdash;navigating these datasets on deadline can be a challenge.

Census Reporter's goal is to make it easier for journalists to write stories using Census data. Our focus is on the American Community Survey; we want to help people understand what the survey covers and help them quickly find data from places they care about. Census Reporter received <a href="http://www.niemanlab.org/2012/10/knight-funding-expands-ires-journalist-friendly-census-site/">funding from the Knight News Challenge</a>, and primary development took place from March 2013 through June 2014.

The <a href="http://censusreporter.org/">Census Reporter website</a> includes three primary types of pages: <a href="http://censusreporter.org/profiles/16000US5367000-spokane-wa/">geographical profiles</a>, which provide an overview of data indicators from a particular place; <a href="http://censusreporter.org/data/table/?table=B15002&geo_ids=050|04000US17&primary_geo_id=04000US17">data comparisons</a>, which use tabular, map and distribution formats to show information from a table across a group of geographies; and <a href="http://censusreporter.org/topics/income/">topical overviews</a>, which document the concepts and tables the ACS uses to cover specific subject areas.

In This Guide
=============

* [Setting up for local development](#setting-up-for-local-development)
* [Getting data from our API (the basics)](#getting-data-from-our-api-the-basics)
    * [Show data](#show-data)
    * [Get geography metadata](#get-geography-metadata)
    * [Get geography parents](#get-geography-parents)
    * [Geography search](#geography-search)
    * [Table search](#table-search)
* [Profile pages](#profile-pages)

Setting up for local development
================================

Census Reporter is an open-source project, so not only is the data free to use, so is the code. Developers in South Africa forked this repository to build <a href="http://wazimap.co.za/">Wazi</a>, for example, a site exploring South African data. We'd love it if you'd fork this repository, too, and maybe you even have features you'd like to contribute back!

Here's what you need to know to get a local version of Census Reporter up and running. These instructions assume you're using <a href="http://virtualenv.readthedocs.org/en/latest/">virtualenv</a> and <a href="http://virtualenvwrapper.readthedocs.org/en/latest/">virtualenvwrapper</a> to manage your development environments.

First, clone this repository to your machine and move into your new project directory:

    >> git clone git@github.com:censusreporter/censusreporter.git
    >> cd <your cloned repo dir>

Create the virtual environment for your local project, activate it and install the required libraries:

    >> mkvirtualenv census --no-site-packages
    >> workon census
    >> pip install -r requirements.txt

If you've upgraded XCode on OS X Mavericks, you may well see some compilation errors here. If so, try this:

    >> ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future pip install -r requirements.txt

With your development environment still active, make sure it has the path settings it will need:

    >> add2virtualenv ./censusreporter
    >> add2virtualenv ./censusreporter/apps

And make sure your development environment knows the proper DJANGO_SETTINGS_MODULE by creating a `postactivate` script ...

    >> cdvirtualenv bin
    >> touch postactivate

... and then using your favorite editor to add these two lines to your new `postactivate` script:

    export DJANGO_SETTINGS_MODULE='config.dev.settings'
    echo "DJANGO_SETTINGS_MODULE set to $DJANGO_SETTINGS_MODULE"

Save and close the file. Reactivate your development environment so `postactivate` gets triggered, then fire up your local Census Reporter:

    >> deactivate
    >> workon census
    >> cd <your cloned repo dir>
    >> python manage.py runserver

Hurray! Your local copy of Census Reporter will be hitting our production data sources, so you should be able to search and browse just like you would on the live website. If you'd like to go a step further, you can <a href="https://github.com/censusreporter/census-api">run the API locally</a>, and even <a href="http://censusreporter.tumblr.com/post/73727555158/easier-access-to-acs-data">load the entire Postgres database locally</a>, as well. But if you're primarily interested in adding features to the Census Reporter website, the instructions above are likely all you'll need to get going.

Getting data from our API (the basics)
======================================

As part of the Census Reporter project, we've loaded ACS data into a Postgres database to make queries significantly easier. The Census Reporter website gets information from this database using the API at api.censusreporter.org. We'll provide extensive API documentation separately, but here are the basic endpoints you're likely to use:

###Show data
This endpoint does the heavy lifting for Census Reporter's profile and comparison pages. Given a release code, a table code, and a geography, it will return American Community Survey data. A common call to this endpoint might look like:

    http://api.censusreporter.org/1.0/data/show/latest?table_ids=B01001&geo_ids=16000US5367000

This will return data for Spokane, WA, from the "Sex By Age" table, using the "latest" ACS release available. In this case, "latest" determines not only the year of release, but also the estimate used. The ACS provides <a href="http://www.census.gov/acs/www/guidance_for_data_users/estimates/">three datasets per year</a>: the 1-year, which uses 12 months of data to arrive at estimates for areas with at least 65,000 residents; the 3-year, which uses 36 months of data and covers areas with at least 20,000 people; and the 5-year, which uses 60 months of data and covers areas of all sizes.

For this API endpoint, "latest" is a shortcut that asks for the most current estimate from the most recent release year, favoring 1-year over 3-year over 5-year data. Because Spokane, WA, has more than 65,000 residents, the API call above would return data from the ACS 2012 1-year release.

You can ask for a specific release and estimate by exchanging "latest" for a release code that looks like `acs{year}_{estimate}yr`. So a call to:

    http://api.censusreporter.org/1.0/data/show/acs2012_5yr?table_ids=B01001&geo_ids=16000US5367000

... would return data for Spokane, WA, from the "Sex By Age" table, using the ACS 2012 5-year release.

You can ask for multiple tables at a time by passing a comma-separated `table_ids` list:

    http://api.censusreporter.org/1.0/data/show/latest?table_ids=B01001,B01002&geo_ids=16000US5367000

And you can ask for multiple geographies by passing a comma-separated `geo_ids` list:

    http://api.censusreporter.org/1.0/data/show/latest?table_ids=B01001,B01002&geo_ids=16000US5367000,16000US1714000

One particularly common use case is to request data for all geographies of a particular class within a particular parent geography, e.g. "compare all counties in Washington state." Identifying each county's geoID individually would be unwieldy, so we added a shortcut for this type of request. Your comma-separated list of `geo_ids` can contain one or more items that use the pipe character to describe a comparison set like this: `{child_summary_level}|{parent_geoid}`.

The Census uses summary levels to identify classes of geographies (like counties or school districts or census tracts), and each one <a href="http://censusreporter.org/topics/geography/">is represented by a three-digit code</a>. For this API endpoint, "all counties in Washington state" can be represented as `050|04000US53`, so a request to:

    http://api.censusreporter.org/1.0/data/show/latest?table_ids=B01001&geo_ids=050|04000US53

... would return "Sex By Age" data for all 39 counties in Washington. Great? Great! But hold on, let's talk about this for a second.

Specifying "latest" as the release parameter means we're asking for the most current estimate from the most recent release. Although some of the counties in Washington state are large enough to be in the 1-year release, many are not. Several counties fall into the 3-year release, and several more are small enough to only exist in the 5-year release. Data from different estimates should never be compared, so the API will return data from the lowest common denominator: in this case, the 2012 5-year release.

You won't have to guess which release you're getting data from, though; the API response from this endpoint will include four objects:

* `release`: metadata about the ACS release that provided the data in this response
* `tables`: metadata, including title and column information, about the tables requested
* `data`: the actual data for the geographies requested, including estimates and margins of error, nested according to geoID > table code > estimate|error > column code
* `geography`: metadata, including geoID and name, about the geographies requested

The entire response for the "all counties in Washington" example above <a href="https://gist.github.com/ryanpitts/71517ac65333c72ccb8e">looks like this</a>; below is an excerpt so you can see what to expect.

    {
        "release": {
            "id": "acs2012_5yr",
            "name": "ACS 2012 5-year",
            "years": "2008-2012"
        },
        "tables": {
            "B01001": {
                "title": "Sex by Age",
                "universe": "Total Population",
                "denominator_column_id": "B01001001",
                "columns": {
                    "B01001001": {
                        "name": "Total:",
                        "indent": 0
                    },
                    "B01001002": {
                        "name": "Male:",
                        "indent": 1
                    },
                    ...
                    "B01001049": {
                        "name": "85 years and over",
                        "indent": 2
                    }
                }
            }
        },
        "data": {
            "05000US53001": {
                "B01001": {
                    "estimate": {
                        "B01001001": 18575,
                        "B01001002": 9453,
                        ...
                        "B01001049": 214
                    },
                    "error": {
                        "B01001001": 0,
                        "B01001002": 24,
                        ...
                        "B01001049": 53
                    }
                }
            }
        },
        "geography": {
            "04000US53": {
                "name": "Washington"
            },
            "05000US53047": {
                "name": "Okanogan County, WA"
            },
            ...
            "05000US53035": {
                "name": "Kitsap County, WA"
            }
        }
    }

Note that Washington state's data is also included in this API response. When you ask for a set of geographies&mdash;in this case, 050|04000US53&mdash;the API will automatically include the parent geography's data so you can perform comparisons.

###Get geography metadata

This endpoint provides basic information about a specific geography, including name, summary level, land area, and population. A common call to this endpoint might look like:

    http://api.censusreporter.org/1.0/geo/tiger2012/16000US5367000

This request uses the geoID for Spokane, WA, and returns this JSON:

    {
        "geometry": null,
        "type": "Feature",
        "properties": {
            "awater": 1991595,
            "display_name": "Spokane, WA",
            "simple_name": "Spokane",
            "sumlevel": "160",
            "population": 208040,
            "full_geoid": "16000US5367000",
            "aland": 178021482
        }
    }

If you append a querystring paramater `geom=true` to your request, the API response's `geometry` <a href="https://gist.github.com/ryanpitts/750aacecc167233c5547">will include geographical coordinates</a> suitable for mapping.

This endpoint returns Tiger 2012 data for all but one class of geography: congressional districts. Redistricting after the 2010 Decennial Census changed these boundaries, and some states gained or lost entire districts. If you request metadata for a congressional district, the API will return Tiger 2013 data <a href="http://www.census.gov/geo/maps-data/data/pdfs/tiger/How_do_I_choose_TIGER_vintage.pdf">in order to accurately represent redistricting</a>.

###Get geography parents

This endpoint takes a specific geography and provides metadata for it, along with a list of parent geographies that contain it. A common call to this endpoint might look like:

    http://api.censusreporter.org/1.0/geo/tiger2012/16000US5367000/parents

... which returns results that include name, geoID, summary level, geography class, and percentage of coverage:

    {
        "parents": [
            {
                "sumlevel": "160",
                "relation": "this",
                "coverage": 100,
                "display_name": "Spokane, WA",
                "geoid": "16000US5367000"
            },
            {
                "sumlevel": "050",
                "relation": "county",
                "coverage": 100,
                "display_name": "Spokane County, WA",
                "geoid": "05000US53063"
            },
            {
                "sumlevel": "310",
                "relation": "CBSA",
                "coverage": 100,
                "display_name": "Spokane, WA Metro Area",
                "geoid": "31000US44060"
            },
            {
                "sumlevel": "040",
                "relation": "state",
                "coverage": 100,
                "display_name": "Washington",
                "geoid": "04000US53"
            },
            {
                "sumlevel": "010",
                "relation": "nation",
                "coverage": 100,
                "display_name": "United States",
                "geoid": "01000US"
            }
        ]
    }

###Geography search

This endpoint returns metadata for geographies with names that match a text string. A common call to this endpoint might look like:

    http://api.censusreporter.org/1.0/geo/search?q=spo

... which returns results that include each matching geography's summary level, geoID and name:

    {
      "results": [
        {
          "sumlevel": "160",
          "full_geoid": "16000US5367000",
          "full_name": "Spokane, WA"
        },
        {
          "sumlevel": "160",
          "full_geoid": "16000US5367167",
          "full_name": "Spokane Valley, WA"
        },
        {
          "sumlevel": "160",
          "full_geoid": "16000US3469810",
          "full_name": "Spotswood, NJ"
        },
        ...
        {
          "sumlevel": "795",
          "full_geoid": "79500US5310504",
          "full_name": "Spokane County (Outer)--Cheney City PUMA, WA"
        }
      ]
    }

You can limit the search to a particular set of summary levels by passing an optional, comma-separated list in a `sumlevs` argument. The Census Reporter website does this in most cases:

    http://api.censusreporter.org/1.0/geo/search?q=spo&sumlevs=010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970

###Table search

This endpoint returns metadata for tables with titles or column names that match a text string. A common call to this endpoint might look like:

    http://api.censusreporter.org/1.0/table/search?q=heat

... which would return metadata for matches that includes table name, table code, table universe and table topics. Column metadata is also included where they matched type is a column:

    [
        {
            "unique_key": "B25040",
            "universe": "Occupied Housing Units",
            "simple_table_name": "House Heating Fuel",
            "id": "B25040",
            "table_id": "B25040",
            "table_name": "House Heating Fuel",
            "type": "table",
            "topics": [
                "housing",
                "physical characteristics"
            ]
        },
        {
            "unique_key": "B25117",
            "universe": "Occupied Housing Units",
            "simple_table_name": "Tenure by House Heating Fuel",
            "id": "B25117",
            "table_id": "B25117",
            "table_name": "Tenure by House Heating Fuel",
            "type": "table",
            "topics": [
                "housing",
                "physical characteristics",
                "tenure"
            ]
        },
        ...
        {
            "unique_key": "B24126|B24126441",
            "universe": "Full-time, Year-round Civilian Employed Female Population 16 Years and Over",
            "simple_table_name": "Detailed Occupation for the Full-time, Year-round Civilian Employed Female Population",
            "column_id": "B24126441",
            "table_id": "B24126",
            "id": "B24126441",
            "table_name": "Detailed Occupation for the Full-time, Year-round Civilian Employed Female Population 16 Years and Over",
            "type": "column",
            "topics": [
                "employment"
            ],
            "column_name": "Heat treating equipment setters, operators, and tenders, metal and plastic"
        }
    ]

Matches against table names will appear first in the response, followed by matches against column names within tables. The `unique_key` value is a combination of table code and column code (if necessary), and is useful as a key for autocomplete libraries like <a href="http://twitter.github.io/typeahead.js/">Typeahead</a>.

Profile pages
=============

Geographical profile pages provide an overview of important Census data indicators for a particular place. We've divided these data points into five categories: Demographics, Economics, Families, Housing and Social. Each category includes a mix of figures and charts that help you understand what life is like in a community. Profiles also include comparative data, so you can consider statistics from a city, for example, in the context of the metro area and state they're in.

The Census Reporter website generates profile pages for geographies at the <a href="http://censusreporter.org/profiles/01000US-united-states/">national</a> and <a href="http://censusreporter.org/profiles/04000US17-illinois/">state</a> levels all the way down to <a href="http://censusreporter.org/profiles/14000US17031808702-census-tract-808702-cook-il/">census tracts</a>. If your browser supports geolocation, you can <a href="http://censusreporter.org/locate/">use your current location</a> to easily profile any of the geographies that you're currently in.

###The profile page back end

Each profile page requires queries against a few dozen Census tables. To lighten the database load, everything has been pre-computed and stored as JSON in an Amazon S3 bucket, so most of these pages should never touch the API. When the Census Reporter app sees a profile request, the `GeographyDetail` view <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/views.py#L285">checks for flat JSON data</a> first, and falls back to <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/profile.py">a profile generator</a> if necessary.

The profile generator at `profile.py` does a lot of work: 