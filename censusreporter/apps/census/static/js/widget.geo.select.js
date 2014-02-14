var geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search',
    geoSelect = $('#geography-select');

function makeGeoSelectWidget(element) {
    element.typeahead({
        name: 'profile',
        valueKey: 'full_geoid',
        nameKey: 'full_name',
        remote: {
            url: geoSearchAPI,
            replace: function (url, uriEncodedQuery) {
                return url += '?q=' + uriEncodedQuery + '&sumlevs=010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970';
            },
            filter: function(response) {
                var results = response.results;
                results.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
                });
                return results;
            }
        },
        limit: 20,
        template: '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>',
        engine: Hogan
    });

    element.on('typeahead:selected', function(event, datum) {
        event.stopPropagation();
        element.typeahead('setQuery', datum['full_name']);
        window.location = '/profiles/' + datum['full_geoid'] + '-' + slugify(datum['full_name']);
    });
}

makeGeoSelectWidget(geoSelect);
