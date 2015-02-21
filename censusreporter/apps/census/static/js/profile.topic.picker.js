// powers the topic picker on profile pages

// the template including this should set the following vars:
// var thisGeoID = '{{ geography.this.full_geoid }}',
//     placeGeoID = '{{ geography.parents.place.full_geoid }}',
//     CBSAGeoID = '{{ geography.parents.CBSA.full_geoid }}',
//     countyGeoID = '{{ geography.county.full_geoid }}',
//     stateGeoID = '{{ geography.state.full_geoid }}',
//     nationGeoID = '{{ geography.nation.full_geoid }}';

var theseGeoIDs = [thisGeoID, placeGeoID, CBSAGeoID, countyGeoID, stateGeoID, nationGeoID].filter(function(n){return n}),
    chosenTableID = chosenTableID || null,
    topicSelect = $('#topic-select');

var tableSearchAPI = CR_API_URL + '/1.0/table/search',
    rootGeoAPI = CR_API_URL + '/1.0/geo/tiger2013/',
    dataAPI = CR_API_URL + '/1.0/data/show/latest';

var topicSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 1500,
    remote: {
        url: tableSearchAPI,
        replace: function (url, query) {
            return url += '?q=' + query;
        },
        filter: function(response) {
            var resultNumber = response.length;
            if (resultNumber === 0) {
                response.push({
                    table_name: 'Sorry, no matches found. Try changing your search.'
                });
            }
            _.map(response, function(item) {
                if (!!item['topics']) {
                    item['topic_string'] = item['topics'].join(', ');
                }
            });
            return response;
        }
    }
});
topicSelectEngine.initialize();

function makeTopicSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'topics',
        displayKey: 'simple_table_name',
        source: topicSelectEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                [
                    '{{#if table_id}}<h5 class="result-type">{{#if column_name}}Column in {{/if}}Table {{table_id}}</h5>{{/if}}',
                    '<p class="result-name">{{simple_table_name}}</p>',
                    '{{#if column_name}}<p class="caption"><strong>Column name:</strong> {{column_name}}</p>{{/if}}',
                    '{{#if topic_string}}<p class="caption"><strong>Table topics:</strong> {{topic_string}}</p>{{/if}}'
                ].join('')
            )
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        chosenTableID = datum['table_id'];
        if (!!chosenTableID) {
            window.location = '/data/table/?table=' + chosenTableID + "&geo_ids=" + thisGeoID + "&primary_geo_id=" + thisGeoID;
        }
    });
}

jQuery(document).ready(function(){
    // initial setup for select widget
    makeTopicSelectWidget(topicSelect);
});
