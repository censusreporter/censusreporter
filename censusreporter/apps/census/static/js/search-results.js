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
    $("#all").children("div").each(function() {
        $(this).css("display", "initial");
    });
}

function filterPageType(type) {
    // type - must be "profile" or "table"
    $("#all").children("div").each(function() {
        if ($(this).attr("data-page-type") != type) {
            $(this).css("display", "none");
        }
    });
}

$(function() {
    // When user clicks the tabs, reset filters
    $("#filter-tabs li").click(function(e) {
        resetFilters();
        // Get name of tab that was clicked
        var selected = $(this).children('a')[0].getAttribute("href").substring(1);
        if (selected == "profiles") {
            filterPageType("profile");
        } else if (selected  == "tables") {
            filterPageType("table");
        }
    });

    // When user clicks the sidebar filter options
    $("#filter-profile").click(function(e) {
        // Don't allow the href="#" default to go to top of page
        e.preventDefault();
        resetFilters();
        filterPageType("profile");
        $('#filter-tabs a[href="#profiles"]').tab('show');
    });

    $("#filter-table").click(function(e) {
        // Don't allow the href="#" default to go to top of page
        e.preventDefault();
        resetFilters();
        filterPageType("table");
        $('#filter-tabs a[href="#tables"]').tab('show');
    });

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

        $("#all").children("div").each(function() {
            if (this.getAttribute("data-sumlevel_name") != chosen_filter) {
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

        $("#all").children("div").each(function() {
            topics_for_this_item = this.getAttribute("data-topic");
            // Hide result if result does not contain chosen topic
            if (topics_for_this_item == null ||
                topics_for_this_item.split(", ").indexOf(chosen_filter) == -1) {
                $(this).css("display", "none");
            }
        });

        $('#filter-tabs a[href="#tables"]').tab('show');
    });
});
