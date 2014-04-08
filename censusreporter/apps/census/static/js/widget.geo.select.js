var geoSearchAPI = '/place-search/json/',
    geoSelect = $('#geography-select');

function makeGeoSelectWidget(element) {
    element.typeahead({
        name: 'profile',
        valueKey: 'full_geoid',
        nameKey: 'full_name',
        remote: {
            url: geoSearchAPI,
            replace: function (url, uriEncodedQuery) {
                return url += '?q=' + uriEncodedQuery;
            },
            filter: function(response) {
                var results = response.results;
                results.map(function(item) {
                    item['geo_level'] = item['full_geoid'].split('-')[0];
                });
                return results;
            }
        },
        limit: 20,
        template: '<p class="result-name"><span class="result-type">{{geo_level}}</span>{{full_name}}</p>',
        engine: Hogan
    });

    element.on('typeahead:selected', function(obj, datum) {
        element.typeahead('setQuery', datum['full_name']);
        window.location = '/profiles/' + datum['full_geoid'] + '/';
    });
}

makeGeoSelectWidget(geoSelect);
