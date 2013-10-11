var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    parentGeoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

var topicSelect = $('#topic-select'),
    topicChosen = $('#topic-chosen'),
    topicFilters = $('#topic-picker .filter-list input:checkbox'),
    topicResultNumber = $('#topic-result-number'),
    sumlevSelect = $('#sumlev-select-options'),
    parentSelect = $('#parent-select'),
    geographiesChosen = $('#geographies-chosen'),
    queryGo = $('.go-button');

var currentYear = '2011,2012',
    countsAPI;

var getCountsAPI = function() {
    var url = 'http://api.censusreporter.org/1.0/table/compare/rowcounts/' + chosenTableID
              + '?year=' + currentYear  + '&sumlevel=' + chosenSumlev + '&within=' + chosenParentGeoID;

    return url
}

var selectedTopicFilterValues = function () {
    return topicFilters.filter(':checked').map(function () {
        return this.value;
    }).get();
}
var selectedSumlev = function () {
    return sumlevSelect.find('.option-selected');
}
var selectedSumlevAncestorValues = function () {
    return selectedSumlev().data('ancestor-list');
}

var triggerAutocompleteWildCardFallback = function(element) {
    if (!!element.val() && element.val() != '*') {
        element.typeahead('setQuery', element.val());
    } else {
        element.typeahead('setQuery', '*').val('');
    }
}

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
                var selectedTopics = selectedTopicFilterValues();
                if (selectedTopics.length > 0) {
                    url += '&topics=' + selectedTopics.join(',');
                }
                return url;
            },
            filter: function(response) {
                var resultNumber = response.length;
                topicResultNumber.text(resultNumber + ' matches');
                if (resultNumber == 0) {
                    response.push({
                        table_name: 'Sorry, no matches found. Try removing filters or changing your keyword search.'
                    })
                }
                response.map(function(item) {
                    if (!!item['topics']) {
                        item['topic_string'] = item['topics'].join(', ');
                    }
                });
                return response
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

    //element.on('typeahead:initialized', function() {
    //    triggerAutocompleteWildCardFallback(element);
    //});

    element.on('typeahead:selected', function(obj, datum) {
        if (datum['table_id']) {
            chosenTableID = datum['table_id'];
            updateChosenItem(
                topicChosen,
                '<span class="leader">Data table ' + chosenTableID + ':</span> ' + datum['table_name']
            )
            topicFilters.prop('checked', false);
            checkComparison();
            element.typeahead('setQuery', '');
        }
    });

    topicFilters.on('change', function(e) {
        triggerAutocompleteWildCardFallback(element);
        element.focus();
    });
}

function makeParentSelectWidget(element) {
    element.typeahead('destroy');
    element.prop('disabled', 'disabled');
    element.typeahead({
        name: 'geographies',
        valueKey: 'full_name',
        remote: {
            url: parentGeoSearchAPI,
            replace: function (url, uriEncodedQuery) {
                return url += '?q=' + uriEncodedQuery + '&sumlevs=' + selectedSumlevAncestorValues()
            },
            filter: function(response) {
                response.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item['sumlevel']]
                });
                return response
            }
        },
        limit: 20,
        template: '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>',
        engine: Hogan
    });

    element.on('typeahead:selected', function(obj, datum) {
        chosenParentGeoID = datum['full_geoid'];
        updateChosenItem(
            geographiesChosen,
            '<span class="leader">Geographies:</span> All <strong>' + selectedSumlev().data('plural-name') + '</strong> within <strong>' + datum['full_name'] + '</strong>'
        )
        checkComparison();
        sumlevSelect.find('a').removeClass('option-selected');
        element.typeahead('setQuery', '');
    });

    // when user chooses a sumlev to compare, limit possible
    // autocomplete options for parent/containing geography
    sumlevSelect.on('click', 'a', function(e) {
        e.preventDefault();
        var selected = $(this);
        var selectedVal = selected.data('value');
        sumlevSelect.find('a').removeClass('option-selected');
        selected.addClass('option-selected');
        
        if (selectedVal != '') {
            // store the selected sumlev for future api requests
            chosenSumlev = selectedVal;

            // allow selection in parent geography picker
            element.removeProp('disabled');
            var nameOptions = selected.data('ancestor-names'),
                helpText = selected.text() + ' can be compared within ' + nameOptions;
            $('#place-autocomplete-header').text(helpText);
            $('#parent-select').attr('placeholder', 'Type to search for places...');
            
            // auto-fill 'United States' if that's only possible choice
            if (selectedVal == '040') {
                element.typeahead('setQuery', 'United States');
            } else {
                element.typeahead('setQuery', element.val());
            }
        } else {
            element.prop('disabled', 'disabled');
        }
        
        element.focus();
    });
}

function insertHelpText(element, message) {
    element.find('.help-text').remove();
    element.append('<span class="help-text">' + message + '</span>');
}

function openItemChoices(element, itemText) {
    element.before('<h2 class="picker-header">' + itemText + '</h2>');
    element.hide();
    element.parent('section').next('section').fadeIn('fast');
}

function updateChosenItem(element, itemText) {
    var html = [
        '<a href="#" class="change-button change-choice">Change</a>',
        '<p>' + itemText + '</p>'
    ].join('');

    element.siblings('.picker-header').hide();
    element.html(html).addClass('chosen').fadeIn('fast', function() {
        element.parent().next('section').fadeOut(50);
    });
}

function changeChosenItem(element) {
    var element = $(element);
    var picker = element.parent().next('section');
    var autocomplete = picker.find('input[id$=-select]');

    autocomplete.typeahead('setQuery', '*').val('');

    picker.fadeIn(50, function(){
        element.fadeOut('fast').html('').removeClass('chosen');
        element.siblings('.picker-header').show();
    });
}

// prepare ajax spinners
$('body').append('<div id="body-spinner"></div>');
var spinnerTarget = document.getElementById('body-spinner');
    spinner = new Spinner();

$(document).ajaxSend(function(event, request, settings) {
    spinner.spin(spinnerTarget)
});
$(document).ajaxComplete(function(event, request, settings) {
    spinner.stop()
});

var chosenRelease,
    chosenTableID,
    chosenParentGeoID,
    chosenSumlev
    chosenFormat = 'table';

function checkComparison() {
    if (chosenTableID && currentYear && chosenSumlev && chosenParentGeoID) {
        queryGo.removeClass('disabled').addClass('go');
    }
}

function changeComparison() {
    if (chosenTableID && currentYear && chosenSumlev && chosenParentGeoID) {
        // if chosen release would return 0 results given the selected table
        // and geographies, fall back to the release with the most results
        countsAPI = getCountsAPI();
        $.getJSON(countsAPI)
            .done(function(data) {
                dataValues = [];
                $.each(data, function(i) {
                    dataValues.push(data[i]);
                });
                // sort more recent years to top
                dataValues.sort(function(obj1, obj2) {
                    return obj2['release_name'].split(' ')[1] > obj1['release_name'].split(' ')[1];
                });
                // then sort by number of results
                dataValues.sort(function(obj1, obj2) {
                    return obj2['results'] - obj1['results'];
                });
                chosenRelease = dataValues[0]['release_slug'];

                spinner.spin(spinnerTarget);
                var targetURL = '/compare/' + chosenParentGeoID + '/' + chosenSumlev + '/' + chosenFormat + '/'
                                + '?release=' + chosenRelease + '&table=' + chosenTableID;
                window.location.href = targetURL;
            });
    }
}

function makeAPIRequest() {
    chosenTableID = topicSelect.data('table-id');
    chosenParentGeoID = parentSelect.data('parent-geoid');
    chosenSumlev = selectedSumlev().val();

    if (!!chosenTableID && !!chosenParentGeoID && !!chosenSumlev) {
        // get rowcounts from each of the current ACS releases
        // for this table/sumlev/parent combination
        var currentYear = '2011';
        var getCountsAPI = 'http://api.censusreporter.org/1.0/table/compare/rowcounts/' +
                            chosenTableID + '?year=' + currentYear  + '&sumlevel=' + chosenSumlev +
                            '&within=' + chosenParentGeoID;

        var counts = $.getJSON(getCountsAPI)
            .done(function(data) {
                dataValues = [];
                $.each(data, function(i) {
                    dataValues.push(data[i]);
                });

                // choose the release with the most results
                dataValues.sort(function(obj1, obj2) {
                    return obj2['results'] - obj1['results'];
                });
                chosenRelease = dataValues[0]['release_slug'];
                sendToComparison(chosenParentGeoID, chosenSumlev, chosenRelease, chosenTableID);

                //data[0]['active'] = 'active';
                //fetchAPIData(chosenRelease, chosenTableID, chosenSumlev, chosenParentGeoID);

                // display results by release
                //showReleaseOptions(data);
            });
    }
}

function sendToComparison(chosenParentGeoID, chosenSumlev, chosenRelease, chosenTableID) {
    var targetURL = '/compare/' + chosenParentGeoID + '/' + chosenSumlev + '/table/';
    targetURL += '?release=' + chosenRelease + '&table=' + chosenTableID;
    window.location.href = targetURL;
}

function showReleaseOptions(data) {
    var releaseOptions = $('#release-options'),
        releaseOptionsList = '';

    $.each(data, function() {
        releaseOptionsList += [
            '<a class="release-option column-third ' + this['active'] + '" data-release-slug="' + this['release_slug'] + '">',
            '<h3>' + this['release_name'] + '</h3>',
            '<p>' + this['results'] + ' results</p>',
            '</a>'
        ].join('');
    });

    releaseOptions.html(releaseOptionsList);
    releaseOptions.on('click', '.release-option', function(e) {
        e.preventDefault();
        var chosenOption = $(this);
        chosenOption.addClass('active').siblings().removeClass('active');
        chosenRelease = chosenOption.data('release-slug');
        fetchAPIData(chosenRelease, chosenTableID, chosenSumlev, chosenParentGeoID);
    });

}

function fetchAPIData(chosenRelease, chosenTableID, chosenSumlev, chosenParentGeoID) {
    var getDataAPI = 'http://api.censusreporter.org/1.0/data/compare/' +
                      chosenRelease + '/' + chosenTableID + '?sumlevel=' + chosenSumlev +
                      '&within=' + chosenParentGeoID + '&geom=true';

    var displayURL = 'Download as JSON: <a href="' + getDataAPI + '">' + getDataAPI + '</a>'
    $('#api-url').hide().html(displayURL).addClass('centered').fadeIn('fast');

    var results = $.getJSON(getDataAPI)
        .done(function(data) {
            var strData = (JSON.stringify(data, null, 4));
            $('#results').text(strData).fadeIn('fast');
        });
}

jQuery(document).ready(function(){
    $('#results').hide();

    // initial setup for select widgets
    makeTopicSelectWidget(topicSelect);
    makeParentSelectWidget(parentSelect);

    // handle form values that browser may have held onto
    if (!!selectedSumlev().val()) {
        sumlevSelect.trigger('change');
    }
    topicFilters.filter(':checked').closest('.filter-group').addClass('open');

    // enable the submit if all vectors are full
    queryGo.on('click', function() {
        if (!queryGo.hasClass('disabled')) {
            changeComparison();
        }
    })
    
    $('#query-builder').on('click', '.step-explainer .explainer', function(e) {
        e.preventDefault();
        var clicked = $(this);
        openItemChoices(clicked, clicked.find('.choices-open').text());
    });
    $('#query-builder').on('click', '.chosen', function(e) {
        e.preventDefault();
        changeChosenItem($(this));
    });
    $('.filter-groups').on('click', '.filter-group-title', function(e) {
        e.preventDefault();
        var chosenGroup = $(this).parent();
        chosenGroup.toggleClass('open');
        chosenGroup.find('i[class^="icon-"]').toggleClass('icon-chevron-sign-down icon-chevron-sign-up');
    });
})