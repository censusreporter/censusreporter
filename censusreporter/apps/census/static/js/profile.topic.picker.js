// powers the topic picker on profile pages

// the template including this should set the following vars:
// var thisSumlev = '{{ sumlev }}',
//     thisGeoShortName = '{{ geography.this.short_name }}',
//     thisGeoID = '{{ geography.this.full_geoid }}',
//     countyGeoID = '{{ geography.county.full_geoid }}',
//     stateGeoID = '{{ geography.state.full_geoid }}',
//     nationGeoID = '{{ geography.nation.full_geoid }}';

var thisSumlev = thisSumlev || null,
    thisGeoID = thisGeoID || null,
    countyGeoID = countyGeoID || null,
    stateGeoID = stateGeoID || null,
    nationGeoID = nationGeoID || null,
    theseGeoIDs = [thisGeoID, countyGeoID, stateGeoID, nationGeoID].filter(function(n){return n}),
    chosenTableID = chosenTableID || null;
    
var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    dataAPI = 'http://api.censusreporter.org/1.0/data/show/latest';

var topicSelect = $('#topic-select'),
    topicSelectContainer = $('#query-topic-picker'),
    chosenTableContainer = $('#chosen-table');

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
            geo_ids: theseGeoIDs.join(',')
        }
        $.getJSON(dataAPI, params)
            .done(function(results) {
                makeDataTable(results);
            });
    }
}

var makeChildOptions = function() {
    var childOptionsContainer = d3.select('#chosen-table aside').append('div').classed('aside-block', true);
    childOptionsContainer.append('h3')
        .text('Compare ' + thisGeoShortName + ' by:')

    var childOptions = childOptionsContainer.append('ul')
        .selectAll('li')
            .data(sumlevChildren[thisSumlev])
        .enter().append('li').append('a')
            .attr('href', function(d) { return '/compare/' + thisGeoID + '/' + d + '/table/?&table=' + chosenTableID })
            .text(function(d) { return sumlevMap[d]['plural'] });
}

var makeDataTable = function(results) {
    var table = results.tables[chosenTableID],
        data = results.data,
        statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
        denominatorColumn = table.denominator_column_id || null,
        colspan = (denominatorColumn !== null) ? 4 : 2;
        dataContainer = d3.select('#chosen-table'),
        dataTableID = dataContainer.select('h1'),
        dataTitle = dataContainer.select('h2'),
        resultsContainer = d3.select('.data-drawer');
        
    var headerBits = ['<th class="name">Column</th>'];
    theseGeoIDs.forEach(function(g) {
        headerBits.push('<th class="name" colspan="' + colspan + '">' + results.geography[g].name + '</th>');
    })
    
    var columns = d3.map(table.columns),
        tableContents = [];
        
    columns.forEach(function(k, v) {
        var rowBits = ['<td class="name column-name indent-' + v.indent + '">' + v.name + '</td>'];
        theseGeoIDs.forEach(function(g) {
            var thisDenominator = data[g][chosenTableID].estimate[denominatorColumn],
                thisDenominatorMOE = data[g][chosenTableID].error[denominatorColumn],
                thisValue = data[g][chosenTableID].estimate[k],
                thisValueMOE = data[g][chosenTableID].error[k];

            // provide percentages first, to match chart style
            if (!!denominatorColumn) {
                if (thisValue >= 0) {
                    rowBits.push('<td class="value">' + valFmt(calcPct(thisValue, thisDenominator), 'percentage') + '</td><td class="context">&plusmn;' + valFmt(calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE), 'percentage') + '</td>');
                } else {
                    rowBits.push('<td></td><td></td>')
                }
            }
            
            // add raw numbers
            rowBits.push('<td class="value">' + valFmt(thisValue, statType) + '</td><td class="context">&plusmn;' + valFmt(thisValueMOE, statType) + '</td>');
        })
        tableContents.push('<tr>' + rowBits.join('') + '</tr>');
    })
    
    var tableData = '<table class="full-width"><thead><tr>' + headerBits.join('') + '</tr></thead><tbody>' + tableContents.join('') + '</tbody></table>';

    dataTableID.html('Table ' + chosenTableID);
    dataTitle.text(table.title);
    
    // add the comparison links
    makeChildOptions();
    
    // add the data and show container
    resultsContainer.html(tableData);
    chosenTableContainer.fadeIn('fast');
    topicSelectContainer.toggle();
}

jQuery(document).ready(function(){
    // initial setup for select widgets
    makeTopicSelectWidget(topicSelect);
    
    $("#chosen-table").on('click', '#change-table', function(e) {
        e.preventDefault();
        topicSelectContainer.toggle();
        chosenTableContainer.fadeOut('fast');
    })
});
