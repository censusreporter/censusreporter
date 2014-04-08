var geoSearchAPI = '/place-search/json/',
    geoSelect = $('#geography-select');

var geoSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: geoSearchAPI,
        replace: function (url, query) {
            return url += '?q=' + query;
        },
        filter: function(response) {
            var results = response.results;
            _.map(results, function(item) {
                item['geo_level'] = item['full_geoid'].split('-')[0];
            })
            return results;
        }
    }
});
geoSelectEngine.initialize();

function makeGeoSelectWidget(element) {
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'profile',
        displayKey: 'full_name',
        source: geoSelectEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{geo_level}}</span>{{full_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', function(event, datum) {
        event.stopPropagation();
        window.location = '/profiles/' + datum['full_geoid'] + '/';
    });
}

makeGeoSelectWidget(geoSelect);
