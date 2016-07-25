String.prototype.capitalizeFirstLetter = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
};

// Function to get URL parameters, i.e., ?q=something
// Usage: getUrlParameter('q')
// Returns true if parameter value does not exist, returns value of
// parameter otherwise.
// http://stackoverflow.com/questions/19491336/get-url-parameter-jquery-or-how-to-get-query-string-values-in-js
function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1));
    var sURLVariables = sPageURL.split('&');
    var sParameterName;

    for (let i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
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
    $("#profiles").children("div").each(function() {
        $(this).css("display", "initial");
    });
    $("#tables").children("div").each(function() {
        $(this).css("display", "initial");
    });
}

$(function() {
    // When user clicks the tabs, reset filters
    $("#filter-tabs li").click(function() {
        resetFilters();
    });
    // When user clicks the sidebar filter options
    $("#filter-profile").click(function() {
        resetFilters();
        $('#filter-tabs a[href="#profiles"]').tab('show');
    });

    $("#filter-table").click(function() {
        resetFilters();
        $('#filter-tabs a[href="#tables"]').tab('show');
    });

    $(".filter-sumlevel_names").click(function(e) {
        // Un-bold all other options
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

        $("#profiles").children("div").each(function() {
            if ($(this).attr("data-sumlevel_name") != chosen_filter) {
                $(this).css("display", "none");
            }
        });

        $('#filter-tabs a[href="#profiles"]').tab('show');
    });

    $(".filter-topics").click(function(e) {
        // Un-bold all other options
        resetFilters();
        // Bold the clicked option
        $(this).css("font-weight", "bold");
        // Don't allow the href="#" default to go to top of page
        e.preventDefault();
        // Get the name of the clicked topic
        var chosen_filter = $(e.target).text().split(" (")[0];

        $("#tables").children("div").each(function() {
            topics_for_this_item = $(this).attr("data-topic").split(", ");
            // Hide result if result does not contain chosen topic
            if (topics_for_this_item.indexOf(chosen_filter) == -1) {
                $(this).css("display", "none");
            }
        });

        $('#filter-tabs a[href="#tables"]').tab('show');
    });
});
