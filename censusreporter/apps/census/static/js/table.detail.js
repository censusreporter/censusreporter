function Table(options) {
    var table = {
        geoIDs: [],
        tableSearchAPI: 'http://api.censusreporter.org/1.0/table/search',
        geoSearchAPI: 'http://api.censusreporter.org/1.0/geo/search',
        chosenSumlevAncestorList: '010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970'
    }

    table.init = function(options) {
        table.tableID = options.tableID;
        table.$topicSelect = $(options.topicSelect);
        table.$topicSelectContainer = $(options.topicSelectContainer);
        table.$displayHeader = $(options.displayHeader);
        table.$displayWrapper = $(options.displayWrapper);
        table.$pageWrapper = $('#table');
        table.$geoSelectContainer = $('#explore');
        table.$placeSelect = $('#topic-place-select');
        table.$placeSelectContainer = $('#explore-topic-place-picker');
        table.$parentSelect = $('#topic-place-select-parent');
        table.$parentSelectContainer = $('#explore-topic-place-picker-parent');
        
        // make the side preview expand and collapse
        table.makePreviewExpander();
    
        // add the "change table" widget and listener
        table.makeTopicSelectWidget();

        table.$parentSelectContainer.hide();
        table.makePlaceSelectWidget();
        table.$placeSelect.focus();
    
        return table;
    }

    table.makePreviewExpander = function() {
        var previewTable = d3.select('.preview-table ul');
        if (previewTable.empty()) { return; }

        var previewCollapsedHeight = '135px',
            previewExpandText = 'Show all preview columns &#x25BC;',
            previewFullHeight = previewTable.node().offsetHeight + 'px';

        previewTable
            .style('overflow', 'hidden')
            .style('height', previewCollapsedHeight);
    
        var previewTableToggleControl = d3.select('.preview-table')
            .append('a')
                .classed('expand-preview', true)
                .attr('href', '#')
                .html(previewExpandText)
                .on('click', function() {
                    previewTableToggle();
                })

        var previewTableToggle = function() {
            d3.event.preventDefault();
            if (previewTable.classed('open')) {
                previewTableAnimate(false, previewCollapsedHeight);
            } else {
                previewTableAnimate(true, previewFullHeight);
            }
        }

        var previewTableAnimate = function(toOpen, targetHeight) {
            previewTable
                .classed('open', toOpen)
                .transition()
                .duration(500)
                .style('height', targetHeight);
    
            var toggleText = (toOpen) ? 'Collapse preview columns &#x25B2;' : previewExpandText;
            previewTableToggleControl.html(toggleText);
        }
    
        return table
    }

    table.topicSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 1500,
        remote: {
            url: table.tableSearchAPI,
            replace: function (url, query) {
                url += '?';
                if (query) {
                    url += 'q=' + query;
                }
                return url;
            },
            filter: function(response) {
                var resultNumber = response.length;
                if (resultNumber === 0) {
                    response.push({
                        table_name: 'Sorry, no matches found. Try changing your search.'
                    });
                }
                response.map(function(item) {
                    if (!!item['topics']) {
                        item['topic_string'] = item['topics'].join(', ');
                    }
                });
                return response;
            }
        }
    });
    
    table.makeTopicSelectWidget = function() {
        table.$displayWrapper.find('h1')
            .append('<a href="#" id="change-table">Change</a>');

        table.topicSelectEngine.initialize();

        var element = table.$topicSelect;
        
        element.typeahead('destroy');
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'topics',
            displayKey: 'simple_table_name',
            source: table.topicSelectEngine.ttAdapter(),
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
            table.tableID = datum['table_id'];
            if (!!table.tableID) {
                window.location = '/tables/'+table.tableID;
            }
        });
        
        // standard listeners
        table.$pageWrapper.on('click', '#change-table, #cancel-search', function(e) {
            e.preventDefault();
            table.toggleTableSearch();
        });
        
        return table;
    }

    table.toggleTableSearch = function() {
        table.$displayHeader.toggle();
        table.$displayWrapper.toggle();
        table.$geoSelectContainer.toggle();
        table.$topicSelectContainer.toggle();
        table.$topicSelect.focus();
    }
    
    table.placeSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 20,
        remote: {
            url: geoSearchAPI,
            replace: function (url, query) {
                return url += '?q=' + query + '&sumlevs=' + table.chosenSumlevAncestorList;
            },
            filter: function(response) {
                var results = response.results;
                results.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
                });
                return results;
            }
        }
    });

    table.sumlevSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.plural_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        local: [
            {name: 'state', plural_name: 'states', sumlev: '040', ancestor_sumlev_list: '010,020,030', ancestor_options: 'the United States, a region or division' },
            {name: 'county', plural_name: 'counties', sumlev: '050', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
            {name: 'county subdivision', plural_name: 'county subdivisions', sumlev: '060', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
            {name: 'place', plural_name: 'places', sumlev: '160', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
            {name: 'metro area', plural_name: 'metro areas', sumlev: '310', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
            {name: 'native area', plural_name: 'native areas', sumlev: '250', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
            {name: 'census tract', plural_name: 'census tracts', sumlev: '140', ancestor_sumlev_list: '010,020,030,040,050,160', ancestor_options: 'the United States, a region, division, state, county or place' },
            {name: 'block group', plural_name: 'block groups', sumlev: '150', ancestor_sumlev_list: '010,020,030,040,050,140,160', ancestor_options: 'the United States, a region, division, state, county, place or census tract' },
            {name: 'zip codes', plural_name: 'ZIP codes', sumlev: '860', ancestor_sumlev_list: '010,020,030,040,050,160', ancestor_options: 'the United States, a region, division, state, county or place' },
            {name: 'congressional district', plural_name: 'congressional districts', sumlev: '500', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
            {name: 'state senate district', plural_name: 'state senate districts', sumlev: '610', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
            {name: 'state house district', plural_name: 'state house districts', sumlev: '620', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
            {name: 'elementary school district', plural_name: 'elementary school districts', sumlev: '950', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
            {name: 'secondary school district', plural_name: 'secondary school districts', sumlev: '960', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
            {name: 'unified school district', plural_name: 'unified school districts', sumlev: '970', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county'}
        ]
    });

    table.makePlaceSelectWidget = function() {
        table.placeSelectEngine.initialize();
        table.sumlevSelectEngine.initialize();

        var element = table.$placeSelect;
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'summary_levels',
            displayKey: 'plural_name',
            source: table.sumlevSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Summary levels</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{plural_name}}<span class="result-type">{{sumlev}}</span></p>'
                )
            }
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: table.placeSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();

            if (!datum['full_geoid'] && !!datum['sumlev']) {
                // we have a sumlev choice, so provide a parent input
                table.chosenSumlev = datum['sumlev'];
                table.chosenSumlevPluralName = datum['plural_name'];
                table.chosenSumlevAncestorList = datum['ancestor_sumlev_list'],
                table.chosenSumlevAncestorOptions = datum['ancestor_options'];

                table.makeParentSelectWidget();
                if (table.chosenSumlev == '040') {
                    table.$parentSelect.typeahead('val', 'United States');
                }
                table.$parentSelectContainer.slideDown();
                table.$parentSelect.focus();
            } else if (!!datum['full_geoid']) {
                // we have a geoID, so add it
                table.geoIDs.push(datum['full_geoid']);

                var url = table.buildDataURL(
                    'table', table.tableID, table.geoIDs, datum['full_geoid']
                );
                window.location = url;
            }
        });
    }

    table.makeParentSelectWidget = function() {
        var element = table.$parentSelect;
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: table.placeSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        if (table.chosenSumlev == '040') {
            element.typeahead('val', 'United States');
        }

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();
            if (!!datum['full_geoid']) {
                var geoGroup = table.chosenSumlev + '|' + datum['full_geoid']
                table.geoIDs.push(geoGroup);
                table.primaryGeoID = datum['full_geoid'];

                var url = table.buildDataURL(
                    'table', table.tableID, table.geoIDs, table.primaryGeoID
                );
                window.location = url;
            }
        });
    }

    table.capitalize = function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }

    table.buildDataURL = function(dataFormat, tableID, geoIDs, primaryGeoID) {
        // pass in vars rather than use them from table object
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

    table.init(options);
    return table;
}
