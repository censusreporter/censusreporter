var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

var topicSelect = $('#topic-select'),
    topicSelectContainer = $('#explore-topic-picker'),
    placeSelect = $('#topic-place-select'),
    placeSelectContainer = $('#explore-topic-place-picker'),
    chosenTableID,
    chosenGeoID;

placeSelectContainer.hide();

var triggerAutocompleteWildCardFallback = function(element) {
    if (!!element.val() && element.val() != '*') {
        element.typeahead('setQuery', element.val());
    } else {
        element.typeahead('setQuery', '*').val('');
    }
};

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
                if (resultNumber === 0) {
                    response.push({
                        table_name: 'Sorry, no matches found. Try changing your keyword search.'
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
        template: [
            '{{#table_id}}<h5 class="result-type">{{#column_name}}Column in {{/column_name}}Table {{table_id}}</h5>{{/table_id}}',
            '<p class="result-name">{{simple_table_name}}</p>',
            '{{#column_name}}<p class="caption"><strong>Column name:</strong> {{column_name}}</p>{{/column_name}}',
            '{{#topic_string}}<p class="caption"><strong>Table topics:</strong> {{topic_string}}</p>{{/topic_string}}'
        ].join(''),
        engine: Hogan
    });

    //element.on('typeahead:initialized', function() {
    //    triggerAutocompleteWildCardFallback(element);
    //});

    element.on('typeahead:selected', function(obj, datum) {
        chosenTableID = datum['table_id'];
        makePlaceSelectWidget(placeSelect);
        placeSelectContainer.show();
        placeSelect.focus();
        topicSelectContainer.hide();
        makeTableMetadata(datum);
        element.typeahead('setQuery', '');
        //topicFilters.prop('checked', false);
    });
}

function makeTableMetadata(data) {
    $('#explore-callouts').hide();
    var tableMetadataSection = $('<section id="explore-topic-metadata" class="homepage-action"><div class="input-wrapper"><dl></dl></div></section>').insertAfter(placeSelectContainer),
        tableMetadata = $('#explore-topic-metadata dl');

    $('#explore-topic-metadata').prepend('<p><a id="change-table" href="#">Change table</a></p>');
    tableMetadata.append('<dt>Table '+data.table_id+'</dt><dd>'+data.table_name+'</dd>');
    tableMetadata.append('<dt>Universe</dt><dd>'+data.universe+'</dd>');
}

function makePlaceSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        name: 'geographies',
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

    element.on('typeahead:selected', function(obj, datum) {
        chosenGeoID = datum['full_geoid'];
        sendToDataView(chosenTableID, chosenGeoID);
    });
}

function sendToDataView(chosenTableID, chosenGeoID) {
    var targetURL = '/data/table/?table=' + chosenTableID + '&geo_ids=' + chosenGeoID + '&primary_geo_id=' + chosenGeoID;
    window.location.href = targetURL;
}

jQuery(document).ready(function(){
    makeTopicSelectWidget(topicSelect);
    $("#explore").on('click', '#change-table', function(e) {
        e.preventDefault();
        $('#explore-topic-metadata').remove();
        $('#explore-callouts').show();
        placeSelectContainer.hide()
        topicSelectContainer.toggle();
        topicSelect.focus();
    });
});