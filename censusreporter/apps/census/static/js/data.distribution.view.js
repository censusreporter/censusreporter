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
    resultsContainer = $('#data-distribution');

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
                    .html('Compare with other ' + sumlevMap[thisSumlev]['plural'] + ' in&nbsp;&hellip;');

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
                .html('Compare &hellip;');

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

var makeDataDisplay = function(results) {
    var table = results.tables[tableID],
        release = results.release,
        data = results.data,
        dataGeoIDs = _.keys(results.geography),
        primaryGeoName = (!!primaryGeoID) ? results.geography[primaryGeoID].name : null,
        statType = (table.title.toLowerCase().indexOf('dollars') !== -1) ? 'dollar' : 'number',
        denominatorColumn = table.denominator_column_id || null,
        dataContainer = d3.select('#data-container');

    // fill in some metadata and instructions
    d3.select('#release-name').text(release.name);
    d3.select('#table-universe').html('<strong>Table universe:</strong> ' + table.universe);
    d3.select('aside').html('<p><a id="change-table" href="#">Change table</a></p>');
    d3.select('#tool-notes').html('<div class="tool-group">Click a point to lock display</div>');
    dataContainer.select('h1').html('Table ' + tableID);
    dataContainer.select('h2').text(table.title);
        
    dataGeoIDs.forEach(function(g) {
        console.log(g)
    })
    
    var columns = d3.map(table.columns),
        charts = {};
        
    columns.forEach(function(k, v) {
        console.log(k,v)
        var minValue,
            maxValue,
            medianValue
            medianPctOfRange = 50;//fix these
        
        charts[k] = dataContainer.append('section')
                .attr('class', 'coal-chart-container')
                .attr('id', 'coal-chart-'+k)
            
        charts[k].append('h2')
                .attr('id', k)
                .html('<a class="permalink" href="#'+k+'">'+v.name+' <i class="fa fa-link"></i></a>');

        var chart = charts[k].append('ul')
            .attr('class', 'coal-chart');
            
        chart.append('li')
            .attr('class', 'tick-mark tick-mark-min')
            .html('<span><b>Min:</b> '+minValue+'</span>');

        chart.append('li')
            .attr('class', 'tick-mark')
            .attr('style', 'left:'+medianPctOfRange+'%;')
            .html(function() {
                var marginTop = (medianPctOfRange < 12) ? 'margin-top:38px;' : '';
                return '<span style="'+marginTop+'"><b>Median:</b> '+maxValue+'</span>';
            });

        chart.append('li')
            .attr('class', 'tick-mark tick-mark-max')
            .html('<span><b>Max:</b> '+maxValue+'</span>');
    })

    // add the data and show container
    //resultsContainer.html(tableData);
    //resultsContainer.fadeIn('fast');
    
    // add the comparison links and names
    addGeographyNames(primaryGeoName);
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

});
