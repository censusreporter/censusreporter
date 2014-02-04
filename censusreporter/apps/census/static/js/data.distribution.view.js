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

var prefixColumnNames = function(columns) {
    var prefixPieces = {};
    columns.forEach(function(k, v) {
        // update the dict of prefix names
        var prefixName = (v.name.slice(-1) == ':') ? v.name.slice(0, -1) : v.name;
        prefixPieces[v.indent] = prefixName;
        // compile to prefixed name
        v.prefixed_name = _.values(prefixPieces).slice(0, v.indent+1).join(': ');
    })
}

var calcMedian = function(values) {
    values.sort( function(a, b) { return a - b; });
    var half = Math.floor(values.length / 2);

    if (values.length % 2) {
        return values[half];
    } else {
        return (values[half-1] + values[half]) / 2.0;
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

var makeDataDisplay = function(results) {
    var table = results.tables[tableID],
        release = results.release,
        data = results.data,
        dataGeoIDs = _.keys(results.geography),
        primaryGeoName = (!!primaryGeoID) ? results.geography[primaryGeoID].name : null,
        statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
        denominatorColumn = table.denominator_column_id || null,
        dataContainer = d3.select('#data-display'),
        resultsContainer = d3.select('#data-container');

    // fill in some metadata and instructions
    d3.select('#release-name').text(release.name);
    d3.select('#table-universe').html('<strong>Table universe:</strong> ' + table.universe);
    d3.select('aside').insert('p', ':first-child')
        .html('<a id="change-table" href="#">Change table</a>');
    dataContainer.select('h1').html('Table ' + tableID);
    dataContainer.select('h2').text(table.title);
    
    var notes = d3.select('#tool-notes');
    notes.append('div')
        .classed('tool-group', true)
        .text('Click a point to lock display');
        
    var placeSelect = notes.append('div')
            .classed('tool-group', true)
            .text('Find ')
        .append('select')
            .attr('id', 'coal-picker')
            .attr('data-placeholder', 'Select a geography');
    //select2 needs an empty container first for placeholder
    placeSelect.append('option');
    
    var sortedPlaces = _.map(results.geography, function(v, k) {
        return {
            geoID: k,
            name: v.name
        }
    }).sort(sortDataBy('name'));

    placeSelect.selectAll('.geo')
            .data(sortedPlaces)
        .enter().append('option')
            .classed('geo', true)
            .attr('value', function(d) {
                return 'geography-'+d.geoID;
            })
            .text(function(d) { return d.name });

    var columns = d3.map(table.columns),
        charts = {};
        
    prefixColumnNames(columns);
    // if we're going to display percentages, there's no reason to display
    // a "total" column: a distribution where every geography is 100%
    if (!!denominatorColumn) {
        columns.remove(denominatorColumn)
    }
    
    columns.forEach(function(k, v) {
        var medianValue,
            medianPctOfRange,
            columnData = { column: k },
            columnValues = [],
            columnValuesPct = [],
            geoColumnData = {};
            
        dataGeoIDs.forEach(function(g) {
            var thisValue = data[g][tableID].estimate[k];
            geoColumnData[g] = {
                name: results.geography[g].name,
                value: thisValue,
                displayValue: thisValue,
                displayFmt: 'number',
                geoID: g
            }
            columnValues.push(thisValue);
            
            if (!!denominatorColumn) {
                var thisDenominator = data[g][tableID].estimate[denominatorColumn],
                    thisPct = calcPct(thisValue, thisDenominator);

                geoColumnData[g].value_pct = thisPct;
                geoColumnData[g].displayValue = thisPct;
                geoColumnData[g].displayFmt = 'percentage';
                columnValuesPct.push(thisPct);
            }
        })
        columnData.geographies = geoColumnData;
        
        var valuesList = (!!denominatorColumn) ? columnValuesPct : columnValues;
        columnData.minValue = Math.min.apply(Math, valuesList);
        columnData.maxValue = Math.max.apply(Math, valuesList);
        columnData.valuesRange = columnData.maxValue - columnData.minValue;
        columnData.medianValue = calcMedian(valuesList);

        var xScale = d3.scale.linear()
            .range([0, 100])
            .domain([columnData.minValue, columnData.maxValue]);
        columnData.medianPctOfRange = roundNumber(xScale(columnData.medianValue), 1);
        
        charts[k] = resultsContainer.append('section')
                .attr('class', 'coal-chart-container')
                .attr('id', 'coal-chart-'+k)
            
        charts[k].append('h2')
                .attr('id', k)
                .html('<a class="permalink" href="#'+k+'">'+v.prefixed_name+' <i class="fa fa-link"></i></a>');

        var chart = charts[k].append('ul')
            .attr('class', 'coal-chart');

        chart.append('li')
            .attr('class', 'tick-mark tick-mark-min')
            .html('<span><b>Min:</b> '+columnData.minValue+'</span>');

        chart.append('li')
            .attr('class', 'tick-mark')
            .attr('style', 'left:'+columnData.medianPctOfRange+'%;')
            .html(function() {
                var marginTop = (columnData.medianPctOfRange < 12 || columnData.medianPctOfRange > 88) ? 'margin-top:38px;' : '';
                return '<span style="'+marginTop+'"><b>Median:</b> '+columnData.medianValue+'</span>';
            });

        chart.append('li')
            .attr('class', 'tick-mark tick-mark-max')
            .html('<span><b>Max:</b> '+columnData.maxValue+'</span>');

        var chartPoints = chart.selectAll('.chart-point')
                .data(d3.values(columnData.geographies))
            .enter().append('li')
                .classed('chart-point', true)
                .style('left', function(d) {
                    return roundNumber(xScale(d.displayValue), 1)+'%';
                })
        chartPoints.append('a')
                .attr('data-index', function(d) {
                    return 'geography-'+d.geoID;
                })
            .append('span')
                .html(function(d) {
                    return '<b>'+d.name+'</b><br>'+valFmt(d.displayValue, d.displayFmt);
                });
    })
    
    // add the comparison links and names
    //addGeographyNames(primaryGeoName);
    displaySetup();
}

var addGeographyNames = function(primaryGeoName) {
    if (!!primaryGeoID && !!primaryGeoName) {
        makeParentOptions();
        makeChildOptions(primaryGeoName);

        // update the place name in table search header
        topicSelectContainer.find('h1').text('Find data for ' + primaryGeoName);
    }
}

var displaySetup = function() {
    var coalCharts = $('.coal-chart'),
        coalChartPoints = $('.coal-chart a'),
        placePicker = $('#coal-picker');
        
    coalCharts.on('mouseover', 'a', function(e) {
        var chosenIndex = $(this).data('index'),
            filteredPoints = coalChartPoints.filter('[data-index='+chosenIndex+']');

        filteredPoints.addClass('hovered');
        filteredPoints.children('span').css('display', 'block');
    })
    coalCharts.on('mouseout', 'a', function(e) {
        coalChartPoints.removeClass('hovered');
        coalChartPoints.children('span').removeAttr('style');
    })
    coalCharts.on('click', 'a', function(e) {
        e.preventDefault();
        toggleSelectedPoints($(this).data('index'));
    })
    
    placePicker.select2({
        placeholder: 'Select a geography',
        width: 'resolve'
    });
    placePicker.on('change', function(e) {
        toggleSelectedPoints($(this).val());
    })
    
    var colorScale = chroma.scale('RdYlBu').domain([0,6]),
        colorIndex = 0;
    
    var toggleSelectedPoints = function(chosenIndex) {
        var filteredPoints = coalChartPoints.filter('[data-index='+chosenIndex+']');
        // if adding a new selection, pick next color in scale
        if (!filteredPoints.hasClass('selected')) {
            targetColor = colorScale((colorIndex+=1) % 6);
        }
        filteredPoints.toggleClass('selected').removeAttr('style').filter('.selected').css({
            'background-color': targetColor.hex(),
            'border-color': targetColor.darken(20).hex()
        });
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

});
