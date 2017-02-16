String.prototype.capitalizeFirstLetter = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
};

function getMaxPageType(maxResults) {
    let maxCount = 0;
    let maxType = 'profile';
    for (var key in maxResults) {
        if (maxResults.hasOwnProperty(key)) {
            if (maxResults[key] > maxCount) {
                maxCount = maxResults[key];
                maxType = key;
            }
        }
    }
    return maxType;
}

function filterPageType(pageType) {
   $("#" + pageType + '-results').children("div").each(function() {
        if ($(this).attr("data-page-type") != type) {
            $(this).css("display", "none");
        }
    });
}

function switchTabs(pageType) {
    $('.tab').removeClass('active-tab');
    $('#' + pageType + '-tab').addClass('active-tab');

    $('.tab-body').removeClass('active-tab-body');
    $('#' + pageType + '-results').addClass('active-tab-body');
}

function resetFilters() {
    // Un-bold filters
    $("#sumlevel_names-list").children('li').each(function() {
        $(this).children('a').css("font-weight", "initial");
    });
    $("#topics-list").children('li').each(function() {
        $(this).children('a').css("font-weight", "initial");
    });

    // Un-hide results
    $(".tab-body").children("div").each(function() {
        $(this).css("display", "initial");
    });
}

$(function() {
    // On page load, determine which tab contains the most results,
    // then make that tab active.
    var result_counts = {
        profile: $('#profile-results').children('div').length,
        table: $('#table-results').children('div').length,
        address: $('#address-results').children('div').length,
        topic: $('#topic-results').children('div').length
    };
    maxCountPage = getMaxPageType(result_counts);
    $("#" + maxCountPage + '-results').addClass("active-tab-body");
    $("#" + maxCountPage + '-tab').addClass("active-tab");

    // Tab switching
    $('.tab, #filter-profile, #filter-table, #filter-address, #filter-topic').click(function() {
        resetFilters();
        selectedType = $(this).attr('data-page-type');
        switchTabs(selectedType);
    });

    // When user clicks the sidebar filter options
    $(".filter-sumlevel_names").click(function(e) {
        resetFilters();
        // Bold the clicked option
        $(this).css("font-weight", "bold");
        // Don't allow the href="#" default to go to top of page
        e.preventDefault();
        // Get the name of the clicked sumlevel
        // We split the string on " (" and grab the first item because the link
        // has a count in parenthesis after the actual sumlevel_name.
        // Example: State (2)
        var chosen_filter = $(e.target).text().split(" (")[0];

        $("#profile-results").children("div").each(function() {
            if (this.getAttribute("data-sumlevel_name") != chosen_filter) {
                $(this).css("display", "none");
            }
        });

        switchTabs('profile');
    });

    $(".filter-topics").click(function(e) {
        resetFilters();
        // Bold the clicked option
        $(this).css("font-weight", "bold");
        // Don't allow the href="#" default to go to top of page
        e.preventDefault();
        // Get the name of the clicked topic
        var chosen_filter = $(e.target).text().split(" (")[0];

        $("#table-results").children("div").each(function() {
            topics_for_this_item = this.getAttribute("data-topic");
            // Hide result if result does not contain chosen topic
            if (topics_for_this_item == null ||
                topics_for_this_item.split(", ").indexOf(chosen_filter) == -1) {
                $(this).css("display", "none");
            }
        });

        switchTabs('table');
    });
});
