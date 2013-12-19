// powers the topic picker on profile pages

// the template including this should set the following vars:
// var thisGeoID = '{{ geography.this.full_geoid }}';
var thisGeoID = thisGeoID || null,
    chosenTableID = chosenTableID || null;

var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    dataAPI = 'http://api.censusreporter.org/1.0/data/show/latest';

var topicSelect = $('#topic-select'),
    topicResultNumber = $('#topic-result-number');

function makeTopicSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        name: 'topics',
        valueKey: 'unique_key',
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
                topicResultNumber.text(resultNumber + ' matches');
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
        
        getData();
    });
}

// prepare ajax spinners
$('body').append('<div id="body-spinner"></div>');
var spinnerTarget = document.getElementById('body-spinner');
    spinner = new Spinner();

$(document).ajaxSend(function(event, request, settings) {
    spinner.spin(spinnerTarget);
});
$(document).ajaxComplete(function(event, request, settings) {
    spinner.stop();
});

var getData = function() {
    if (chosenTableID && thisGeoID) {
        var params = {
            table_ids: chosenTableID,
            geo_ids: thisGeoID
        }
        $.getJSON(dataAPI, params)
            .done(function(results) {
                makeDataTable(results);
            });
    }
}

var makeDataTable = function(results) {
    var table = results.tables[chosenTableID],
        data = results.data[thisGeoID][chosenTableID],
        columns = d3.map(table.columns)
        tableContents = [];

    var dataContainer = d3.select('#chosen-table'),
        dataTableID = dataContainer.select('h1'),
        dataTitle = dataContainer.select('h2'),
        resultsContainer = d3.select('#chosen-table-results');
    
    columns.forEach(function(k, v) {
        var rowBits = ['<td class="name indent-' + v.indent + '">' + v.name + '</td>'];
        rowBits.push('<td class="value">' + valFmt(data.estimate[k]) + '</td><td class="context">&plusmn;' + valFmt(data.error[k]) + '</td>');
        tableContents.push('<tr>' + rowBits.join('') + '</tr>');
    })
    var tableData = '<table>' + tableContents.join('') + '</table>';

    dataTableID.text('Table ' + chosenTableID);
    dataTitle.text(table.title);
    resultsContainer.html(tableData);
}

jQuery(document).ready(function(){
    // initial setup for select widgets
    makeTopicSelectWidget(topicSelect);
});
