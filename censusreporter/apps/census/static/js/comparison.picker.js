// powers the query builder bar on top of comparison pages

// the template including this should set the following vars:
// var chosenParentGeoID = '{{ parent_id }}',
//     chosenSumlev = '{{ descendant_sumlev }}',
//     chosenRelease = '{{ release }}',
//     chosenTableID = '{{ table.table_id }}',
//     chosenFormat = '{{ format }}';
var currentYear = '2011',
    countsAPI;

var getCountsAPI = function() {
    var url = 'http://api.censusreporter.org/1.0/table/compare/rowcounts/' + chosenTableID
              + '?year=' + currentYear  + '&sumlevel=' + chosenSumlev + '&within=' + chosenParentGeoID;

    return url
}

function getReleaseCounts() {
    countsAPI = getCountsAPI();
    $.getJSON(countsAPI)
        .done(function(data) {
            $.each(data, function() {
                if (!!this['results'] && this['results'] > 0) {
                    $("a[data-release-slug='" + this['release_slug'] +"']")
                        .text("Show " + this['results'] + " results");
                } else {
                    $("a[data-release-slug='" + this['release_slug'] +"']")
                        .text("No matching results")
                        .removeAttr("href").addClass("disabled");
                }
            });
        });
}

var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    parentGeoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

var chosens = $('.query-chosen'),
    pickers = $('section[id$="-picker"]');

var topicSelect = $('#topic-select'),
    topicChosen = $('#query-topic'),
    topicFilters = $('#query-topic-picker .filter-list input:checkbox'),
    topicResultNumber = $('#topic-result-number'),
    sumlevSelect = $('#sumlev-select-options'),
    parentSelect = $('#parent-select'),
    geographiesChosen = $('#query-geographies');

var selectedTopicFilterValues = function () {
    return topicFilters.filter(':checked').map(function () {
        return this.value;
    }).get();
}
var selectedSumlev = function () {
    return sumlevSelect.find('option:selected');
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
        template: [//{% verbatim %}
            '{{#table_id}}<h5 class="result-type">{{#column_name}}Column in {{/column_name}}Table {{table_id}}</h5>{{/table_id}}',
            '<p class="result-name">{{simple_table_name}}</p>',
            '{{#column_name}}<p class="caption"><strong>Column name:</strong> {{column_name}}</p>{{/column_name}}',
            '{{#topic_string}}<p class="caption"><strong>Table topics:</strong> {{topic_string}}</p>{{/topic_string}}'//{% endverbatim %}
        ].join(''),
        engine: Hogan
    });

    // TODO: only trigger this first time the menu is opened
    //element.on('typeahead:initialized', function() {
    //    triggerAutocompleteWildCardFallback(element);
    //});

    element.on('typeahead:selected', function(obj, datum) {
        closeTabs();
        chosenTableID = datum['table_id'];
        updateChosenItem(
            topicChosen,
            'Topic',
            'Table ' + chosenTableID
        );
        changeComparison();
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
        closeTabs();
        chosenParentGeoID = datum['full_geoid'];
        updateChosenItem(
            geographiesChosen,
            'Geographies',
            'All ' + selectedSumlev().data('plural-name') + ' within ' + datum['full_name']
        );
        changeComparison();
    });

    // when user chooses a sumlev to compare, limit possible
    // autocomplete options for parent/containing geography
    sumlevSelect.on('change', function(e) {
        var selected = selectedSumlev();
        var selectedVal = selected.val();

        if (selectedVal != '') {
            // store the selected sumlev for future api requests
            chosenSumlev = selectedVal;

            // allow selection in parent geography picker
            element.removeProp('disabled');
            var helpText = selected.text() + ' can be compared within a ' + selected.data('ancestor-names') + '.';
            insertHelpText(selected.closest('.filter-groups'), helpText);
            
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

function updateChosenItem(element, itemTitle, itemText) {
    var html = '<h3 class="leader">' + itemTitle + '</h3>' + itemText;
    
    element.html(html).addClass('chosen').fadeIn('fast', function() {
        element.parent().next('section').fadeOut(50);
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

function changeComparison() {
    spinner.spin(spinnerTarget)

    // if chosen release would return 0 results given the selected table
    // and geographies, fall back to the release with the most results
    countsAPI = getCountsAPI();
    $.getJSON(countsAPI)
        .done(function(data) {
            if (!data[chosenRelease]['results'] > 0) {
                dataValues = [];
                $.each(data, function(i) {
                    dataValues.push(data[i]);
                });
                dataValues.sort(function(obj1, obj2) {
                    return obj2['results'] - obj1['results'];
                });
                chosenRelease = dataValues[0]['release_slug'];
            }

            var targetURL = '/compare/' + chosenParentGeoID + '/' + chosenSumlev + '/' + chosenFormat + '/'
                            + '?release=' + chosenRelease + '&table=' + chosenTableID;
            window.location.href = targetURL;
        });
}

function openTabs() {
    pickers.hide();
    chosens.addClass('tabbed');
}

function closeTabs() {
    pickers.hide();
    chosens.removeClass('tabbed');
}

jQuery(document).ready(function(){
    getReleaseCounts();

    // initial setup for select widgets
    makeTopicSelectWidget(topicSelect);
    makeParentSelectWidget(parentSelect);

    chosens.hover(
        function() {
            $(this).addClass('hovered');
        },
        function() {
            $(this).removeClass('hovered');
        }
    );

    // query builder bar for adjusting table/geographies/release
    $('#query-builder-bar').on('click', '.query-chosen', function() {
        var chosen = $(this);
        chosen.toggleClass('open').siblings('.query-chosen').removeClass('open');

        // if this is the table search, *now* run the initial autocomplete query
        if (chosen.attr('id') == 'query-topic') {
            triggerAutocompleteWildCardFallback(topicSelect);
        }

        if (chosen.hasClass('open')) {
            openTabs();
            chosen.next('section').show();
        } else {
            closeTabs();
        }
    })

    //
    $('.filter-groups').on('click', '.filter-group-title', function(e) {
        e.preventDefault();
        var chosenGroup = $(this).parent();
        chosenGroup.toggleClass('open');
        chosenGroup.find('i[class^="icon-"]').toggleClass('icon-chevron-sign-down icon-chevron-sign-up');
    });
    
    // download submenu
    $('.toggle-sub-group').hover(function() {
        $(this).find('.sub-group').toggle();
        $(this).find('a').toggleClass('hovered');
    });
})
