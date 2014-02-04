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
    resultsContainer = $('#data-display');

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
        
        var url = '/data/'+dataFormat+'/?table=' + tableID;
        if (!!geoIDs) { url += "&geoids=" + geoIDs.join(',') }
        if (!!primaryGeoID) { url += "&primary_geoid=" + primaryGeoID }
        window.location = url;
        // TODO: pushState to maintain history without page reload
        //getData();
        //topicSelectContainer.toggle();
    });
}

var getData = function() {
    if (tableID && geoIDs) {
        var params = {
            table_ids: tableID,
            geo_ids: geoIDs.join(',')
        }
        $.getJSON(dataAPI, params)
            .done(function(results) {
                makeDataDisplay(results);
            })
            .fail(function(xhr, textStatus, error) {
                var message = $.parseJSON(xhr.responseText);
                $('article').html('<h1>Error</h1><p class="message display-type clearfix"><span class="message-error">'+message.error+'</span></p>');
            });
    }
}

var makeParentOptions = function() {
    // no tribbles!
    d3.selectAll('#comparison-parents').remove();
    if (!!primaryGeoID) {
        var parentGeoAPI = rootGeoAPI + primaryGeoID + '/parents',
            parentOptionsContainer = d3.select('#data-display aside').append('div')
                .attr('class', 'aside-block')
                .attr('id', 'comparison-parents');

            parentOptionsContainer.append('h2')
                .text('Add geographies');

        $.getJSON(parentGeoAPI)
            .done(function(results) {
                parentOptionsContainer.append('p')
                    .attr('class', 'bottom display-type strong')
                    .html('Add other ' + sumlevMap[thisSumlev]['plural'] + ' in&nbsp;&hellip;');

                parentOptionsContainer.append('ul')
                        .attr('class', 'sumlev-list')
                    .selectAll('li')
                        .data(results['parents'])
                    .enter().append('li').append('a')
                        .attr('href', function(d) {
                            var newGeoIDs = geoIDs.slice(0);
                            newGeoIDs.push(thisSumlev + '|' + d.geoid);
                            
                            return '/data/'+dataFormat+'/?table='+tableID+'&primary_geoid='+primaryGeoID+'&geoids='+newGeoIDs.join(',');
                        })
                        .text(function(d) { return d.display_name });

            });
    }
}

var makeChildOptions = function(name) {
    // no tribbles!
    d3.selectAll('#comparison-children').remove();
    
    if (!!primaryGeoID) {
        var childOptionsContainer = d3.select('#data-display aside').append('div')
                .attr('class', 'aside-block')
                .attr('id', 'comparison-children');
    
        childOptionsContainer.append('p')
                .attr('class', 'bottom display-type strong')
                .html('Add &hellip;');

        childOptionsContainer.append('ul')
                .attr('class', 'sumlev-list')
            .selectAll('li')
                .data(sumlevChildren[thisSumlev])
            .enter().append('li').append('a')
                .attr('href', function(d) {
                    var newGeoIDs = geoIDs.slice(0);
                    newGeoIDs.push(d + '|' + primaryGeoID);

                    return '/data/'+dataFormat+'/?table='+tableID+'&primary_geoid='+primaryGeoID+'&geoids='+newGeoIDs.join(',');
                })
                .text(function(d) { return sumlevMap[d]['plural'] });
        
        if (!!name) {
            childOptionsContainer.append('p')
                    .attr('class', 'display-type strong')
                    .html('&hellip; in ' + name);
        }
    }
}

var sortDataBy = function(field, sortFunc) {
    // allow reverse sorts, e.g. '-value'
    var sortOrder = (field[0] === "-") ? -1 : 1;
    if (sortOrder == -1) {
        field = field.substr(1);
    }
    
    // allow passing in a sort function
    var key = sortFunc ? function (x) { return sortFunc(x[field]); } : function (x) { return x[field]; };

    return function (a,b) {
        var A = key(a), B = key(b);
        return ((A < B) ? -1 : (A > B) ? +1 : 0) * sortOrder;
    }
}
var addNumberToggles = function() {
    $('.number').hide();
    
    var notes = d3.select('#tool-notes'),
        toggle = notes.append('div')
                .classed('tool-group', true)
                .text('Show: ')
            .append('ul')
                .classed('toggle-controls', true)
                .html('<li><a id="show-percentage">Percentages</a></li><li><a id="show-number">Totals</a></li>');
    
    $('#show-number').css('text-decoration', 'none');
    var toggleControls = $('.toggle-controls a');
    toggleControls.on('click', function() {
        var clicked = $(this),
            hideClass = (clicked.attr('id') == 'show-number') ? '.percentage' : '.number',
            showClass = clicked.attr('id').replace('show-','.');
        
        toggleControls.css('text-decoration', 'none');
        clicked.css('text-decoration', 'underline');

        $(hideClass).css('display', 'none');
        $(showClass).css('display', 'inline-block');
    })
}

var makeDataDisplay = function(results) {
    var table = results.tables[tableID],
        release = results.release,
        data = results.data,
        dataGeoIDs = _.keys(results.geography),
        primaryGeoName = (!!primaryGeoID) ? results.geography[primaryGeoID].name : null,
        statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
        denominatorColumn = table.denominator_column_id || null,
        colspan = (denominatorColumn !== null) ? 4 : 2;
        dataContainer = d3.select('#data-display'),
        resultsContainer = d3.select('.data-drawer'),
        gridData = {
            Head: [],
            Body: []
        };

    var sortedPlaces = _.map(results.geography, function(v, k) {
        return {
            geoID: k,
            name: v.name
        }
    }).sort(sortDataBy('name'));

    // fill in some metadata and instructions
    d3.select('#release-name').text(release.name);
    d3.select('#table-universe').html('<strong>Table universe:</strong> ' + table.universe);
    d3.select('aside').insert('p', ':first-child')
        .html('<a id="change-table" href="#">Change table</a>');
    d3.select('#tool-notes').html('<div class="tool-group">Click a row to highlight</div>');
    dataContainer.select('h1').html('Table ' + tableID);
    dataContainer.select('h2').text(table.title);
    
    var headerBits = ['<th class="name">Column</th>'];
    var gridHeaderBits = ['Column'];

    sortedPlaces.forEach(function(g) {
        var geoID = g.geoID;
        headerBits.push('<th class="name" colspan="' + colspan + '"><a href="/profiles/' + geoID + '">' + results.geography[geoID].name + '</a></th>');
        gridHeaderBits.push('<a href="/profiles/' + geoID + '">' + results.geography[geoID].name + '</a>');
    })
    gridData.Head.push(gridHeaderBits);
    
    var columns = d3.map(table.columns),
        tableContents = [];
        
    columns.forEach(function(k, v) {
        var rowBits = ['<td class="name column-name indent-' + v.indent + '">' + v.name + '</td>'];
        var gridRowBits = ['<div class="name indent-' + v.indent + '">' + v.name + '</div>'];

        sortedPlaces.forEach(function(g) {
            var geoID = g.geoID,
                thisDenominator = data[geoID][tableID].estimate[denominatorColumn],
                thisDenominatorMOE = data[geoID][tableID].error[denominatorColumn],
                thisValue = data[geoID][tableID].estimate[k],
                thisValueMOE = data[geoID][tableID].error[k]
                gridRowCol = '';

            // provide percentages first, to match chart style
            if (!!denominatorColumn) {
                if (thisValue >= 0) {
                    rowBits.push('<td class="value"><span class="percentage">' + valFmt(calcPct(thisValue, thisDenominator), 'percentage') + '</span></td><td class="context"><span class="percentage">&plusmn;' + valFmt(calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE), 'percentage') + '</span></td>');
                    gridRowCol += '<span class="value percentage">' + valFmt(calcPct(thisValue, thisDenominator), 'percentage') + '</span>';
                    gridRowCol += '<span class="context percentage">&plusmn;' + valFmt(calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE), 'percentage') + '</span>';
                } else {
                    rowBits.push('<td></td><td></td>')
                }
            }
            
            // add raw numbers
            rowBits.push('<td class="value"><span class="number">' + valFmt(thisValue, statType) + '</span></td><td class="context"><span class="number">&plusmn;' + valFmt(thisValueMOE, statType) + '</span></td>');
            gridRowCol += '<span class="value number">' + valFmt(thisValue, statType) + '</span>';
            gridRowCol += '<span class="context number">&plusmn;' + valFmt(thisValueMOE, statType) + '</span>';
            gridRowBits.push(gridRowCol);
        })
        tableContents.push('<tr>' + rowBits.join('') + '</tr>');
        gridData.Body.push(gridRowBits);
    })

    var tableData = '<table id="results" class="full-width"><thead><tr>' + headerBits.join('') + '</tr></thead><tbody>' + tableContents.join('') + '</tbody></table>';
    
    // add the data and show container
    //resultsContainer.html(tableData);
    //resultsContainer.fadeIn('fast');
    
    var table = $('#table-results').css({
        height: '100%',
        width: '100%',
        overflow: 'auto'
    });

    var myGrid = new Grid("table-results", {
            srcType : "json", 
            srcData : gridData, 
            fixedCols : 1
        });

    if (!!denominatorColumn) {
        addNumberToggles();
    }

    // be smart about fixed height
    setGridWindowHeight();
    
    // add the comparison links and names
    addGeographyNames(primaryGeoName);
}

var setGridWindowHeight = function() {
    var top = document.getElementById('table-results-container').getBoundingClientRect().top,
        maxContainerHeight = Math.floor(browserHeight - top - 120),
        tableHeight = $('#table-results').height() + 50,
        bestHeight = (tableHeight < maxContainerHeight) ? tableHeight : maxContainerHeight;
    $('#table-results-container').css('height', bestHeight+'px');
}

var addGeographyNames = function(primaryGeoName) {
    if (!!primaryGeoID && !!primaryGeoName) {
        makeParentOptions();
        makeChildOptions(primaryGeoName);

        // update the place name in table search header
        topicSelectContainer.find('h1').text('Find data for ' + primaryGeoName);
    }
}

jQuery(document).ready(function(){
    getData();
    makeTopicSelectWidget(topicSelect);
    
    $("#data-display").on('click', '#change-table', function(e) {
        e.preventDefault();
        topicSelectContainer.toggle();
        topicSelect.focus();
        resultsContainer.fadeOut('fast');
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
