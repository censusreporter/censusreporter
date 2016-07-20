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
        if ($('#profiles').is(':empty')){
            $.get("http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + q + "&type=profile",
                function(data) {
                    data = data['results']; // data is formatted as {results: array}
                    for (let i = 0; i < data.length; i++) {
                        //TODO Better formatting to showcase a search result
                        let surrounding_div = $("<div></div>");
                        let paramlist = $("<ul></ul>");
                        paramlist.append("<li><b>" + data[i].full_name + "</b></li>");
                        paramlist.append("<li>" + data[i].url + "</li>");
                        paramlist.append("<li>" + data[i].type + "</li>");
                        paramlist.append("<li>" + data[i].sumlevel_name + "</li>");
                        paramlist.append("<li>" + data[i].sumlevel + "</li>");
                        paramlist.append("<li>" + data[i].full_geoid + "</li>");
                        surrounding_div.append(paramlist);
                        $("#profiles").append(surrounding_div);
                    }
                }
            );
        }
	});

    // Filter results for table pages only
	$("#tab-tables").click(function() {
		console.log('clicked tables');

		$.ajax({
		    url: "http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + q + "&type=table",
		    dataType: "json",
		    // Use success handler to process data before passing it to response
		    // function.
		    success: function (data) {
		        // Format of data is {results: [ list of objects ]}
		        var result = [];
		        // For each returned page, prepare data for display. label and
		        // value are defaults preferred by jQuery UI autocomplete.
		        for (var i = 0; i < data.results.length; i++) {
		        	result.push({
		        	    label: data.results[i].table_name,
		        	    value: data.results[i].table_name,
		        	    subline: "<b>Table topics: </b>" + data.results[i].topics,
		        	    url: data.results[i].url
		        	});
		        }

		        // TODO learn how to pass this to the template, or something
		        console.log(result);
		        $("#tables div").text(result);
		    }
		});
	});
});