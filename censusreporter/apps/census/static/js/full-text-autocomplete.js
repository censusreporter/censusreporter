L.mapbox.accessToken = 'pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiQV9hS01rQSJ9.wtsn0FwmAdRV7cckopFKkA';
var GEOCODE_URL = _("https://api.tiles.mapbox.com/v4/geocode/mapbox.places/<%=query%>.json?access_token=<%=token%>").template()
var selected_url = _.template("/locate/?lat=<%=lat%>&lng=<%=lng%>&address=<%=address%>");

$(function() {
    // Initialize autocomplete
    $("#search").autocomplete({
        // Grab source from ajax call
        source: function (request, response) {
            var results = [];

            // Add to start of search results
            results.push({
                label: "Don't see what you're looking for?",
                value: "Don't see what you're looking for?",
                subline: "View all search results for " + request.term,
                url: "http://127.0.0.1:8000" + "/search-results/?q=" + request.term //TODO
            });

            // Location data
            $.when(
                $.ajax({
                    url: GEOCODE_URL({query: request.term, token: L.mapbox.accessToken}),
                    success: function(data) {
                        for (let i = 0; i < data.features.length; i++) {
                            current_result = data.features[i];
                            results.push({
                                label: current_result['place_name'],
                                value: current_result['place_name'],
                                subline: "Address",
                                url: selected_url({ // See corresponding template at top of file for url format
                                    lat: current_result['center'][1], // latitude
                                    lng: current_result['center'][0], // longitude
                                    address: request.term
                                })
                            });
                        }
                    }
                }),

                // Profile, table, and topic data
                $.ajax({
                    // request.term is the current text in the search box.
                    url: "http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + request.term, //TODO
                    dataType: "json",
                    // Use success handler to process data before passing it to response
                    // function.
                    success: function(data) {
                        // Limit number of suggestions to 20
                        if (data.results.length > 20) {
                            var results_limit = 20;
                        } else {
                            var results_limit = data.results.length;
                        }
                        // For each returned page, prepare data for display. label and
                        // value are defaults preferred by jQuery UI autocomplete.
                        // Format of data is {results: [ list of objects ]}
                        for (let i = 0; i < results_limit; i++) {
                            if (data.results[i].type == "profile") {
                                results.push({
                                    label: data.results[i].full_name,
                                    value: data.results[i].full_name,
                                    subline: data.results[i].sumlevel_name,
                                    url: data.results[i].url
                                });
                            } else if (data.results[i].type == "table") {
                                results.push({
                                    label: data.results[i].table_name,
                                    value: data.results[i].table_name,
                                    subline: "<b>Table topics: </b>" + data.results[i].topics.join(", "),
                                    url: data.results[i].url
                                });
                            } else if (data.results[i].type == "topic") {
                                results.push({
                                    label: data.results[i].topic_name,
                                    value: data.results[i].topic_name,
                                    subline: "Topic page",
                                    url: data.results[i].url
                                });
                            }
                        }

                    }
                })
            ).then(function() {
                response(results);
            });
        },
        select: function (event, ui) {
            window.location = ui.item.url;
            return false;
        },
        focus: function(event, ui) {
            $(".ui-menu-item").children('div').each(function() {
                var selected_li = $(this).parent();
                if ($(this).hasClass("ui-state-active")) {
                    selected_li.css("background", "#1a9d95");
                    selected_li.css("color", "#fff");
                } else {
                    selected_li.css("background", "#fff");
                    selected_li.css("color", "#000");
                }
            });
            event.preventDefault();
        },
        minLength: 3
    }).autocomplete("instance")._renderItem = function(ul, item) {
        // Format autocomplete dropdown.
        return $("<li>").append("<div class='autocomplete-label'>" + item.label
            + "</div><div class='autocomplete-subline'>"
            + item.subline + "</div>").appendTo(ul);
    };


    // Constrain autocomplete box width
    // http://stackoverflow.com/questions/5643767/jquery-ui-autocomplete-width-not-set-correctly
    jQuery.ui.autocomplete.prototype._resizeMenu = function () {
        var ul = this.menu.element;
        ul.outerWidth(this.element.outerWidth());
    };
});
