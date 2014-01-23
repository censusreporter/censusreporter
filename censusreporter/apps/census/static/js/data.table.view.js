// powers the tabular data on data view pages

// the template including this should set the following vars:
// var primaryGeoID = '{{ primary_geo_id }}',
//     geoIDs = '{{ geo_list }}',
//     tableID = '{{ table }}';

var tableID = tableID || null,
    thisSumlev = (!!primaryGeoID) ? primaryGeoID.substr(0,3) : null,
    tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    rootGeoAPI = 'http://api.censusreporter.org/1.0/geo/tiger2012/',
    dataAPI = 'http://api.censusreporter.org/1.0/data/show/latest';

var topicSelect = $('#topic-select'),
    topicSelectContainer = $('#query-topic-picker'),
    tableContainer = $('#data-tabular');

var makeTopicSelectWidget = function(element) {
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
        tableID = datum['table_id'];
        
        var url = '/data/?table=' + tableID;
        if (!!geoIDs) { url += "&geoids=" + geoIDs.join(',') }
        if (!!primaryGeoID) { url += "&primary_geoid=" + primaryGeoID }
        window.location = url;
        // TODO: pushState to maintain history without page reload
        //getData();
        //topicSelectContainer.toggle();
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
    if (tableID && geoIDs) {
        var params = {
            table_ids: tableID,
            geo_ids: geoIDs.join(',')
        }
        $.getJSON(dataAPI, params)
            .done(function(results) {
                makeDataTable(results);
            });
    }
}

var makeParentOptions = function() {
    // no tribbles!
    d3.selectAll('#comparison-parents').remove();

    if (!!primaryGeoID) {
        var parentGeoAPI = rootGeoAPI + primaryGeoID + '/parents',
            parentOptionsContainer = d3.select('#data-tabular aside').append('div')
                .attr('class', 'aside-block')
                .attr('id', 'comparison-parents');

        $.getJSON(parentGeoAPI)
            .done(function(results) {

                parentOptionsContainer.append('p')
                    .attr('class', 'bottom display-type strong')
                    .html('Compare with other ' + sumlevMap[thisSumlev]['plural'] + ' in&nbsp;&hellip;');

                parentOptionsContainer.append('ul')
                        .attr('class', 'sumlev-list')
                    .selectAll('li')
                        .data(results['parents'])
                    .enter().append('li').append('a')
                        .attr('href', function(d) { return '/compare/' + d.geoid + '/' + thisSumlev + '/table/?table=' + tableID })
                        .text(function(d) { return d.display_name });

            });
    }
}

var makeChildOptions = function(name) {
    // no tribbles!
    d3.selectAll('#comparison-children').remove();
    
    if (!!primaryGeoID) {
        var childOptionsContainer = d3.select('#data-tabular aside').append('div')
                .attr('class', 'aside-block')
                .attr('id', 'comparison-children');
    
        childOptionsContainer.append('p')
                .attr('class', 'bottom display-type strong')
                .html('Compare &hellip;');

        childOptionsContainer.append('ul')
                .attr('class', 'sumlev-list')
            .selectAll('li')
                .data(sumlevChildren[thisSumlev])
            .enter().append('li').append('a')
                .attr('href', function(d) { return '/compare/' + primaryGeoID + '/' + d + '/table/?table=' + tableID })
                .text(function(d) { return sumlevMap[d]['plural'] });
        
        if (!!name) {
            childOptionsContainer.append('p')
                    .attr('class', 'display-type strong')
                    .html('&hellip; in ' + name);
        }
    }
}

var makeDataTable = function(results) {
    var table = results.tables[tableID],
        release = results.release,
        data = results.data,
        primaryGeoName = (!!primaryGeoID) ? results.geography[primaryGeoID].name : null,
        statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
        denominatorColumn = table.denominator_column_id || null,
        colspan = (denominatorColumn !== null) ? 4 : 2;
        dataContainer = d3.select('#data-tabular'),
        dataTableID = dataContainer.select('h1'),
        dataTitle = dataContainer.select('h2'),
        resultsContainer = d3.select('.data-drawer'),
        gridData = {
            Head: [],
            Body: []
        };
        
    // fill in some metadata
    d3.select('#release-name').text(release.name);
    d3.select('#table-universe').html('<strong>Table universe:</strong> ' + table.universe);
        
    var headerBits = ['<th class="name">Column</th>'];
    var gridHeaderBits = ['Column'];
    geoIDs.forEach(function(g) {
        headerBits.push('<th class="name" colspan="' + colspan + '"><a href="/profiles/' + g + '">' + results.geography[g].name + '</a></th>');
        gridHeaderBits.push(results.geography[g].name);
    })
    gridData.Head.push(gridHeaderBits);
    
    var columns = d3.map(table.columns),
        tableContents = [];
        
    columns.forEach(function(k, v) {
        var rowBits = ['<td class="name column-name indent-' + v.indent + '">' + v.name + '</td>'];
        var gridRowBits = ['<div class="name indent-' + v.indent + '">' + v.name + '</div>'];

        geoIDs.forEach(function(g) {
            var thisDenominator = data[g][tableID].estimate[denominatorColumn],
                thisDenominatorMOE = data[g][tableID].error[denominatorColumn],
                thisValue = data[g][tableID].estimate[k],
                thisValueMOE = data[g][tableID].error[k]
                gridRowCol = '';

            // provide percentages first, to match chart style
            if (!!denominatorColumn) {
                if (thisValue >= 0) {
                    rowBits.push('<td class="value">' + valFmt(calcPct(thisValue, thisDenominator), 'percentage') + '</td><td class="context">&plusmn;' + valFmt(calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE), 'percentage') + '</td>');
                    gridRowCol += '<span class="value">' + valFmt(calcPct(thisValue, thisDenominator), 'percentage') + '</span>';
                    gridRowCol += '<span class="context">&plusmn;' + valFmt(calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE), 'percentage') + '</span>';
                } else {
                    rowBits.push('<td></td><td></td>')
                }
            }
            
            // add raw numbers
            rowBits.push('<td class="value">' + valFmt(thisValue, statType) + '</td><td class="context">&plusmn;' + valFmt(thisValueMOE, statType) + '</td>');
            gridRowCol += '<span class="value">' + valFmt(thisValue, statType) + '</span>';
            gridRowCol += '<span class="context">&plusmn;' + valFmt(thisValueMOE, statType) + '</span>';
            gridRowBits.push(gridRowCol);
        })
        tableContents.push('<tr>' + rowBits.join('') + '</tr>');
        gridData.Body.push(gridRowBits);
    })

    var tableData = '<table id="results" class="full-width"><thead><tr>' + headerBits.join('') + '</tr></thead><tbody>' + tableContents.join('') + '</tbody></table>';

    dataTableID.html('Table ' + tableID);
    dataTitle.text(table.title);
    
    // add the data and show container
    //resultsContainer.html(tableData);
    //tableContainer.fadeIn('fast');
    $('#table-results-container').css('height', '400px');
    $('#table-results').css({
        height: '100%',
        width: '100%',
        overflow: 'auto'
    });
    
    var myGrid = new Grid("table-results", {
            srcType : "json", 
            srcData : gridData, 
            colBGColors : ["#F7F8F3"],
            fixedCols : 1
        });
    // add the comparison links
    if (!!primaryGeoID) {
        makeParentOptions();
        makeChildOptions(primaryGeoName);

        // update the place name in table search header
        if (!!results.geography[primaryGeoID]) {
            topicSelectContainer.find('h1').text('Find data for ' + primaryGeoName);
        }
    }
}

jQuery(document).ready(function(){
    getData();
    makeTopicSelectWidget(topicSelect);
    
    $("#data-tabular").on('click', '#change-table', function(e) {
        e.preventDefault();
        topicSelectContainer.toggle();
        topicSelect.focus();
        tableContainer.fadeOut('fast');
    });

    $("#table-results-container").on('mouseover', '.g_BR', function(e) {
        var thisClass = $(this).attr('class').split(' ');
        var thisRow = $.grep(thisClass, function(c) {
            return c.substr(0,3) == 'g_R';
        });
        $('.'+thisRow+':not(.g_HR)').addClass('hover');
    });

    $("#table-results-container").on('mouseleave', '.g_BR', function(e) {
        var thisClass = $(this).attr('class').split(' ');
        var thisRow = $.grep(thisClass, function(c) {
            return c.substr(0,3) == 'g_R';
        });
        $('.'+thisRow+':not(.g_HR)').removeClass('hover');
    });
    
    $("#table-results-container").on('click', '.g_BR', function(e) {
        var thisClass = $(this).attr('class').split(' ');
        var thisRow = $.grep(thisClass, function(c) {
            return c.substr(0,3) == 'g_R';
        });
        $('.'+thisRow+':not(.g_HR)').toggleClass('highlight');
    });
});
