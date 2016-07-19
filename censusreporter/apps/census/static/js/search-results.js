$(function() {
	console.log('SOS');

	// Function to get URL parameters, i.e., ?q=something
	// Usage: getUrlParameter('q')
	// http://stackoverflow.com/questions/19491336/get-url-parameter-jquery-or-how-to-get-query-string-values-in-js
	var getUrlParameter = function getUrlParameter(sParam) {
	    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
	        sURLVariables = sPageURL.split('&'),
	        sParameterName,
	        i;

	    for (i = 0; i < sURLVariables.length; i++) {
	        sParameterName = sURLVariables[i].split('=');

	        if (sParameterName[0] === sParam) {
	            return sParameterName[1] === undefined ? true : sParameterName[1];
	        }
	    }
	};

	// Get the query string from the URL, replacing + with a space
	var q = getUrlParameter('q').replace(/\+/g, ' ');

	// TODO see if this can be nicer, because I'm bad at javascript
	// In particular, lots of repeated code that should probably be refactored

	$("#tab-profiles").click(function() {
		console.log('clicked profiles');
		$.ajax({
		    url: "http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + q + "&type=profile",
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
			            label: data.results[i].full_name,
			            value: data.results[i].full_name,
			            subline: "<i>" + data.results[i].sumlevel_name + "<i>",
			            url: data.results[i].url
			        });
		        }

		        // TODO learn how to pass this to the template, or something
		        console.log(result);
		        $("#profiles div").text(result);

		    }
		});

	});

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