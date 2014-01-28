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
    
var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    rootGeoAPI = 'http://api.censusreporter.org/1.0/geo/tiger2012/',
    dataAPI = 'http://api.censusreporter.org/1.0/data/show/latest';

function makeTopicSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        name: 'topics',
        valueKey: 'unique_key',
        nameKey: 'simple_table_name',
        remote: {
            url: tableSearchAPI,
            replace: function (url, uriEncodedQuery) {
                url += '?';
                if (uriEncodedQuery) {
                    url += 'q=' + uriEncodedQuery;
                }
                //var selectedTopics = selectedTopicFilterValues();
                //if (selectedTopics.length > 0) {
                //    url += '&topics=' + selectedTopics.join(',');
                //}
                return url;
            },
            filter: function(response) {
                var resultNumber = response.length;
                //topicResultNumber.text(resultNumber + ' matches');
                if (resultNumber === 0) {
                    response.push({
                        table_name: 'Sorry, no matches found. Try removing filters or changing your keyword search.'
                    });
                }
                response.map(function(item) {
                    if (!!item['topics']) {
                        item['topic_string'] = item['topics'].join(', ');
                    }
                });
                return response;
            }
        },
        limit: 1500,
        template: [//{% verbatim %}
            '{{#table_id}}<h5 class="result-type">{{#column_name}}Column in {{/column_name}}Table {{table_id}}</h5>{{/table_id}}',
            '<p class="result-name">{{simple_table_name}}</p>',
            '{{#column_name}}<p class="caption"><strong>Column name:</strong> {{column_name}}</p>{{/column_name}}',
            '{{#topic_string}}<p class="caption"><strong>Table topics:</strong> {{topic_string}}</p>{{/topic_string}}'//{% endverbatim %}
        ].join(''),
        engine: Hogan
    });

    element.on('typeahead:selected', function(obj, datum) {
        element.typeahead('setQuery', '');
        chosenTableID = datum['table_id'];

        window.location = '/data/?table=' + chosenTableID + "&geoids=" + theseGeoIDs.join(',') + "&primary_geoid=" + thisGeoID;
    });
}

jQuery(document).ready(function(){
    // initial setup for select widget
    makeTopicSelectWidget(topicSelect);
});
