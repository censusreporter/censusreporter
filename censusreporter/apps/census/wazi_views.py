import requests
import os

import logging
logger = logging.getLogger('censusreporter')

from django.conf import settings
from django.utils.safestring import SafeString
from django.utils import simplejson
from django.http import HttpResponse, Http404, HttpResponseBadRequest
from django.views.generic import View

from .views import GeographyDetailView, LocateView, render_json_to_response
from .utils import LazyEncoder

from api import LocationNotFound
from api.controller import (get_census_profile, get_geography, get_locations,
                            get_locations_from_coords, get_elections_profile)

class SouthAfricaGeographyDetailView(GeographyDetailView):
    def dispatch(self, *args, **kwargs):
        self.geo_id = self.kwargs.get('geography_id', None)
        return super(GeographyDetailView, self).dispatch(*args, **kwargs)


    def get_context_data(self, *args, **kwargs):
        geography_id = self.geo_id
        page_context = {}

        try:
            geo_level, geo_code = geography_id.split('-', 1)
            
            geo = get_geography(geo_code, geo_level)
            profile_data = get_census_profile(geo_code, geo_level)
            profile_data['elections'] = get_elections_profile(geo_code, geo_level)
            profile_data['election_list'] = ["national_2014", "provincial_2014", "municipal_2011"]
            profile_data['geography'] = geo.as_dict_deep()
        except (ValueError, LocationNotFound):
            raise Http404

        profile_data = self.enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))
        self.write_profile_json(profile_data_json)

        page_context.update({
            'profile_data_json': profile_data_json
        })

        return page_context

    def write_profile_json(self, data):
        # unversioned, un-zipped embed data
        key = settings.EMBED_DIR + '/profiles/%s.json' % self.geo_id
        logger.debug(key)
        if not os.path.isfile(key):
            try:
                # create file object
                with open(key, 'w+') as f:
                    f.write(data)
            except Exception as e:
                logger.error('Cannot write json data file to disk.', exc_info=e)
                pass


class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        if 'q' in request.GET:
            search_term = request.GET['q']
            geo_level = request.GET.get('geolevel', None)
            return render_json_to_response(
                {'results': get_locations(search_term, geo_level)}
            )

        return HttpResponseBadRequest('"q" parameter is required')


class WardSearchProxy(View):

    def get(self, request, *args, **kwargs):
        try:
            resp = requests.get('http://wards.code4sa.org',
                                params={'address': request.GET['address'],
                                        'database': 'wards_2011'})
            if resp.status_code != 200:
                return HttpResponseBadRequest()
            elif resp.text.strip().startswith('{'):
                return HttpResponse(self.pad_content(request, '[]'),
                                    mimetype='application/javascript')
            return HttpResponse(self.pad_content(request, resp.text),
                                mimetype='application/javascript')
        except (KeyError, AttributeError):
            return HttpResponseBadRequest()

    def pad_content(self, request, content):
        if 'callback' in request.GET:
            return '%s(%s);' % (request.GET['callback'], content)
        return content


class SouthAfricaLocateView(LocateView):
    def get_context_data(self, *args, **kwargs):
        page_context = {}
        lat = self.request.GET.get('lat', None)
        lon = self.request.GET.get('lon', None)

        if lat and lon:
            places = get_locations_from_coords(latitude=lat, longitude=lon)
            page_context.update({
                'location': {
                    'lat': lat,
                    'lon': lon
                },
                'places': places
            })

        return page_context
