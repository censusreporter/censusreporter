About Census Reporter
=====================

The United States Census Bureau provides a massive amount of data about the American people, covering topics from demographics to poverty rates to educational attainment, and at geographical levels ranging from the entire country down to city blocks. As a product of the federal government, the <a href="http://factfinder2.census.gov/faces/nav/jsf/pages/index.xhtml">data is free to use</a>. But for working journalists&mdash;especially those who don't have experience with the particulars of Census data&mdash;navigating these datasets on deadline can be a challenge.

Census Reporter's goal is to make it easier for journalists to write stories using Census data. Our focus is on the American Community Survey; we want to help people understand what the survey covers and help them quickly find data from places they care about. Census Reporter received <a href="http://www.niemanlab.org/2012/10/knight-funding-expands-ires-journalist-friendly-census-site/">funding from the Knight News Challenge</a>, and primary development took place from March 2013 through June 2014.

The <a href="http://censusreporter.org/">Census Reporter website</a> includes three primary types of pages: <a href="http://censusreporter.org/profiles/16000US5367000-spokane-wa/">geographical profiles</a>, which provide an overview of data indicators from a particular place; <a href="http://censusreporter.org/data/table/?table=B15002&geo_ids=050|04000US17&primary_geo_id=04000US17">data comparisons</a>, which use tabular, map and distribution formats to show information from a table across a group of geographies; and <a href="http://censusreporter.org/topics/income/">topical overviews</a>, which document the concepts and tables the ACS uses to cover specific subject areas.

In This Guide
=============

* [Setting up for local development](#setting-up-for-local-development)
* [Profile pages](#profile-pages)
    * [The profile page back end](#the-profile-page-back-end)
    * [The profile page front end](#the-profile-page-front-end)
        * [Profile map](#profile-map)
        * [Profile charts](#profile-charts)
        * [Responsive design](#responsive-design)

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

Save and close the file. Reactivate your development environment so `postactivate` gets triggered:

    >> deactivate
    >> workon census

Setup a local Postgres database:

    >> psql
    create user census with password 'census';
    create database census_2011 with owner census encoding 'UTF8' template template0;

Populate the database with census data:

    >> cd <your cloned repo dir>
    >> fab dev load_api_data

Then fire it up:

    >> ./manage.py runserver

Importing Data
==============

The website gets census information from tables stored in Postgres, using the logic in the `censusreporter/api` package.

For more infromation on how census data is stored, table formats, and importing new data, see [censusreporter/api/README.md](https://github.com/Code4SA/censusreporter/blob/master/censusreporter/api/README.md).

Profile pages
=============

Geographical profile pages provide an overview of important Census (and other) data indicators for a particular place. We've divided these data points into categories: Elections, Demographics, Households, Service Delivery, Economics and Education. Each category includes a mix of figures and charts that help you understand what life is like in a community. Profiles also include comparative data, so you can consider statistics from a city, for example, in the context of the metro area and province they're in.

The Census Reporter website generates profile pages for geographies at the <a href="http://wazimap.co.za/profiles/country-ZA/">national</a> and <a href="http://wazimap.co.za/profiles/province-NC/">provincial</a> levels all the way down to <a href="http://wazimap.co.za/profiles/ward-10303005/">wards</a>. If your browser supports geolocation, you can <a href="http://wazimap.co.za/locate/">use your current location</a> to easily profile any of the geographies that you're currently in.

###The profile page back end

Each profile page requires queries against a few dozen Census tables. When the Census Reporter app sees a profile request, the <a href="https://github.com/Code4SA/censusreporter/blob/master/censusreporter/apps/census/wazi_views.py">`SouthAfricaGeographyDetailView`</a> calls a profile generator.

The profile generator at <a href="https://github.com/Code4SA/censusreporter/blob/master/censusreporter/api/controller/census.py#L189">`api/controller/census.py`</a> gets the appropriate census data and merges it together. It returns a Python dictionary with this processed data from the API. The `SouthAfricaGeographyDetail` view passes this into an `enhance_api_data` method to do a couple more things:

* removes extraneous comparisons, limiting data to the profile geography plus at most two parent geographies
* calculates index values, which are figures from the profile geography expressed as percentages of a parent geography's value. (These are ultimately used Madlib-style, for phrases like "a little less than the figure in Gauteng")
* calculates margin of error ratios to determine which data points should be flagged as requiring extra care

Once this is done, the final job is to use `SafeString()` to hand everything to the template in a format suitable for use as Javascript variables.

This pattern&mdash;using a generator script to collect and shape data from multiple tables, then storing the results as flat JSON&mdash;is something that could be repeated for new Census Reporter features. We'd like to add deeper category profiles for each of the Demographics, Economics, Families, Housing and Social sections, for example, which could be done by copying and modifying the <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/profile.py#L173">`geo_profile` method</a> in `profile.py`.

###The profile page front end

TODO: adapt for wazimap.co.za

The skeleton of the profile page you see on the Census Reporter website is created by <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/templates/profile/profile.html">a Django template</a>. The map is filled in by one Javascript library: <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/static/js/TileLayer.GeoJSON.js">`TileLayer.GeoJSON.js`</a>, and the charts filled in by another: <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/static/js/charts.js">`charts.js`</a>.

####Profile map

TODO: adapt for wazimap.co.za

The profile page uses Javascript to call the ["geography metadata" endpoint](#get-geography-metadata), using the `geom=true` argument to get boundary coordinates for the chosen place. A tile layer then adds shapes of nearby geographies at the same summary level, which can be used to navigate to their corresponding profile pages. The map will also do some smart centering to account for the box full of place metadata in that part of the page.

####Profile charts

The Django template for the profile page creates empty slots for each chart, which are filled on load by `charts.js`. These placeholders look something like:

    <div class="column-half" id="chart-histogram-demographics-age-distribution_by_decade-total" data-stat-type="scaled-percentage" data-chart-title="Population by age range"></div>

The `column-*` class isn't really important here; that's just a structural setting that gives the block an appropriate amount of width that can be governed with media queries. What we really care about are the `id` and `data-*` attribute values. The `data` attributes provide a place to pass optional information into the chart constructor, and the `id` value tells the constructor what type of chart to draw and which data to use.

At the bottom of the profile page, we trigger all the charts at once. Profile data is assigned to a Javascript variable:

    profileData = {{ profile_data_json }};
    
And we grab all the chart placeholders with:

    chartContainers = $('[id^=chart-]')

The <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/templates/profile/profile.html#L437">`makeCharts()` function</a> then loops through those containers, empties each one of any contents, and builds the variables required for a chart:

    chartDataKey = chartID.replace('chart-','').replace('alt-','')
    chartDataID = chartDataKey.split('-') #temporary variable
    chartType = gracefulType(chartDataID[0])
    chartData = profileData[chartDataID[1]]
    geographyData = profileData['geography']

#####Required variables

`chartDataKey`: This tells us everything we need to know to recreate this particular chart from a given set of profile data, and we'll use it to populate embed code if a user asks for it. In the example above, this value would be `histogram-demographics-age-distribution_by_decade-total`.

`chartType`: The first bit of our `chartDataKey`, in this case `histogram`, represents the type of chart we want. The `charts.js` library currently supports:

* pie
* column
* grouped_column
* histogram
* bar
* grouped_bar

You'll note that we actually pass this value through a function called `gracefulType`, which allows us to change chart types based on screen width. More on that in a moment.

`chartData`: The rest of our `chartDataKey` provides the path to the data that should fill this chart. We start by assigning this variable a top-level item from `profileData`, in this case `demographics`. Then we use a loop to drill down based on the rest of our keys: `demographics` > `age` > `distribution_by_decade` > `total`. That's where we'll find the data to pass into the chart constructor.

`geographyData`: We also reach into `profileData` for names and summary levels of the chosen place and its parent geographies.

#####Optional variables

Placeholder containers can also use data attributes to pass optional information to the chart constructor. Our example container uses `data-stat-type` and `data-chart-title`:

    <div class="column-half" id="chart-histogram-demographics-age-distribution_by_decade-total" data-stat-type="scaled-percentage" data-chart-title="Population by age range"></div>

The `makeCharts()` function will recognize:

`data-chart-title`: A title to place above the chart elements, passed to the chart constructor as `chartChartTitle`. Defaults to `null`, although most charts on Census Reporter's profile pages do assign a value here.

`data-initial-sort`: Used only by pie charts. Determines which category to highlight when the chart is initialized. A placeholder container with `data-initial-sort="-value"` will display the highest data value in the chart on load. Otherwise the first value in the chart will serve as the default state.

`data-stat-type`: Provides formatting hints for the chart's language and display. Standard chart behavior may be overriden with these values:

* **percentage**: Adds a "%" character after figures in the chart. Sets chart domain to 0-100. Uses "rate" in comparison sentences.
* **scaled-percentage**: Does the same things as "percentage," but also scales the chart so that the highest category value takes up the full vertical space available.
* **dollar**: Adds a "$" character before figures in the chart. Uses "amount" in comparison sentences.

`data-qualifier`: Adds a trailing line below the chart, prepended with an "*" character. This is useful when charts require a little extra context. For example, the profile page's <a href="http://censusreporter.org/profiles/16000US5367000-spokane-wa/#race">"Race & Ethnicity" column chart</a> adds this explanation: "Hispanic includes respondents of any race. Other categories are non-Hispanic."

####Responsive design

The charts on Census Reporter's profile pages are responsive to browser width. They use a combination of CSS media queries and Javascript to accommodate various screen sizes. Media queries take care of changes like column widths and legend placements, and they help arrange the interactive hovercards that provide extra data when a user mouses over or taps a chart element.

Javascript comes into play so we can completely change chart types that won't read well at certain widths. There are a couple functions <a href="https://github.com/censusreporter/censusreporter/blob/master/censusreporter/apps/census/templates/profile/profile.html#L425">at the bottom of the profile template</a> that make this happen:

`lazyRedrawCharts`: This function updates `window.browserWidth` and `window.browserHeight` variables whenever a page is resized, then triggers `makeCharts()` to redraw any charts on the page according to their new available widths. (This is why `makeCharts()` empties out the contents of each container first. So they can be filled again, maybe even with a different chart format.) Realistically, this most likely gets triggered by a user turning a phone or tablet from portrait to landscape orientation, but just in case, the redraw is debounced to avoid a crazy number of events firing off.

    var lazyRedrawCharts = _.debounce(function() {
        window.browserWidth = document.documentElement.clientWidth;
        window.browserHeight = document.documentElement.clientHeight;
        makeCharts();
    }, 50);
    $(window).resize(lazyRedrawCharts);
    

`gracefulType`: This function checks `window.browserWidth`, and if it's too narrow to reasonably display a column chart, flips it to a bar chart. This is called by each chart inside the `makeCharts()` function, which is triggered on page load as well as resize thanks to `lazyRedrawCharts`.

    var gracefulType = function(chartType) {
        if (browserWidth <= 640) {
            if (chartType == 'column' || chartType == 'histogram') {
                return 'bar'
            } else if (chartType == 'grouped_column') {
                return 'grouped_bar'
            }
        }
        return chartType
    }

Between media queries and this Javascript, charts should be useful on phones as much as desktops.

Data comparison pages
=====================

TODO: adapt for wazimap.co.za (not currently supported on wazimap)

Tabular view, map view, distribution view. Docs soon.

Embedded content
----------------

The charts on censusreporter are made available for embedding on 3rd party sites through the
use of iframes. These embedded charts rely on static content and json data files that are hosted
in an AWS S3 bucket.

The S3 bucket contains many of the static files found in `apps/census/static`, so the same
rendering logic is used for the site's graphs and the embedded graphs. The data files that are
needed for rendering embedded graphs are automatically pushed to the S3 bucket each time a
new profile is accessed on the censusreporter site.

Deployment
==========

Once installed, deployments are done from the code on GitHub, NOT the code on your local machine.
So be sure to run `git push` before deploying.

To deploy to an already provisioned machine, run:

    >> fab prod deploy

To reload all stats data, run:

    >> fab prod deploy reload_api_data

Provisioning a new server
-------------------------

To setup a new installation, you'll need an Ubuntu server.

First create a user with passwordless sudo permissions called `mma` and ensure you can login to it using your ssh key.
Configure options in `fabfile.py`, in particular set the `PROD_HOSTS` correctly.

Install dependencies and the database by running:

    >> fab prod provision

Do an initial deployment.

    >> fab prod deploy

And the website should be up!
