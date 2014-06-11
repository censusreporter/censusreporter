var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

var topicSelect = $('#topic-select'),
    topicSelectContainer = $('#explore-topic-picker'),
    placeSelect = $('#topic-place-select'),
    placeSelectContainer = $('#explore-topic-place-picker'),
    parentSelect = $('#topic-place-select-parent'),
    parentSelectContainer = $('#explore-topic-place-picker-parent'),
    chosenTableID,
    chosenSumlev,
    chosenSumlevPluralName,
    chosenSumlevAncestorList = '010,020,030,040,050,060,160,250,310,500,610,620,860,950,960,970',
    chosenSumlevAncestorOptions,
    chosenGeoID;

var topicSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 1500,
    remote: {
        url: tableSearchAPI,
        replace: function (url, query) {
            return url += '?q=' + query;
        },
        filter: function(response) {
            var resultNumber = response.length;
            if (resultNumber === 0) {
                response.push({
                    table_name: 'Sorry, no matches found. Try changing your search.'
                });
            }
            _.map(response, function(item) {
                if (!!item['topics']) {
                    item['topic_string'] = item['topics'].join(', ');
                }
            });
            return response;
        }
    }
});
topicSelectEngine.initialize();

var placeSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: geoSearchAPI,
        replace: function (url, query) {
            return url += '?q=' + query + '&sumlevs=' + chosenSumlevAncestorList;
        },
        filter: function(response) {
            var resultNumber = response.length;
            if (resultNumber === 0) {
                response.push({
                    table_name: 'Sorry, no matches found. Try changing your search.'
                });
            }
            var results = response.results;
            _.map(results, function(item) {
                item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
            });
            return results;
        }
    }
});
placeSelectEngine.initialize();

var sumlevSelectEngine = new Bloodhound({
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
sumlevSelectEngine.initialize();

// hide the geography stuff to start
placeSelectContainer.hide();
parentSelectContainer.hide();

function makeTopicSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'topics',
        displayKey: 'simple_table_name',
        source: topicSelectEngine.ttAdapter(),
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
        chosenTableID = datum['table_id'];
        if (!!chosenTableID) {
            window.location.href = '/tables/' + chosenTableID + '/'
        }
        
        // ORGINAL 1-2-3 version of this widget
        //makePlaceSelectWidget(placeSelect);
        //placeSelectContainer.slideDown();
        //placeSelect.focus();
        //$('#explore-callouts').hide();
        //topicFilters.prop('checked', false);
    });
}

function makePlaceSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'summary_levels',
        displayKey: 'plural_name',
        source: sumlevSelectEngine.ttAdapter(),
        templates: {
            header: '<h2>Summary levels</h2>',
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev}}</span>{{plural_name}}</p>'
            )
        }
    }, {
        name: 'geographies',
        displayKey: 'full_name',
        source: placeSelectEngine.ttAdapter(),
        templates: {
            header: '<h2>Geographies</h2>',
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        if (!datum['full_geoid'] && !!datum['sumlev']) {
            chosenSumlev = datum['sumlev'];
            chosenSumlevPluralName = datum['plural_name'];
            chosenSumlevAncestorList = datum['ancestor_sumlev_list'],
            chosenSumlevAncestorOptions = datum['ancestor_options'];
            parentSelectContainer.find('.help-text').text(
                'Select a place to explore your chosen summary level. ' + capitalize(chosenSumlevPluralName) + ' can be compared within ' + chosenSumlevAncestorOptions + '.'
            );
            makeParentSelectWidget(parentSelect);
            if (chosenSumlev == '040') {
                parentSelect.typeahead('val', 'United States');
            }
            parentSelectContainer.slideDown();
            parentSelect.focus();
        } else if (!!datum['full_geoid']) {
            chosenGeoID = datum['full_geoid'];
            sendToDataView(chosenTableID, chosenGeoID);
        }
    });
}

function makeParentSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'geographies',
        displayKey: 'full_name',
        source: placeSelectEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        chosenGeoID = datum['full_geoid'];
        if (!!chosenGeoID) {
            sendToDataView(chosenTableID, chosenGeoID, chosenSumlev);
        }
    });
}

function sendToDataView(chosenTableID, chosenGeoID, chosenSumlev) {
    var theseGeoIDs = (!!chosenSumlev) ? chosenSumlev + '|' + chosenGeoID : chosenGeoID,
        targetURL = '/data/table/?table=' + chosenTableID + '&geo_ids=' + theseGeoIDs + '&primary_geo_id=' + chosenGeoID;
    window.location.href = targetURL;
}

jQuery(document).ready(function(){
    makeTopicSelectWidget(topicSelect);
    $("#explore").on('click', '#change-table', function(e) {
        e.preventDefault();
        $('#explore-topic-metadata').remove();
        $('#explore-callouts').show();
        placeSelectContainer.hide()
        parentSelectContainer.hide()
        topicSelectContainer.toggle();
        topicSelect.focus();
    });
});