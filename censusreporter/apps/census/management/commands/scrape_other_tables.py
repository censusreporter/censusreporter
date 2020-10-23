from django.core.management.base import BaseCommand
import requests
import argparse
from lxml.html import fromstring
from urllib.parse import urljoin
from collections import OrderedDict
from io import BytesIO
import unicodecsv

# These will change each year
GCT1_ROOT = 'https://www2.census.gov/programs-surveys/acs/summary_file/2018/data/1_year_geographic_comparison_tables/'
GCT5_ROOT = 'https://www2.census.gov/programs-surveys/acs/summary_file/2018/data/5_year_geographic_comparison_tables/'
RANKING_ROOT = 'https://www2.census.gov/programs-surveys/acs/summary_file/2018/data/1_year_ranking/'

class Command(BaseCommand):
    help = 'Scrape Census web site for details about GCT and R tables and dump it to STDOUT'

    gct_data = OrderedDict()

    def add_arguments(self, parser):

        parser.add_argument('outfile',
            nargs='?',
            type=argparse.FileType('w'),
            default=self.stdout)  # maybe censusreporter/apps/census/templates/topics/_blocks/_gct-table-codes.html

    def scrape_gct_data(self, data_key, url):
        """Given a Census www2 URL, grab it and, for each link to a
           .csv file, add or update an entry to this command's data dict.
           The entry will be under a key expected to look like GCT0101 and
           the value for that entry will be a dict. We'll add a key, `data_key`
           to that dict, value being a URL to get the appropriate CSV data file.
        """
        resp = requests.get(url)
        doc = fromstring(resp.content)
        for a in doc.xpath('..//a'):
            try:
                href = a.attrib['href']
                if href.endswith('.csv'):  # depends upon file names not changing
                    k = href.split('.')[0]
                    k = k.upper()
                    gct = self.gct_data.get(k, {})
                    gct[data_key] = urljoin(url, href)
                    self.gct_data[k] = gct
            except KeyError:
                pass

    def scrape_ranking_data(self, url):
        resp = requests.get(url)
        doc = fromstring(resp.content)
        for a in doc.xpath('..//a'):
            try:
                href = a.attrib['href']
                if href.endswith('.xlsx'):  # depends upon file names not changing
                    k = href.split('.')[0]
                    k = k.upper().replace('R', 'GCT')
                    gct = self.gct_data.get(k, {})
                    gct['ranking'] = urljoin(url, href)
                    self.gct_data[k] = gct
            except KeyError:
                pass

    def scrape_gct_titles(self):
        # get titles
        for k,v in self.gct_data.items():
            url = None
            try:
                url = v['1yr']
            except KeyError:
                try:
                    self.stderr.write("No 1yr URL for {}".format(k))
                    url = v['5yr']
                except KeyError:
                    self.stderr.write("Neither for {}? should never happen".format(k))
            if url is not None:
                resp = requests.get(url)
                if resp.ok:
                    try:
                        # annoying hack -- experience shows this character snarls things
                        # for at least one table (GCT1001)
                        r = unicodecsv.reader(BytesIO(resp.content.replace('\xa0', ' ')))
                        h = next(r)  # skip header
                        v['title'] = next(r)[1].title()
                    except Exception as e:
                        self.stderr.write("Error scraping title: {}".format(url))
                        self.stderr.write(e)
                        v['title'] = '*** ERROR ***'
                else:
                    self.stderr.write("{} {}".format(url, resp.status_code))

    def assemble_markup(self):
        buffer = ["<dl class='dl-horizontal'>"]
        for k in sorted(self.gct_data):
            v = self.gct_data[k]
            buffer.append(['<dt>{}</dt>'.format(k)])
            if "1yr" in v:
                parts.append('[<a href="{}">GCT 1yr</a>]'.format(v['1yr']))
            if "5yr" in v:
                parts.append('[<a href="{}">GCT 5yr</a>]'.format(v['5yr']))
            if "ranking" in v:
                r_url = v['ranking']
                filename = r_url.split('/')[-1]
                parts.append('[<a href="{}">{}</a>]'.format(v['ranking'], filename))
            buffer.append('<dd>{}<br>{}</dd>'.format(v["title"], ' '.join(parts)))
        buffer.append("</dl>")
        return buffer

    def handle(self, *args, **options):
        # we scrape both because in 2018 file-name capitalization was different in
        # 1-yr and 5-yr and three tables were not available in the 5-yr for some reason.
        #
        self.stdout.write("GCT - get 1 yr")
        self.scrape_gct_data('1yr', GCT1_ROOT)

        self.stdout.write("GCT - get 5 yr")
        self.scrape_gct_data('5yr', GCT5_ROOT)

        self.stdout.write("R - scrape urls")
        self.scrape_ranking_data(RANKING_ROOT)

        self.stdout.write("GCT - titles")
        self.scrape_gct_titles()

        # this one special case isn't worth trying to read
        # all of the XLS files for titles, esp. because the acronym in the title
        # (removed here) doesn't work well with title-case algos.
        if 'GCT1304' in self.gct_data and 'title' not in self.gct_data['GCT1304']:
            self.stdout.write("Still no GCT1304 to match R1304 so add the title instead of grabbing XLS")
            self.gct_data['GCT1304']['title'] = 'Total Fertility Rate Of Women (Per 1,000 Women)'

        self.stdout.write("assemble")
        buffer = self.assemble_markup()

        self.stdout.write("write")
        options['outfile'].write('\n'.join(buffer))

        import json
        json.dump(self.gct_data, open("/tmp/gct.json", "w"))
        self.stdout.write("dumped JSON")
