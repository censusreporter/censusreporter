var geoSearchAPI = CR_API_URL + '/1.0/geo/search',
    geoSelect = $('#geography-select'),
    chosenSumlevAncestorList = '010,020,030,040,050,060,160,250,252,254,310,500,610,620,860,950,960,970';

var geoSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: geoSearchAPI,
        replace: function (url, query) {
            return url += '?q=' + query + '&sumlevs=' + chosenSumlevAncestorList;
        },
        filter: function(response) {
            var results = response.results;
            _.map(results, function(item) {
                item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
                item['url'] = '/profiles/' + item['full_geoid'] + '-' + slugify(item['full_name']);
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
    }, [
    {
        name: 'profile',
        displayKey: 'full_name',
        source: geoSelectEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    }]);

    element.on('typeahead:selected', function(event, datum) {
        if (datum['url']) {
          event.stopPropagation();
          window.location = datum['url'];
        }
    });
}

makeGeoSelectWidget(geoSelect);
