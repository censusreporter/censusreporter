var gmaps_api_key = 'AIzaSyAQVmojih2QofQW7mMMFdfmI85aYF5yA9M';
var GEOCODE_URL = _("https://maps.googleapis.com/maps/api/geocode/json?address=<%=query%>&components=administrative_area:MI|country:US&key=<%=token%>").template()
var PROXIMITY_GEOCODE_URL = _("https://maps.googleapis.com/maps/api/geocode/json?latlng=<%=lat%>,<%=lng%>&key=<%=token%>").template()
var REVERSE_GEOCODE_URL = _("https://maps.googleapis.com/maps/api/geocode/json?latlng=<%=lat%>,<%=lng%>&key=<%=token%>").template()

var PLACE_LAYERS = {}
var geoSearchAPI = 'https://api.censusreporter.org/1.0/geo/search';
var place_template = _.template($("#place-result-template").html())
var push_state_url_template = _.template("/draw/?lat=<%=lat%>&lng=<%=lng%>&address=<%=address%>");
var push_state_title_template = _.template("Geographies containing <%= address %> (<%=lat%>, <%=lng%>)");
var $searchInput = $("#address-search");

var lat = '',
    lng = '',
    address = '',
    point_marker = null,
    map = null;

// prepare spinner
var spinnerTarget = document.getElementById("body-spinner");
if (!spinnerTarget) {
    $('body').append('<div id="body-spinner"></div>');
    spinnerTarget = document.getElementById('body-spinner');
} 

window.onpopstate = function(event) {
    if (event.state) {
        var lat = event.state.lat;
        var lng = event.state.lng;
        var address = event.state.address;
        if (lat && lng) {
            updateLocation(lat, lng, address);
        }
    }
}
function updateLocation(lat, lng, label) {
    if (!label) {
        reverseGeocode({lat: lat, lng: lng}, function(label) {
            console.log('label', label);
            updateLocation(lat, lng, label);
        })
    } else {
        setMap(lat, lng);
        findPlaces(lat, lng, label);
        placeMarker(lat, lng, label);
        var state = {lat: lat, lng: lng, address: label}
        if (!(_.isEqual(history.state,state))) {
            history.pushState(state,push_state_title_template(state),push_state_url_template(state));
        }
    }
}

function processGeocoderResults(response) {
    var results = response.results;
    return results;
}

var addressSearchEngine = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 10,
    remote: {
        url: GEOCODE_URL,
        replace: function (url, query) {
          // if (window.browser_location) {
          //   return PROXIMITY_GEOCODE_URL({query: encodeURIComponent(query), token: gmaps_api_key, lon: browser_location.coords.longitude, lat: browser_location.coords.latitude})
          // } else {
          //   return url({query: query, token: gmaps_api_key});
          // }

          // for systems with browser location turned on, addresses are never geocoded with the above code.
          return url({query: query, token: gmaps_api_key});

        },
        filter: processGeocoderResults
    }
});
addressSearchEngine.initialize();

function selectAddress(obj, datum) {
    $searchInput.typeahead('val', '');
    if (datum.geometry) {
        var label = datum.formatted_address.replace(", USA", "");
        console.log(datum);
        if (datum.geometry.location) {
            var lng = datum.geometry.location.lng;
            var lat = datum.geometry.location.lat;
        } else if (datum.center) {
            var lng = datum.center[0];
            var lat = datum.center[1];
        } else {
            console.log("Don't know how to handle selection.");
            window.selection_error = datum;
            return false
        }
        updateLocation(lat, lng, label);
    } else {
        console.log("Don't know how to handle selection.");
        window.selection_error = datum;
        return false;
    }
}

function makeAddressSearchWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 3
    }, {
        name: 'addresses',
        displayKey: 'formatted_address',
        source: addressSearchEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name">{{formatted_address}}</p>'
            )
        }
    });

    element.on('typeahead:selected', selectAddress);
}

makeAddressSearchWidget($searchInput);

function basicLabel(lat,lng) {
    if (!lng) {
        lng = lat.lng;
        lat = lat.lat;
    }
    return lat.toFixed(2) + ", " + lng.toFixed(2);
}

if (navigator.geolocation) {
  // cache current location for proximity biasing
  navigator.geolocation.getCurrentPosition(function(position) { console.log(position); window.browser_location = position; }, function() {}, {timeout:10000});

    $("#use-location").on("click",function() {
        $("#address-search-message").hide();
        spinner.spin(spinnerTarget);
        function foundLocation(position) {
            window.browser_location = position;
            spinner.stop();
            lat = position.coords.latitude;
            lng = position.coords.longitude;
            updateLocation(lat,lng);
        }

        function noLocation() {
            spinner.stop();
            $("#address-search-message").html('Sorry, your browser was unable to determine your location.');
            $("#address-search-message").show();
        }
        navigator.geolocation.getCurrentPosition(foundLocation, noLocation, {timeout:10000});
    })
} else {
    $("#use-location").hide();
}

function reverseGeocode(ll,callback) {
    var url = REVERSE_GEOCODE_URL({lat: ll.lat, lng: ll.lng, token: gmaps_api_key});
    $.getJSON(url, function(data, status) {
        console.log(data);
        console.log(status);
        if (status == 'success' && data.results) {
            console.log('process');
            var results = processGeocoderResults(data);
            if (results.length > 0) {
                var label = data.results[0].formatted_address.replace(", USA", "");
                callback(label, ll);
            }
        } else {
            callback(status, ll);
        }
    });
}


function geocodeAddress(query, callback) {
    var url = GEOCODE_URL({query: encodeURIComponent(query), token: gmaps_api_key});
    $.getJSON(url, callback);
}

var POLYGON_STYLE = {
    "clickable": true,
    "fillColor": "#9C65D1",
    "color": "#686867",
    "weight": 1,
    "opacity": 0.3,
    "fillOpacity": 0.3,
}

function makeLayer(d) {
    var layer = L.geoJson(d.geom,{style: POLYGON_STYLE})
    layer.bindLabel(d.full_name, {noHide: true, direction: 'auto'});
    layer.on('mouseover', function() {
        layer.setStyle({
            "fillOpacity": 0.5,
        });
    });
    layer.on('mouseout', function() {
        layer.setStyle(POLYGON_STYLE);
    });
    layer.on('click', function() {
        // add spinner to page load 
        spinner.spin(spinnerTarget);
        window.location.href = '/profiles/' + d.full_geoid;
    });
    return layer;
}
function findPlaces(lat,lng,address) {
    spinner.spin(spinnerTarget);
    $(".location-list").hide();
    _(PLACE_LAYERS).each(function(v){map.removeLayer(v)});

    if (address) {
        $("#address-search-message").html(address);
        $("#address-search-message").show();
    } else {
        $("#address-search-message").html("Your location: " + basicLabel(lat,lng));
        $("#address-search-message").show();
    }
    var has_map = (window.map != null);
    params = { 'lat': lat, 'lon': lng, 'sumlevs': '040,050,060,140,150,250,310,400,500,610,620,795,860,950,960,970', geom: has_map }
    //params = { 'lat': lat, 'lon': lng, 'sumlevs': '010,020,030,040,050,060,140,150,160,250,310,400,500,610,620,795,860,950,960,970', geom: has_map }
    $.getJSON(geoSearchAPI,params, function(data, status) {
        spinner.stop();
        if (status == 'success') {
            window.PLACE_LAYERS = {}
            $("#data-display").html("");
            var list = $("<ul class='location-list'></ul>");
            list.appendTo($("#data-display"));

            var results = _.sortBy(data.results,function(x){ return sumlevMap[x.sumlevel].size_sort });
            if (results.length == 0) {
                var label = $("#address-search-message").html();
                label += " is not in any Census geographies."
                $("#address-search-message").html(label);
            } else {
                var label = $("#address-search-message").html();
                if (!label.match(/is in:$/i)) {
                    label += " is in:" // don't do this if it's already there...
                }
                $("#address-search-message").html(label);
            }
            for (var i = 0; i < results.length; i++) {
                var d = results[i];
                d['SUMLEVELS'] = sumlevMap;
                $(place_template(d)).appendTo(list);
                if (has_map) {
                    window.PLACE_LAYERS[d['full_geoid']] =
                        makeLayer(d);
                }
            }
            if (has_map) {
                $('.location-list li').on('mouseover',function(evt) {
                    var this_layer = $(evt.currentTarget).data('geoid');
                    _(PLACE_LAYERS).each(function(v,k) {
                        if (k == this_layer) {
                            v.addTo(map);
                        } else {
                            map.removeLayer(v);
                        }
                    });
                })
                $('.location-list li').click(function(e) {
                    e.stopPropagation();
                    e.preventDefault();
                    spinner.spin(spinnerTarget);
                    //console.log($(this).children('a')[0]['href']);
                    window.location.href = $(this).children('a')[0]['href'];
                })
                $('.zoom-to-layer').click(function(e) {
                    e.stopPropagation();
                    e.preventDefault();
                    var geoid = $(this).parents('li').data('geoid');
                    if (PLACE_LAYERS[geoid]) {
                        var layer = PLACE_LAYERS[geoid];
                        layer.addTo(map);
                        map.fitBounds(layer.getBounds());
                    }
                });

            }
            $('body').trigger('glossaryUpdate', list);
        } else {
            $("#data-display").html(status);
        }
    })
}

function placeMarker(lat, lng, label) {
    // TODO: extract updating address-search-message (nested in labelWithReverse)
    // to be independent of the presence of a map.

    if (map) {
        if (point_marker) {
            console.log(label);
            point_marker.hideLabel();
            point_marker.updateLabelContent(label);
            point_marker.setLatLng(L.latLng(lat,lng));
        } else {
            point_marker = new L.CircleMarker(L.latLng(lat,lng),{ fillColor: "#9C65D1", fillOpacity: 1, stroke: false, radius: 5});
            map.addLayer(point_marker);
            point_marker.bindLabel(label, {noHide: true, direction:'right'});
        }
        console.log(point_marker);
        point_marker.showLabel();
    }

}

function setMap(lat, lng) {
    if (map) {
        var map_center = new L.latLng(lat, lng);
        map.panTo(map_center);
    }
}

function init_from_params(params) {
    var lat = params.lat || '';
    var lng = params.lng || params.lon || '';
    var address = params.address || '';
    if (lat && lng) {
        lat = parseFloat(lat);
        lng = parseFloat(lng);
        if (!(isNaN(lat) || isNaN(lng))) {
            updateLocation(lat,lng, address);
        }
    } else if (address) {
        geocodeAddress(address, function(data) {
            var results = processGeocoderResults(data);
            if (results && results.length > 0) {
                selectAddress(null,results[0]);
            } else {
                console.log("no results for " + address);
            }
        });
    }
}

// perhaps leave out the map on small viewports?
if (!(lat && lng)) {
    lat = '42.365054';
    lng = '-83.073021';
}

function initialize_map() {
    var map_center = new L.latLng(lat, lng);
    window.map = L.map('slippy-map', {
        center: map_center,
        zoom: 13,
        scrollWheelZoom: true,
        zoomControl: false,
        doubleClickZoom: false,
        boxZoom: true,
        keyboard: true,
        dragging: true,
        touchZoom: true
    });

    // set a tile layer
    var tiles = L.tileLayer('https://stamen-tiles-{s}.a.ssl.fastly.net/toner-lite/{z}/{x}/{y}.png', { attribution: 'Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, under <a href=\"https://creativecommons.org/licenses/by/3.0/\" target=\"_blank\">CC BY 3.0</a>. Data by <a href=\"http://www.openstreetmap.org/\" target=\"_blank\">OpenStreetMap</a>, under ODbL.'
    });

    // add these tiles to our map
    map.addLayer(tiles);

    map.addControl(new L.Control.Zoom({
        position: 'topright'
    }));

    map.on("dblclick",function(evt) {
        var lat = evt.latlng.lat, lng = evt.latlng.lng;
        updateLocation(lat, lng);
    })
}
var should_show_map = true; // eventually base on viewport or similar
if (should_show_map) {
    initialize_map();
} else {
    $("#address-search-content").addClass('no-map')
}
init_from_params($.parseParams());
