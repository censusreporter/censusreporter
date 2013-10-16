// powers the query builder bar on top of comparison pages

// the template including this should set the following vars:
// var chosenParentGeoID = '{{ parent_id }}',
//     chosenSumlev = '{{ descendant_sumlev }}',
//     chosenRelease = '{{ release }}',
//     chosenTableID = '{{ table.table_id }}',
//     chosenFormat = '{{ format }}';
var currentYear = '2011,2012',
    countsAPI;

var chosenParentGeoID = chosenParentGeoID || null,
    chosenParentName = chosenParentName || null,
    chosenSumlev = chosenSumlev || null,
    chosenSumlevName = chosenSumlevName || null,
    chosenRelease = chosenRelease || null,
    chosenTableID = chosenTableID || null,
    chosenFormat = chosenFormat || 'table';

var getCountsAPI = function() {
    var url = 'http://api.censusreporter.org/1.0/table/compare/rowcounts/' + chosenTableID +
              '?year=' + currentYear  + '&sumlevel=' + chosenSumlev + '&within=' + chosenParentGeoID;

    return url;
};

function getReleaseCounts() {
    countsAPI = getCountsAPI();
    var releaseCounts = [],
        releaseResultCount;

    $.getJSON(countsAPI)
        .done(function(data) {
            $.each(data, function(i) {
                releaseCounts.push(data[i]);
                if (this['release_slug'] == chosenRelease) {
                    releaseResultCount = this['results'];
                }
                if (!!this['results'] && this['results'] > 0) {
                    $("a[data-release-slug='" + this['release_slug'] +"']")
                        .text("Query has " + this['results'] + " results");
                } else {
                    $("a[data-release-slug='" + this['release_slug'] +"']")
                        .text("No matching results")
                        .removeAttr("href").addClass("disabled");
                }
            });
            releaseCounts.sort(function(obj1, obj2) {
                return obj2['results'] - obj1['results'];
            });
            var maxResults = releaseCounts[0]['results'];
            if (releaseResultCount < maxResults) {
                $('#explainer-places-missing').show();
            } else {
                $('#explainer-places-missing').remove();
            }
        });
}

var tableSearchAPI = 'http://api.censusreporter.org/1.0/table/search',
    parentGeoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

var chosens = $('.query-chosen'),
    pickers = $('section[id$="-picker"]');

var topicSelect = $('#topic-select'),
    topicChosen = $('#query-topic .query-chosen'),
    topicFilters = $('#query-topic-picker .filter-list input:checkbox'),
    topicResultNumber = $('#topic-result-number'),
    sumlevSelect = $('#sumlev-select-options'),
    parentSelect = $('#parent-select'),
    geographiesChosen = $('#query-geographies .query-chosen'),
    releaseChosen = $('#query-release .query-chosen'),
    queryGo = $('#query-go .query-chosen');

var populateTopicChosen = function() {
    if (!!chosenTableID) {
        topicChosen.removeClass('highlight');
        topicChosen.find('.hover-hide').remove();
        topicChosen.find('span').addClass('hover-only');
        topicChosen.prepend('<span class="hover-hide">Table ' + chosenTableID + '</span>');
    } else {
        topicChosen.addClass('highlight');
    }
};
var populateGeographiesChosen = function() {
    if (!!chosenSumlevName && !!chosenParentName) {
        geographiesChosen.removeClass('highlight');
        geographiesChosen.find('.hover-hide').remove();
        geographiesChosen.find('span').addClass('hover-only');
        geographiesChosen.prepend('<span class="hover-hide">' + chosenSumlevName + ' in ' + chosenParentName + '</span>');
    } else {
        geographiesChosen.addClass('highlight');
    }
};
var populateReleaseChosen = function() {
    if (!!chosenRelease) {
        releaseChosen.removeClass('highlight');
        releaseChosen.find('.hover-hide').remove();
        releaseChosen.find('span').addClass('hover-only');
        releaseChosen.prepend('<span class="hover-hide">' + releaseNames[chosenRelease]['name'] + '</span>');
    } else {
        releaseChosen.addClass('highlight');
    }
};

var selectedTopicFilterValues = function () {
    return topicFilters.filter(':checked').map(function () {
        return this.value;
    }).get();
};
var selectedSumlev = function () {
    return sumlevSelect.find('.option-selected');
};
var selectedSumlevAncestorValues = function () {
    return selectedSumlev().data('ancestor-list');
};

var triggerAutocompleteWildCardFallback = function(element) {
    if (!!element.val() && element.val() != '*') {
        element.typeahead('setQuery', element.val());
    } else {
        element.typeahead('setQuery', '*').val('');
    }
};

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

    // TODO: only trigger this first time the menu is opened
    //element.on('typeahead:initialized', function() {
    //    triggerAutocompleteWildCardFallback(element);
    //});

    element.on('typeahead:selected', function(obj, datum) {
        closeTabs();
        chosenTableID = datum['table_id'];
        if (!!chosenRelease) {
            getReleaseCounts();
        }
        populateTopicChosen();
        checkComparison();
        topicFilters.prop('checked', false);
        element.typeahead('setQuery', '');
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
                return url += '?q=' + uriEncodedQuery + '&sumlevs=' + selectedSumlevAncestorValues();
            },
            filter: function(response) {
                var results = response.results;
                results.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item['sumlevel']];
                });
                return results;
            }
        },
        limit: 20,
        template: '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>',
        engine: Hogan
    });

    element.on('typeahead:selected', function(obj, datum) {
        closeTabs();
        chosenParentGeoID = datum['full_geoid'];
        chosenParentName = datum['full_name'];
        chosenSumlevName = selectedSumlev().data('plural-name');
        if (!!chosenRelease) {
            getReleaseCounts();
        }
        populateGeographiesChosen();
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

        if (selectedVal !== '') {
            // store the selected sumlev for future api requests
            chosenSumlev = selectedVal;

            // allow selection in parent geography picker
            element.removeProp('disabled');
            var nameOptions = selected.data('ancestor-names'),
                helpText = selected.text() + ' can be compared within ' + nameOptions;
            $('#place-autocomplete-header').text(helpText);
            $('#parent-select').attr('placeholder', 'Choose ' + nameOptions + '...');

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

function updateChosenItem(element, itemText) {
    element.find('.hover-hide').text(itemText);
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
                if (!chosenRelease || !data[chosenRelease]['results'] > 0) {
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
                }

                spinner.spin(spinnerTarget);
                var targetURL = '/compare/' + chosenParentGeoID + '/' + chosenSumlev + '/' + chosenFormat + '/' +
                                '?release=' + chosenRelease + '&table=' + chosenTableID;
                window.location.href = targetURL;
            });
    }
}

function openTabs() {
    pickers.hide();
    chosens.not(queryGo).addClass('tabbed');
}

function closeTabs() {
    pickers.hide();
    chosens.removeClass('tabbed open');
}

jQuery(document).ready(function(){
    populateTopicChosen();
    populateGeographiesChosen();
    populateReleaseChosen();

    if (chosenTableID && currentYear && chosenSumlev && chosenParentGeoID) {
        getReleaseCounts();
    }

    // initial setup for select widgets
    makeTopicSelectWidget(topicSelect);
    makeParentSelectWidget(parentSelect);

    // add hover states to menu
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
        if ((chosen != queryGo) && !chosen.hasClass('disabled')) {
            chosen.toggleClass('open');
            chosens.not(chosen).removeClass('open');

            if (chosen.hasClass('open')) {
                openTabs();
                chosen.parent().next('section').show();
            } else {
                closeTabs();
            }
        }
    });

    // enable the submit if all vectors are full
    queryGo.on('click', function() {
        if (!queryGo.hasClass('disabled')) {
            changeComparison();
        }
    });

    $('#query-release-picker').on('click', 'a', function(e) {
        e.preventDefault();
        chosenRelease = $(this).data('release-slug');
        populateReleaseChosen();
        closeTabs();
        checkComparison();
    });

    // allow users to click outside of open picker menu to close tabs
    $('html').on('click', function() {
        chosens.removeClass('open');
        closeTabs();
    });
    $('#query-builder-bar').click(function(e){
        e.stopPropagation();
    });

    // filter groups for topic picker
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
});
