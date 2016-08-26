String.prototype.capitalizeFirstLetter = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
};

function getKeyOfMaxValue(obj) {
    // Works for values greater than 0.
    var max_val = 0;
    var max_key = "";
    for (var key in obj) {
        if (obj.hasOwnProperty(key)) {
            if (obj[key] > max_val) {
                max_val = obj[key];
                max_key = key;
            }
        }
    }
    return max_key;
}

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
    // Un-bold page types
    $("#filters > a").css("font-weight", "initial");

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
    $("#all").children("div").each(function() {
        if ($(this).attr("data-page-type") != type) {
            $(this).css("display", "none");
        }
    });

    $("#filter-" + type).css("font-weight", "bold");
}


$(function() {
    // On page load, determine which tab contains the most results,
    // then make that tab active.
    var result_counts = {
        profile: 0,
        table: 0,
        address: 0,
        topic: 0
    };
    $("#all").children("div").each(function() {
        if ($(this).attr('data-page-type') == "profile") {
            result_counts['profile']++;
        } else if ($(this).attr('data-page-type') == "table") {
            result_counts['table']++;
        } else if ($(this).attr('data-page-type') == "address") {
            result_counts['address']++;
        } else if ($(this).attr('data-page-type') == "topic") {
            result_counts['topic']++;
        }
    });

    max_count_page = getKeyOfMaxValue(result_counts);
    $("#tab-" + max_count_page).addClass("active");
    filterPageType(max_count_page);

    // When user clicks the tabs, reset filters
    $("#filter-tabs li").click(function(e) {
        resetFilters();
        // Get name of tab that was clicked
        var selected = $(this).children('a')[0].getAttribute("href").substring(1);
        filterPageType(selected);
    });

    // When user clicks the sidebar filter options
    $("#filters > a").click(function(e) {
        // Don't allow the href="#" default to go to top of page
        e.preventDefault();
        resetFilters();
        var page_type = $(this).attr("data-filter-type")
        filterPageType(page_type);
        $('#filter-tabs a[href="#' + page_type + '"]').tab('show');
    });

    $(".filter-sumlevel_names").click(function(e) {
        resetFilters();
        // Bold the clicked option
        $(this).css("font-weight", "bold");
        // Bold the profile page option
        $("#filter-profile").css("font-weight", "bold");
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

        $('#filter-tabs a[href="#profile"]').tab('show');
    });

    $(".filter-topics").click(function(e) {
        // Un-bold all other options
        resetFilters();
        // Bold the clicked option
        $(this).css("font-weight", "bold");
        // Bold the table page option
        $("#filter-table").css("font-weight", "bold");
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

        $('#filter-tabs a[href="#table"]').tab('show');
    });
});
