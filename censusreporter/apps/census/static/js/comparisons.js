/*
Pass in an options object, fetch data, get back a comparison view.

Comparison({
    tableID: '{{ table }}', # string
    dataFormat: '{{ data_format }}', # 'table' or 'distribution'
    geoIDs: '{{ geo_list }}', # an array
    primaryGeoID: '{{ primary_geo_id }}', # string
    topicSelect: '#topic-select',
    topicSelectContainer: '#query-topic-picker',
    dataHeader: '#header-container',
    dataWrapper: '#data-display',
    dataContainer: '#data-container'
})

This expects to have Underscore, D3 and jQuery.
*/

function Comparison(options) {
    var comparison = {
        tableSearchAPI: 'http://api.censusreporter.org/1.0/table/search',
        geoSearchAPI: 'http://api.censusreporter.org/1.0/geo/search',
        rootGeoAPI: 'http://api.censusreporter.org/1.0/geo/tiger2012/',
        dataAPI: 'http://api.censusreporter.org/1.0/data/show/latest'
    };
    
    comparison.init = function(options) {
        // establish our base vars
        comparison.tableID = options.tableID;
        comparison.dataFormat = options.dataFormat;
        comparison.geoIDs = options.geoIDs;
        comparison.primaryGeoID = options.primaryGeoID || null;
        comparison.thisSumlev = (!!comparison.primaryGeoID) ? comparison.primaryGeoID.substr(0,3) : null,

        comparison.topicSelect = $(options.topicSelect);
        comparison.topicSelectContainer = $(options.topicSelectContainer);
        comparison.dataHeader = $(options.dataHeader);
        comparison.dataWrapper = $(options.dataWrapper);
        comparison.dataContainer = $(options.dataContainer);

        // standard listeners
        comparison.dataWrapper.on('click', '#change-table', function(e) {
            e.preventDefault();
            comparison.dataHeader.hide()
            comparison.dataWrapper.hide()
            comparison.topicSelectContainer.toggle();
            comparison.topicSelect.focus();
        });
        
        // add the hidden table selector
        comparison.makeTopicSelectWidget();
        
        // go get the data
        comparison.getData();
        return comparison;
    }
    
    comparison.getData = function() {
        if (comparison.tableID && comparison.geoIDs) {
            var params = {
                table_ids: comparison.tableID,
                geo_ids: comparison.geoIDs.join(',')
            }
            $.getJSON(comparison.dataAPI, params)
                .done(function(results) {
                    comparison.data = results;
                    comparison.makeDataDisplay();
                })
                .fail(function(xhr, textStatus, error) {
                    var message = $.parseJSON(xhr.responseText);
                    comparison.dataWrapper.html('<h1>Error</h1><p class="message display-type clearfix"><span class="message-error">'+message.error+'</span></p>');
                });
        }
        return comparison;
    }
    
    comparison.makeDataDisplay = function() {
        // traffic cop, opportunity for any middleware-type things here
        comparison.primaryGeoName = (!!comparison.primaryGeoID) ? comparison.data.geography[comparison.primaryGeoID].name : null;
        
        if (comparison.dataFormat == 'table') {
            comparison.makeTableDisplay();
        }
        if (comparison.dataFormat == 'map') {
            comparison.makeMapDisplay();
        }
        if (comparison.dataFormat == 'distribution') {
            comparison.makeDistributionDisplay();
        }
    }
    
    comparison.makeMapDisplay = function() {
        var table = comparison.data.tables[comparison.tableID],
            release = comparison.data.release,
            data = comparison.data.data,
            dataGeoIDs = _.keys(comparison.data.geography),
            statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
            denominatorColumn = table.denominator_column_id || null,
            valueType = (!!denominatorColumn) ? 'percentage' : 'estimate',
            headerContainer = d3.select('#data-display');
            
        var quintileColors = ['#d9ece8', '#a1cfc6', '#68b3a3', '#428476', '#264b44'];
            
        headerContainer.append('h1').text(table.title);
        
        var headerMetadataContainer = headerContainer.append('ul')
                .classed('metadata', true);
        headerMetadataContainer.append('li')
                .classed('bigger', true)
                .text('Table '+ comparison.tableID);
        headerMetadataContainer.append('li')
                .classed('bigger', true)
                .text(release.name);
        headerMetadataContainer.append('li')
                .html('<a id="change-table" href="#">Change table</a>');

        headerContainer.append('p')
                .classed('caption', true)
            .append('span')
                .classed('caption-group', true)
                .html('<strong>Table universe:</strong> '+ table.universe);
                
        var makeLegendContainer = function(colors) {
            var legendContainer = headerContainer.append('div')
                    .classed('legend-bar', true)
                .append('div')
                    .classed('tool-group', true)
                    .attr('id', 'map-legend')
                .append('ul')
                    .classed('quantile-legend', true)

            // add padded item for last category
            colors.push(null)
            
            legendContainer.selectAll('li')
                    .data(colors)
                .enter().append('li')
                    .style('background-color', function(d) { if (d) { return d }})
                    .classed('empty', function(d) { return (d == null) })
                .append('span')
                    .classed('quantile-label', true);
        }
        makeLegendContainer(quintileColors);
        
        var makeDataSelector = function() {
            var dataSelector = headerContainer.append('div')
                    .classed('tool-group data-selector clearfix', true)
                    .attr('id', 'map-select');
            
            dataSelector.append('h2')
                    .classed('select-header', true)
                    .text('Show column');
                    
            var chosen = dataSelector.append('div')
                    .classed('item-chosen', true)
                    .attr('id', 'column-picker');
                    
            var chosenTitle = chosen.append('h3')
                    .classed('item-chosen-title', true);
                    
            chosenTitle.append('i')
                    .classed('fa fa-chevron-circle-down', true);

            chosenTitle.append('span')
                    .attr('id', 'column-title-chosen');
                    
            var chosenChoices = chosen.append('div')
                    .classed('item-choices', true)
                .append('ul')
                    .classed('filter-list clearfix', true)
                    .attr('id', 'column-picker-choices');
        }
        makeDataSelector();

        var labelTitle = "",
            chosenColumnTitle = d3.select("#column-title-chosen");

        var geoAPI = "http://api.censusreporter.org/1.0/geo/show/tiger2012?geo_ids=" + comparison.geoIDs.join(','),
            allowMapDrag = (browserWidth > 480) ? true : false;

        // prep the column keys and names
        comparison.columns = table.columns;
        if (!!denominatorColumn) {
            var columnChoiceDenominator = '<li class="indent-'+table.columns[denominatorColumn]['indent']+'"><span class="label">'+table.columns[denominatorColumn]['name']+'</span></li>';
            delete comparison.columns[denominatorColumn]
        }
        comparison.columnKeys = _.keys(comparison.columns);
        comparison.prefixColumnNames(comparison.columns, denominatorColumn);

        var makeColumnChoice = function(columnKey) {
            var columnData = comparison.columns[columnKey];
            var choice = '<li class="indent-'+columnData.indent+'">';
            if (columnKey.indexOf('.') != -1) {
                choice += '<span class="label">'+columnData.name+'</span>';
            } else {
                choice += '<a href="#" id="column-select-'+columnKey+'" data-value="'+columnKey+'" data-full-name="'+columnData.prefixed_name+'">'+columnData.name+'</a>'
            }
            choice += '</li>';
            
            return choice;
        }

        var columnChoices = d3.select('#column-picker-choices');
        columnChoices.selectAll("li")
                .data(comparison.columnKeys)
            .enter().append("li")
                .html(function(d) {
                    return makeColumnChoice(d);
                });
                
        if (!!denominatorColumn) {
            columnChoices.insert('li', ':first-child')
                .html(columnChoiceDenominator);
        }
        
        d3.json(geoAPI, function(error, json) {
            if (error) return console.warn(error);
            
            // add table data to each geography's properties
            _.each(json.features, function(e) {
                e.properties.data = data[e.properties.geoid][comparison.tableID];
                // add percentages if possible
                if (!!denominatorColumn) {
                    e.properties.data.percentage = {};
                    _.each(comparison.columnKeys, function(k) {
                        var thisValue = e.properties.data.estimate[k],
                            thisDenominator = e.properties.data.estimate[denominatorColumn];
                        e.properties.data.percentage[k] = calcPct(thisValue, thisDenominator);
                    })
                }
            })

            // draw the base map
            var map = L.mapbox.map('slippy-map', 'censusreporter.map-j9q076fv', {
                scrollWheelZoom: false,
                zoomControl: false,
                dragging: allowMapDrag,
                touchZoom: allowMapDrag
            });
            if (allowMapDrag) {
                map.addControl(new L.Control.Zoom({
                    position: 'topright'
                }));
            }

            var makeLabel = function(feature, column) {
                if (!!feature.properties.data) {
                    var label = "<span class='label-title'>" + comparison.columns[column]['prefixed_name'] + "</span>";
                    label += "<span class='name'>" + feature.properties.name + "</span>";
                    if (!!feature.properties.data.percentage[column]) {
                        label += "<span class='value'>" + feature.properties.data.percentage[column] + "%";
                        if (!!feature.properties.data.estimate[column]) {
                            label += " (" + numberWithCommas(feature.properties.data.estimate[column]) + ")";
                        }
                        label += "</span>";
                    }
                    else if (!!feature.properties.data.estimate[column]) {
                        label += "<span class='value'>" + numberWithCommas(feature.properties.data.estimate[column]) + "</span>";
                    }
                }
                return label;
            }

            // rebuild map with new data on select menu change
            var changeMap = function(column) {
                labelTitle = comparison.columns[column]['prefixed_name'];
                chosenColumnTitle.text(labelTitle);
                makeChoropleth(column);
            }

            // build map based on specific column of data
            var makeChoropleth = function(column) {
                var values = d3.values(data).map(function(d) {
                    return d[comparison.tableID][valueType][column];
                });
                
                var quantize = d3.scale.quantile()
                    .domain([d3.min(values), d3.max(values)])
                    .range(d3.range(5));

                var labelData = quantize.quantiles().slice(0);
                labelData.unshift(d3.min(values));
                labelData.push(d3.max(values));
                var legendLabels = d3.select("#map-legend")
                    .selectAll("span")
                    .data(labelData)
                    .text(function(d){
                        if (typeof(d) != 'undefined') {
                            if (!!denominatorColumn) {
                                return roundNumber(d, 1) + '%'
                            } else {
                                return numberWithCommas(d)
                            }
                        }
                    });

                var styleFeature = function(feature) {
                    return {
                        fillColor: quintileColors[quantize(feature.properties.data[valueType][column])],
                        weight: 1.0,
                        opacity: 1.0,
                        color: '#fff',
                        fillOpacity: 1.0
                    };
                }
                
                var featureLayer = L.geoJson(json, {
                    style: styleFeature,
                    onEachFeature: function(feature, layer) {
                        var label = makeLabel(feature, column);
                        layer.bindLabel(label, {className: 'hovercard'});
                        layer.on('click', function() {
                            window.location.href = '/profiles/' + feature.properties.geoid + '-' + slugify(feature.properties.name);
                        });
                    }
                });
                map.addLayer(featureLayer);
                var objBounds = featureLayer.getBounds();

                if (browserWidth > 768) {
                    var z,
                        targetWidth = browserWidth - 100,
                        targetHeight = browserHeight - 100;
                    for(z = 16; z > 2; z--) {
                        var swPix = map.project(objBounds.getSouthWest(), z),
                            nePix = map.project(objBounds.getNorthEast(), z),
                            pixWidth = Math.abs(nePix.x - swPix.x),
                            pixHeight = Math.abs(nePix.y - swPix.y);
                        if (pixWidth < targetWidth && pixHeight < targetHeight) {
                            break;
                        }
                    }
                    map.setView(objBounds.getCenter(), z);
                } else {
                    map.fitBounds(objBounds);
                }
            }
            // initial page load, make map with first column
            changeMap(comparison.columnKeys[0]);

            // set up dropdown for changing data column
            var dataSelector = $('.data-selector');
            dataSelector.on('click', '.item-chosen', function(e) {
                e.preventDefault();
                var chosenGroup = $(this);
                chosenGroup.toggleClass('open');
                chosenGroup.find('i[class^="fa-"]').toggleClass('fa-chevron-circle-down fa-chevron-circle-up');
            });
            dataSelector.on('click', 'a', function(e) {
                e.preventDefault();
                e.stopPropagation();
                var selected = $(this);
                var selectedVal = selected.data('value');
                dataSelector.find('a').removeClass('option-selected');
                selected.addClass('option-selected');
                var chosenGroup = $(this).closest('.item-chosen');
                chosenGroup.toggleClass('open');
                changeMap(selectedVal);
            });
            dataSelector.fadeIn();
        })
    }
    
    comparison.makeTableDisplay = function() {
        var table = comparison.data.tables[comparison.tableID],
            release = comparison.data.release,
            data = comparison.data.data,
            dataGeoIDs = _.keys(comparison.data.geography),
            statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
            denominatorColumn = table.denominator_column_id || null,
            headerContainer = d3.select('#header-container'),
            dataContainer = d3.select('#data-display'),
            resultsContainer = d3.select('.data-drawer'),
            aside = d3.select('aside'),
            gridData = {
                Head: [],
                Body: []
            };

        var sortedPlaces = _.map(comparison.data.geography, function(v, k) {
            return {
                geoID: k,
                name: v.name
            }
        }).sort(comparison.sortDataBy('name'));

        // fill in some metadata and instructions
        d3.select('#table-universe').html('<strong>Table universe:</strong> ' + table.universe);
        aside.insert('p', ':first-child')
            .html('<a id="change-table" href="#">Change table</a>');
        aside.selectAll('.hidden')
            .classed('hidden', false);
        headerContainer.select('h1').text(table.title);
        dataContainer.select('h1').text('Table ' + comparison.tableID);
        dataContainer.select('h2').text(release.name);

        // for long table titles, bump down the font size
        if (table.title.length > 160) {
            headerContainer.select('h1')
                .style('font-size', '1.6em');
        }

        // build the header
        var gridHeaderBits = ['Column'];
        sortedPlaces.forEach(function(g) {
            var geoID = g.geoID,
                geoName = comparison.data.geography[geoID].name;
            gridHeaderBits.push('<a href="/profiles/' + geoID + '-' + slugify(geoName) + '">' + geoName + '</a>');
        })
        gridData.Head.push(gridHeaderBits);

        // build the columns
        var columns = d3.map(table.columns);
        columns.forEach(function(k, v) {
            var gridRowBits = ['<div class="name indent-' + v.indent + '">' + v.name + '</div>'];

            sortedPlaces.forEach(function(g) {
                var geoID = g.geoID,
                    thisDenominator = data[geoID][comparison.tableID].estimate[denominatorColumn],
                    thisDenominatorMOE = data[geoID][comparison.tableID].error[denominatorColumn],
                    thisValue = data[geoID][comparison.tableID].estimate[k],
                    thisValueMOE = data[geoID][comparison.tableID].error[k]
                    gridRowCol = '';

                // provide percentages first, to match chart style
                if (!!denominatorColumn) {
                    if (thisValue >= 0) {
                        gridRowCol += '<span class="value percentage">' + valFmt(calcPct(thisValue, thisDenominator), 'percentage') + '</span>';
                        gridRowCol += '<span class="context percentage">&plusmn;' + valFmt(calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE), 'percentage') + '</span>';
                    }
                }

                // add raw numbers
                if (thisValue >= 0) {
                    gridRowCol += '<span class="value number">' + valFmt(thisValue, statType) + '</span>';
                    gridRowCol += '<span class="context number">&plusmn;' + valFmt(thisValueMOE, statType) + '</span>';
                }
                gridRowBits.push(gridRowCol);
            })
            gridData.Body.push(gridRowBits);
        })

        // show the grid
        comparison.resultsContainerID = 'data-results';
        comparison.dataContainer.append('<div class="data-drawer grid" id="'+comparison.resultsContainerID+'"></div>');
        var table = $('#'+comparison.resultsContainerID).css({
            height: '100%',
            width: '100%',
            overflow: 'hidden'
        });
        comparison.grid = new Grid(comparison.resultsContainerID, {
            srcType: "json",
            srcData: gridData,
            fixedCols: 1
        });

        // add some table controls and notes
        if (!!denominatorColumn) {
            comparison.addNumberToggles();
        }
        d3.select('#tool-notes').append('div')
                .classed('tool-group', true)
                .text('Click a row to highlight');

        // be smart about fixed height
        comparison.dataDisplayHeight = $('#data-results').height()+20;
        comparison.setResultsContainerHeight();
        $(window).resize(comparison.setResultsContainerHeight);
        
        // add hover listeners for grid rows
        $("#data-display").on('mouseover', '.g_BR', function(e) {
            var thisClass = $(this).attr('class').split(' ');
            var thisRow = $.grep(thisClass, function(c) {
                return c.substr(0,3) == 'g_R';
            });
            $('.'+thisRow+':not(.g_HR)').addClass('hover');
        });

        $("#data-display").on('mouseleave', '.g_BR', function(e) {
            var thisClass = $(this).attr('class').split(' ');
            var thisRow = $.grep(thisClass, function(c) {
                return c.substr(0,3) == 'g_R';
            });
            $('.'+thisRow+':not(.g_HR)').removeClass('hover');
        });
    
        $("#data-display").on('click', '.g_BR', function(e) {
            var thisClass = $(this).attr('class').split(' ');
            var thisRow = $.grep(thisClass, function(c) {
                return c.substr(0,3) == 'g_R';
            });
            $('.'+thisRow+':not(.g_HR)').toggleClass('highlight');
        });

        // add the comparison links, names, and typeahead
        comparison.addGeographyCompareTools();
    }

    comparison.makeDistributionDisplay = function() {
        var table = comparison.data.tables[comparison.tableID],
            release = comparison.data.release,
            data = comparison.data.data,
            dataGeoIDs = _.keys(comparison.data.geography),
            statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
            denominatorColumn = table.denominator_column_id || null,
            headerContainer = d3.select('#header-container'),
            dataContainer = d3.select('#data-display'),
            resultsContainer = d3.select('#data-container'),
            aside = d3.select('aside');

        // fill in some metadata and instructions
        d3.select('#table-universe').html('<strong>Table universe:</strong> ' + table.universe);
        aside.insert('p', ':first-child')
            .html('<a id="change-table" href="#">Change table</a>');
        aside.selectAll('.hidden')
            .classed('hidden', false);
        headerContainer.select('h1').text(table.title);
        dataContainer.select('h1').text('Table ' + comparison.tableID);
        dataContainer.select('h2').text(release.name);

        // for long table titles, bump down the font size
        if (table.title.length > 160) {
            headerContainer.select('h1')
                .style('font-size', '1.6em')
        }

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

        var sortedPlaces = _.map(comparison.data.geography, function(v, k) {
            return {
                geoID: k,
                name: v.name
            }
        }).sort(comparison.sortDataBy('name'));

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

        comparison.prefixColumnNames(columns);
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
                var thisValue = data[g][comparison.tableID].estimate[k];
                geoColumnData[g] = {
                    name: comparison.data.geography[g].name,
                    value: thisValue,
                    displayValue: thisValue,
                    displayFmt: 'number',
                    geoID: g
                }
                columnValues.push(thisValue);

                if (!!denominatorColumn) {
                    var thisDenominator = data[g][comparison.tableID].estimate[denominatorColumn],
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
            columnData.medianValue = comparison.calcMedian(valuesList);

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

        // add the comparison links, names, and typeahead
        comparison.addGeographyCompareTools();

        // set up the chart point listeners
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

        // add the place picker to highlight points on charts
        placePicker.select2({
            placeholder: 'Select a geography',
            width: 'resolve'
        });
        placePicker.on('change', function(e) {
            toggleSelectedPoints($(this).val());
        })

        // color scale for locked chart points
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
    
    comparison.makeTopicSelectWidget = function() {
        var element = comparison.topicSelect;
        
        element.typeahead('destroy');
        element.typeahead({
            name: 'topics',
            valueKey: 'unique_key',
            nameKey: 'simple_table_name',
            remote: {
                url: comparison.tableSearchAPI,
                replace: function (url, uriEncodedQuery) {
                    url += '?';
                    if (uriEncodedQuery) {
                        url += 'q=' + uriEncodedQuery;
                    }
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

        element.on('typeahead:selected', function(obj, datum) {
            element.typeahead('setQuery', '');
            comparison.tableID = datum['table_id'];

            var url = comparison.buildComparisonURL(
                comparison.dataFormat, comparison.tableID, comparison.geoIDs, comparison.primaryGeoID
            );
            window.location = url;
            // TODO: pushState to maintain history without page reload
        });
        return comparison;
    }

    comparison.makeGeoSelectWidget = function() {
        var selectContainer = d3.select(options.dataWrapper+' aside').append('div')
            .attr('class', 'aside-block search')
            .attr('id', 'comparison-add');

        selectContainer.append('p')
            .attr('class', 'bottom display-type strong')
            .text('Add a geography');

        selectContainer.append('input')
            .attr('name', 'geography_add')
            .attr('id', 'geography-add')
            .attr('type', 'text')
            .attr('placeholder', 'Find a place')
            .attr('autocomplete', 'off');

        var element = $('#geography-add');
        element.typeahead({
            name: 'add_place',
            valueKey: 'full_geoid',
            nameKey: 'full_name',
            remote: {
                url: comparison.geoSearchAPI,
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
            template: '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>',
            engine: Hogan
        });

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();
            element.typeahead('setQuery', datum['full_name']);

            comparison.geoIDs.push(datum['full_geoid']);
            var url = comparison.buildComparisonURL(
                comparison.dataFormat, comparison.tableID, comparison.geoIDs, comparison.primaryGeoID
            );
            window.location = url;
            // TODO: pushState to maintain history without page reload
        });
        return comparison;
    }
    
    comparison.makeParentOptions = function() {
        // no tribbles!
        d3.selectAll('#comparison-parents').remove();
        
        if (!!comparison.primaryGeoID && comparison.thisSumlev != '010') {
            var parentGeoAPI = comparison.rootGeoAPI + comparison.primaryGeoID + '/parents',
                parentOptionsContainer = d3.select(options.dataWrapper+' aside').append('div')
                    .attr('class', 'aside-block')
                    .attr('id', 'comparison-parents');

            $.getJSON(parentGeoAPI)
                .done(function(results) {
                    parentOptionsContainer.append('p')
                        .attr('class', 'bottom display-type strong')
                        .html('Add all ' + sumlevMap[comparison.thisSumlev]['plural'] + ' in&nbsp;&hellip;');

                    parentOptionsContainer.append('ul')
                            .attr('class', 'sumlev-list')
                        .selectAll('li')
                            .data(results['parents'])
                        .enter().append('li').append('a')
                            .attr('href', function(d) {
                                var newGeoIDs = comparison.geoIDs.slice(0);
                                newGeoIDs.push(comparison.thisSumlev + '|' + d.geoid);

                                return comparison.buildComparisonURL(
                                    comparison.dataFormat, comparison.tableID, newGeoIDs, comparison.primaryGeoID
                                )
                            })
                            .text(function(d) { return d.display_name });

                });
        }
        return comparison;
    }

    comparison.makeChildOptions = function() {
        // no tribbles!
        d3.selectAll('#comparison-children').remove();

        if (!!comparison.primaryGeoID && comparison.thisSumlev != '150') {
            var childOptionsContainer = d3.select(options.dataWrapper+' aside').append('div')
                    .attr('class', 'aside-block')
                    .attr('id', 'comparison-children');

            childOptionsContainer.append('p')
                    .attr('class', 'bottom display-type strong')
                    .html('Add &hellip;');

            childOptionsContainer.append('ul')
                    .attr('class', 'sumlev-list')
                .selectAll('li')
                    .data(sumlevChildren[comparison.thisSumlev])
                .enter().append('li').append('a')
                    .attr('href', function(d) {
                        var newGeoIDs = comparison.geoIDs.slice(0);
                        newGeoIDs.push(d + '|' + comparison.primaryGeoID);

                        return comparison.buildComparisonURL(
                            comparison.dataFormat, comparison.tableID, newGeoIDs, comparison.primaryGeoID
                        )
                    })
                    .text(function(d) { return sumlevMap[d]['plural'] });

            if (!!comparison.primaryGeoName) {
                childOptionsContainer.append('p')
                        .attr('class', 'display-type strong')
                        .html('&hellip; in ' + comparison.primaryGeoName);
            }
        }
        return comparison;
    }

    comparison.addGeographyCompareTools = function() {
        // add typeahead place picker
        comparison.makeGeoSelectWidget();
        
        if (!!comparison.primaryGeoID && !!comparison.primaryGeoName) {
            // create shortcuts for adding groups of geographies to comparison
            comparison.makeParentOptions();
            comparison.makeChildOptions();

            // update the place name in table search header
            comparison.topicSelectContainer.find('h1').text('Find data for ' + comparison.primaryGeoName);
        }
    }
    
    comparison.addNumberToggles = function() {
        $('.number').hide();

        var notes = d3.select('#tool-notes'),
            toggle = notes.append('div')
                    .classed('tool-group', true)
                .append('a')
                    .classed('toggle-control', true)
                    .attr('id', 'show-number')
                    .text('Switch to totals');

        var toggleControl = $('.toggle-control');
        toggleControl.on('click', function() {
            var clicked = $(this),
                showClass = clicked.attr('id').replace('show-','.'),
                hideClass = (showClass == '.number') ? '.percentage' : '.number',
                toggleID = (showClass == '.number') ? 'show-percentage' : 'show-number',
                toggleText = (showClass == '.number') ? 'Switch to percentages' : 'Switch to totals';

            toggleControl.attr('id', toggleID).text(toggleText);
            $(hideClass).css('display', 'none');
            $(showClass).css('display', 'inline-block');
        })
        return comparison;
    }
    
    
    // UTILITIES
    
    comparison.buildComparisonURL = function(dataFormat, tableID, geoIDs, primaryGeoID) {
        // pass in vars rather than use them from comparison object
        // so they can be created to arbitrary destinations

        var url = '/data/'+dataFormat+'/?table='+tableID;
        if (!!geoIDs) {
            url += "&geo_ids=" + geoIDs.join(',')
        }
        if (!!primaryGeoID) {
            url += "&primary_geo_id=" + primaryGeoID
        }
        
        return url
    }

    comparison.setResultsContainerHeight = _.debounce(function() {
        // redraw to match new dimensions
        window.browserWidth = document.documentElement.clientWidth;
        window.browserHeight = document.documentElement.clientHeight;

        // use options.dataContainer
        var top = document.getElementById(comparison.resultsContainerID).getBoundingClientRect().top,
            maxContainerHeight = Math.floor(browserHeight - top - 20),
            bestHeight = (comparison.dataDisplayHeight < maxContainerHeight) ? comparison.dataDisplayHeight : maxContainerHeight;

        $('#'+comparison.resultsContainerID).css('height', bestHeight+'px');
    }, 100);

    comparison.sortDataBy = function(field, sortFunc) {
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
    
    comparison.prefixColumnNames = function(columns, suppressDenominator) {
        var prefixPieces = {},
            indentAdd = (!!suppressDenominator) ? 0 : 1;
        _.each(columns, function(v) {
            // update the dict of prefix names
            var prefixName = (v.name.slice(-1) == ':') ? v.name.slice(0, -1) : v.name;
            prefixPieces[v.indent] = prefixName;
            // compile to prefixed name
            v.prefixed_name = _.values(prefixPieces).slice(0, v.indent+indentAdd).join(': ');
            console.log(v.prefixed_name)
        })
        console.log(prefixPieces)
    }

    comparison.calcMedian = function(values) {
        values.sort( function(a, b) { return a - b; });
        var half = Math.floor(values.length / 2);

        if (values.length % 2) {
            return values[half];
        } else {
            return Math.round(((values[half-1] + values[half]) / 2.0) * 100) / 100;
        }
    }

    comparison.trackEvent = function(category, action, label) {
        // e.g. comparison.trackEvent('Comparisons', 'Add geographies', sumlev);
        // make sure we have Google Analytics function available
        if (typeof(ga) == 'function') {
            ga('send', 'event', category, action, label);
        }
    }

    // ready, set, go
    comparison.init(options);
    return comparison;
}
