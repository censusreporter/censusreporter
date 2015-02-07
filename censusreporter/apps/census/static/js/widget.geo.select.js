var geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search',
    geoSelect = $('#geography-select'),
    chosenSumlevAncestorList = '010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970';

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
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', function(event, datum) {
        event.stopPropagation();
        if (!!datum['full_geoid']) {
            window.location = '/profiles/' + datum['full_geoid'] + '-' + slugify(datum['full_name']);
        }
    });
}

makeGeoSelectWidget(geoSelect);

function initialize_geocomplete() {
  // Create the autocomplete object, restricting the search
  // to geographical location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {HTMLInputElement} */(document.getElementById('geography-select')),
      { types: ['geocode'],
        componentRestrictions: {country: 'us'}
});
  // When the user selects an address from the dropdown,
  // populate the address fields in the form.
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    if (autocomplete.getPlace() && autocomplete.getPlace().geometry) {
        var place = autocomplete.getPlace(), 
            loc = autocomplete.getPlace().geometry.location;
        var url  = '/locate/?lat=' + loc.lat() + '&lon=' + loc.lng() + '&address=' + place.formatted_address;
        for (var i = 0; i < place.types.length; i++) {
            url = url + "&type=" + place.types[i];
        }
        window.location = url;
    } else {
        console.log("There isn't a place/geometry.")        
    }
  });
}
