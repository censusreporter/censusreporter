var table = {
        tableID: tableID,
        geoIDs: [],
        aside: d3.select('aside'),
        chosenSumlevAncestorList: '010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970'
    },
    geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

table.geoSelectEngine = new Bloodhound({
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
            console.log(results)
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
        {name: 'voting tabulation district', plural_name: 'voting tabulation districts', sumlev: '700', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'elementary school district', plural_name: 'elementary school districts', sumlev: '950', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'secondary school district', plural_name: 'secondary school districts', sumlev: '960', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'unified school district', plural_name: 'unified school districts', sumlev: '970', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county'}
    ]
});

table.makeGeoSelectWidget = function() {
    table.geoSelectEngine.initialize();
    table.sumlevSelectEngine.initialize();

    table.geoSelectContainer = table.aside.append('div')
        .attr('class', 'search')
        .attr('id', 'comparison-add');

    table.geoSelectContainer.append('p')
        .attr('class', 'bottom display-type strong')
        .attr('id', 'comparison-add-header')
        .text('Show this data for places');

    table.geoSelectContainer.append('input')
        .attr('name', 'geography_add')
        .attr('id', 'geography-add')
        .attr('type', 'text')
        .attr('placeholder', 'Find a place')
        .attr('autocomplete', 'off');

    var element = $('#geography-add');
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
        source: table.geoSelectEngine.ttAdapter(),
        templates: {
            header: '<h2>Geographies</h2>',
            suggestion: Handlebars.compile(
                '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
            )
        }
    });

    element.on('typeahead:selected', function(event, datum) {
        event.stopPropagation();

        if (!datum['full_geoid']) {
            // we have a sumlev choice, so provide a parent input
            table.chosenSumlev = datum['sumlev'];
            table.chosenSumlevPluralName = datum['plural_name'];
            table.chosenSumlevAncestorList = datum['ancestor_sumlev_list'],
            table.chosenSumlevAncestorOptions = datum['ancestor_options'];

            table.makeParentSelectWidget();
            $('#geography-add-parent-container').slideDown();
            $('#geography-add-parent').focus();
        } else {
            // we have a geoID, so add it
            table.geoIDs.push(datum['full_geoid']);

            var url = table.buildComparisonURL(
                'table', table.tableID, table.geoIDs
            );
            window.location = url;
        }
        // TODO: pushState to maintain history without page reload
    });
}

table.makeParentSelectWidget = function() {
    var parentContainer = table.geoSelectContainer.append('div')
            .attr('id', 'geography-add-parent-container')
            .classed('hidden', true);

    parentContainer.append('p')
            .attr('class', 'bottom display-type strong')
            .html('&hellip; in &hellip;');
    
    parentContainer.append('input')
            .attr('name', 'geography_add_parent')
            .attr('id', 'geography-add-parent')
            .attr('type', 'text')
            .attr('placeholder', 'Find a place')
            .attr('autocomplete', 'off');
            
    parentContainer.append('p')
            .attr('class', 'display-type')
            .text(table.capitalize(table.chosenSumlevPluralName) + ' can be compared within ' + table.chosenSumlevAncestorOptions + '.');

    var element = $('#geography-add-parent');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'geographies',
        displayKey: 'full_name',
        source: table.geoSelectEngine.ttAdapter(),
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
        var geoGroup = table.chosenSumlev + '|' + datum['full_geoid']
        table.geoIDs.push(geoGroup);
        table.primaryGeoID = datum['full_geoid'];

        var url = table.buildComparisonURL(
            'table', table.tableID, table.geoIDs, table.primaryGeoID
        );
        window.location = url;
        // TODO: pushState to maintain history without page reload
    });
}

table.capitalize = function(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

table.buildComparisonURL = function(dataFormat, tableID, geoIDs, primaryGeoID) {
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
table.makeGeoSelectWidget();