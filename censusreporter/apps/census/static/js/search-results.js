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
};

$(function() {
	// Get the query string from the URL, replacing + with a space
	var q = getUrlParameter('q').replace(/\+/g, ' ');

    // Filter results for profile pages only
	$("#tab-profiles").click(function() {
        // Check if data has already been loaded
        if ($('#profiles').is(':empty')) {
            $.get("http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + q 
                                        + "&type=profile",
                function(data) {
                    data = data['results']; // format: {results: array}
                    for (let i = 0; i < data.length; i++) {
                        let profile_surrounding = $("<div></div>");
                        profile_surrounding.append("<h3><a href='" + data[i].url + "'>"
                            + data[i].full_name + "</a></h3>");
                        profile_surrounding.append("<p>"
                            + data[i].sumlevel_name.capitalizeFirstLetter() + "</p>");
                        $("#profiles").append(profile_surrounding);
                    }
                }
            );
        }
	});
 
    // Filter results for table pages only
	$("#tab-tables").click(function() {
        // Check if data has already been loaded
        if ($('#tables').is(':empty')) {
            $.get("http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + q 
                                        + "&type=table",
                function(data) {
                    data = data['results']; // format: {results: array}
                    for (let i = 0; i < data.length; i++) {
                        let table_surrounding = $("<div></div>");
                        table_surrounding.append("<h3><a href='" + data[i].url + "'>Table "
                            + data[i].table_id + ": " + data[i].simple_table_name + "</a></h3>");
                        table_surrounding.append("<p>Topics: " + data[i].topics
                            + "<br>Subtables: " + data[i].subtables + "</p>");
                        $("#tables").append(table_surrounding);
                    }
                }
            );
        }
	});

});