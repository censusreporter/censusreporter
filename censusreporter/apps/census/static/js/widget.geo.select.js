var textmatchAPI = '/place-search/json/',
    geocodingAPI = 'http://wards.code4sa.org/',
    resultTemplate = Handlebars.compile('<p class="result-name"><span class="result-type">{{geo_level}}</span>{{full_name}}</p>'),
    geoSelect = $('#geography-select');

var textMatchEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: textmatchAPI,
        replace: function (url, query) {
            return url += '?q=' + query;
        },
        filter: function(response) {
            return response.results;
        }
    }
});
textMatchEngine.initialize();

var geoSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: geocodingAPI,
        replace: function (url, query) {
            return url += '?address=' + query + '&database=wards_2011';
        },
        filter: function(results) {
            return results.map(function(item) {
                return {
                    full_name: ['Ward ' + item['wards_no'] + ' (' + item['ward'] + ')',
                                 item['municipality'], item['province']].join(', '),
                    full_geoid: 'ward-' + item['ward'],
                    geo_level: 'ward',
                    geo_code: item['ward'],
                };
            });
        },
        ajax: {
            dataType: 'jsonp',  // allow cross domain request
        },
    },
});
geoSelectEngine.initialize();

function makeGeoSelectWidget(element) {
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        // get textual matches from host
        name: 'textmatch',
        displayKey: 'full_name',
        source: textMatchEngine.ttAdapter(),
        limit: 20,
        templates: {
            suggestion: resultTemplate,
        },
    }, {
        // get geocoded matches from Code4SA API
        name: 'geocoded',
        displayKey: 'full_name',
        source: geoSelectEngine.ttAdapter(),
        limit: 20,
        templates: {
            suggestion: resultTemplate,
        },
    });

    element.on('typeahead:selected', function(event, datum) {
        event.stopPropagation();
        window.location = '/profiles/' + datum['full_geoid'] + '/';
    });
}

makeGeoSelectWidget(geoSelect);
