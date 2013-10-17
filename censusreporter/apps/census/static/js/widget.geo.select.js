var geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search',
    geoSelect = $('#geography-select');

function makeGeoSelectWidget(element) {
    element.typeahead({
        name: 'profile',
        valueKey: 'full_geoid',
        remote: {
            url: geoSearchAPI,
            replace: function (url, uriEncodedQuery) {
                return url += '?q=' + uriEncodedQuery + '&sumlevs=010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970';
            },
            filter: function(response) {
                var results = response.results;
                results.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item['sumlevel']];
                });
                return results;
            }
        },
        limit: 20,
        template: '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>',
        engine: Hogan
    });

    element.on('typeahead:selected', function(obj, datum) {
        window.location = '/profiles/' + datum['full_geoid'];
    });
}


jQuery(document).ready(function(){
    makeGeoSelectWidget(geoSelect);
});
