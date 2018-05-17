var spinnerTarget = document.getElementById("body-spinner");
if (!spinnerTarget) {
    $('body').append('<div id="body-spinner"></div>');
    spinnerTarget = document.getElementById('body-spinner');
} 

var geoSearchAPI = CR_API_URL + '/1.0/geo/search',
    geoSelect = $('.geography-select'),
    chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';


var geoSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 500,
    remote: {
        url: geoSearchAPI,
        replace: function (url, query) {
            var latitude = 42.3487;
            var longitude = -83.0587;
            chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';
            return url += '?q=' + query + '&sumlevs=' + chosenSumlevAncestorList;
        },
        filter: function(response) {
            var results = [];
            // remove any non-Michigan responses
            for (var i = response.results.length - 1; i >= 0; i--) {
                // all Michigan results have US26 as part of their geoID
                console.log(response.results[i]);
                if (response.results[i].full_geoid.search('US26') != -1) {
                    results.push(response.results[i]);
                }
                // all Michigan zip codes begin with 49 or 49
                if (response.results[i].full_geoid.search('86000US48') != -1) {
                    results.push(response.results[i]);
                }
                if (response.results[i].full_geoid.search('86000US49') != -1) {
                    results.push(response.results[i]);
                }
            }
            _.map(results, function(item) {
                item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
                item['url'] = '/profiles/' + item['full_geoid'] + '-' + slugify(item['full_name']);
            })
            var resultNumber = results.length;
            if (resultNumber === 0) {
                results.push({
                    full_name: 'Sorry, no matches found. Try changing your search.'
                });
            }
            console.log(results);
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
          spinner.spin(spinnerTarget);
          window.location = datum['url'];
        }
    });
}

makeGeoSelectWidget(geoSelect);
