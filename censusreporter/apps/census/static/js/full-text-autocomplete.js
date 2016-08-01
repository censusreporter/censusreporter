$(function() {
    // Initialize autocomplete
    $("#search").autocomplete({
        // Grab source from ajax call
        source: function (request, response) {
            $.ajax({
                // request.term is the current text in the search box.
                url: "http://0.0.0.0:5000" + "/2.1/full-text/search?q=" + request.term,
                dataType: "json",
                // Use success handler to process data before passing it to response
                // function.
                success: function (data) {
                    var result = [];
                    // Add to start of search results
                    result.push({
                        label: "Don't see what you're looking for?",
                        value: "Don't see what you're looking for?",
                        subline: "View all search results for " + request.term,
                        url: "http://127.0.0.1:8000" + "/search-results/?q=" + request.term
                    });

                    // For each returned page, prepare data for display. label and
                    // value are defaults preferred by jQuery UI autocomplete.
                    // Format of data is {results: [ list of objects ]}
                    for (let i = 0; i < data.results.length; i++) {
                        if (data.results[i].type == "profile") {
                            result.push({
                                label: data.results[i].full_name,
                                value: data.results[i].full_name,
                                subline: data.results[i].sumlevel_name,
                                url: data.results[i].url
                            });
                        } else if (data.results[i].type == "table") {
                            result.push({
                                label: data.results[i].table_name,
                                value: data.results[i].table_name,
                                subline: "<b>Table topics: </b>" + data.results[i].topics,
                                url: data.results[i].url
                            });
                        }
                    }

                    response(result);
                }
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
