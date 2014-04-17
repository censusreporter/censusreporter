var textmatchAPI = '/place-search/json/',
    geocodingAPI = 'http://wards.code4sa.org/',
    resultTemplate = '<p class="result-name"><span class="result-type">{{geo_level}}</span>{{full_name}}</p>',
    geoSelect = $('#geography-select');

function makeGeoSelectWidget(element) {
    baseAttributes = {
        valueKey: 'full_geoid',
        nameKey: 'full_name',
        limit: 20,
        template: resultTemplate,
        engine: Hogan
    }

    // get textual matches from host
    element.typeahead($.extend({}, baseAttributes, {
        name: 'textmatch',
        remote: {
            url: textmatchAPI,
            replace: function(url, uriEncodedQuery) {
                return url += '?q=' + uriEncodedQuery;
            },
            filter: function(response) {
                return response.results;
            }
        }
    }));

    // get geocoded matches from Code4SA API
    element.typeahead($.extend({}, baseAttributes, {
        name: 'geocoded',
        remote: {
            url: geocodingAPI,
            replace: function(url, uriEncodedQuery) {
                return url += '?address=' + uriEncodedQuery + '&database=wards_2011';
            },
            filter: function(response) {
                response.map(function(item) {
                });
                return [];
            },
            dataType: 'jsonp',  // allow cross domain request
        }
    }));

    element.on('typeahead:selected', function(obj, datum) {
        element.typeahead('setQuery', datum['full_name']);
        window.location = '/profiles/' + datum['full_geoid'] + '/';
    });

}

makeGeoSelectWidget(geoSelect);
