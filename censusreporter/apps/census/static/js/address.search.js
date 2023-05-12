MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiQV9hS01rQSJ9.wtsn0FwmAdRV7cckopFKkA';
var GEOCODE_URL = _("https://api.tiles.mapbox.com/v4/geocode/mapbox.places/<%=query%>.json?access_token=<%=token%>&country=us%2Cpr").template()
var PROXIMITY_GEOCODE_URL = _("https://api.tiles.mapbox.com/v4/geocode/mapbox.places/<%=query%>.json?proximity=<%=lon%>,<%=lat%>&access_token=<%=token%>&country=us%2Cpr").template()
var REVERSE_GEOCODE_URL = _("https://api.tiles.mapbox.com/v4/geocode/mapbox.places/<%=lng%>,<%=lat%>.json?access_token=<%=token%>&country=us%2Cpr").template()

var PLACE_LAYERS = {}
var geoSearchAPI = 'https://api.censusreporter.org/1.0/geo/search';
var place_template = _.template($("#place-result-template").html())
var push_state_url_template = _.template("/locate/?lat=<%=lat%>&lng=<%=lng%>&address=<%=address%>");
var push_state_title_template = _.template("Census Reporter: Geographies containing <%= address %> (<%=lat%>, <%=lng%>)");
var $searchInput = $("#address-search");

var lat = '',
    lng = '',
    address = '',
    point_marker = null,
    map = null;

// prepare spinner
$('body').append('<div id="body-spinner"></div>');
var spinnerTarget = document.getElementById('body-spinner');
spinner = new Spinner();

window.onpopstate = function(event) {
    if (event.state) {
        var lat = event.state.lat;
        var lng = event.state.lng;
        var address = event.state.address;
        if (lat && lng) {
            updateLocation(new mapboxgl.LngLat(lng, lat), address);
        }
    }
}

function updateLocation(lngLat, label) {
    if (!label) {
        reverseGeocode(lngLat, function(label) {
            updateLocation(lngLat, label);
        })
    } else {
        map.panTo(lngLat)
        // TODO: restore all these
        findPlaces(lngLat, label);
        placeMarker(lngLat, label);
        var state = { lat: lngLat.lat, lng: lngLat.lng, address: label }
        if (!(_.isEqual(history.state, state))) {
            history.pushState(state, push_state_title_template(state), push_state_url_template(state));
        }
    }
}

function processGeocoderResults(response) {
    var results = response.features;
    results = _.filter(results, function(item) {
        return item.id.indexOf('address.') == 0;
    });
    results = _.map(results, function(item) {
        // Gets rid of "United States" at the end of the address
        item.place_name = item.place_name.replace(", United States", "");
        return item;
    });
    return results;
}

var addressSearchEngine = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 10,
    remote: {
        url: GEOCODE_URL,
        replace: function(url, query) {
            if (window.browser_location) {
                return PROXIMITY_GEOCODE_URL({ query: encodeURIComponent(query), token: MAPBOX_ACCESS_TOKEN, lon: browser_location.coords.longitude, lat: browser_location.coords.latitude })
            } else {
                return url({ query: query, token: MAPBOX_ACCESS_TOKEN });
            }
        },
        filter: processGeocoderResults
    }
});
addressSearchEngine.initialize();

function selectAddress(obj, datum) {
    $searchInput.typeahead('val', '');
    if (datum.geometry) {
        var label = datum.place_name.replace(", United States", "");
        if (datum.geometry.type == "Point") {
            var lng = datum.geometry.coordinates[0];
            var lat = datum.geometry.coordinates[1];
        } else if (datum.center) {
            var lng = datum.center[0];
            var lat = datum.center[1];
        } else {
            console.log("Don't know how to handle selection.");
            window.selection_error = datum;
            return false
        }
        updateLocation(new mapboxgl.LngLat(lng, lat), label);
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
        displayKey: 'place_name',
        source: addressSearchEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name">{{place_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', selectAddress);
}

makeAddressSearchWidget($searchInput);

function basicLabel(lat, lng) {
    if (!lng) {
        lng = lat.lng;
        lat = lat.lat;
    }
    return lat.toFixed(2) + ", " + lng.toFixed(2);
}

if (navigator.geolocation) {
    // cache current location for proximity biasing
    navigator.geolocation.getCurrentPosition(function(position) { window.browser_location = position; }, function() {}, { timeout: 10000 });

    $("#use-location").on("click", function() {
        $("#address-search-message").hide();
        spinner.spin(spinnerTarget);

        function foundLocation(position) {
            window.browser_location = position;
            spinner.stop();
            lat = position.coords.latitude;
            lng = position.coords.longitude;
            updateLocation(new mapboxgl.LngLat(lng, lat))
        }

        function noLocation() {
            spinner.stop();
            $("#address-search-message").html('Sorry, your browser was unable to determine your location.');
            $("#address-search-message").show();
        }
        navigator.geolocation.getCurrentPosition(foundLocation, noLocation, { timeout: 10000 });
    })
} else {
    $("#use-location").hide();
}

function reverseGeocode(ll, callback) {
    var url = REVERSE_GEOCODE_URL({ lat: ll.lat, lng: ll.lng, token: MAPBOX_ACCESS_TOKEN });
    $.getJSON(url, function(data, status) {
        if (status == 'success' && data.features) {
            var results = processGeocoderResults(data);
            if (results.length > 0) {
                var label = data.features[0].place_name.replace(", United States", "");
                callback(label, ll);
            }
        } else {
            callback(status, ll);
        }
    });
}


function geocodeAddress(query, callback) {
    var url = GEOCODE_URL({ query: encodeURIComponent(query), token: MAPBOX_ACCESS_TOKEN });
    $.getJSON(url, callback);
}

var POLYGON_STYLE = {
    "clickable": true,
    "fillColor": "#66c2a5",
    "color": "#777",
    "weight": 2,
    "opacity": 0.3,
    "fillOpacity": 0.3,
}

function makeLayer(d) {
    var layer = L.geoJson(d.geom, { style: POLYGON_STYLE })
    layer.bindLabel(d.full_name, { noHide: true, direction: 'auto' });
    layer.on('mouseover', function() {
        layer.setStyle({
            "fillOpacity": 0.5,
        });
    });
    layer.on('mouseout', function() {
        layer.setStyle(POLYGON_STYLE);
    });
    layer.on('click', function() {
        window.location.href = '/profiles/' + d.full_geoid;
    });
    return layer;
}

function findPlaces(lngLat, address) {
    spinner.spin(spinnerTarget);
    $(".location-list").hide();
    // _(PLACE_LAYERS).each(function(v) { map.removeLayer(v) });

    if (address) {
        $("#address-search-message").html(address);
        $("#address-search-message").show();
    } else {
        $("#address-search-message").html("Your location: " + basicLabel(lat, lng));
        $("#address-search-message").show();
    }
    var has_map = (window.map != null);
    params = { 'lat': lngLat.lat, 'lon': lngLat.lng, 'sumlevs': '010,020,030,040,050,060,140,150,160,250,310,400,500,610,620,795,860,950,960,970', geom: has_map }
    $.getJSON(geoSearchAPI, params, function(data, status) {
        spinner.stop();
        if (status == 'success') {
            window.PLACE_LAYERS = {}
            $("#data-display").html("");
            var list = $("<ul class='location-list'></ul>");
            list.appendTo($("#data-display"));

            var results = _.sortBy(data.results, function(x) { return sumlevMap[x.sumlevel].size_sort });
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
                    // TODO: put them on the map
                    window.PLACE_LAYERS[d['full_geoid']] = d
                }
            }
            if (has_map) {
                $('.location-list li').on('mouseover', function(evt) {
                    // var this_layer = $(evt.currentTarget).data('geoid');
                    // _(PLACE_LAYERS).each(function(v, k) {
                    //     if (k == this_layer) {
                    //         v.addTo(map);
                    //     } else {
                    //         map.removeLayer(v);
                    //     }
                    // });
                })
                $('.zoom-to-layer').click(function(e) {
                    // e.stopPropagation();
                    // e.preventDefault();
                    // var geoid = $(this).parents('li').data('geoid');
                    // if (PLACE_LAYERS[geoid]) {
                    //     var layer = PLACE_LAYERS[geoid];
                    //     layer.addTo(map);
                    //     map.fitBounds(layer.getBounds());
                    // }
                });

            }
            $('body').trigger('glossaryUpdate', list);
        } else {
            $("#data-display").html(status);
        }
    })
}

function placeMarker(lngLat, label) {
    if (map) {
        if (point_marker) {
            point_marker.setLngLat(lngLat)
        } else {
            let marker_svg = document.getElementById('circle-marker')
            marker_svg.style.display = 'inline'
            point_marker = new mapboxgl.Marker({
                element: marker_svg,
                color: '#66c2a5'
            })
                .setLngLat(lngLat)
                .addTo(map)
        }
        showMarkerLabel(lngLat, label)
    }
}

function showMarkerLabel(lngLat, label) {
    if (lngLat.toArray) { // is it a mapboxgl.LngLat ?
        lngLat = lngLat.toArray() 
    } // otherwise assume it already was an array
    map.getSource('labels-source').setData(labelFeatureCollection(lngLat, label))
}

function init_from_params(params) {
    var lat = params.lat || '';
    var lng = params.lng || params.lon || '';
    var address = params.address || '';
    if (lat && lng) {
        lat = parseFloat(lat);
        lng = parseFloat(lng);
        if (!(isNaN(lat) || isNaN(lng))) {
            updateLocation(new mapboxgl.LngLat(lng, lat), address);
        }
    } else if (address) {
        geocodeAddress(address, function(data) {
            var results = processGeocoderResults(data);
            if (results && results.length > 0) {
                selectAddress(null, results[0]);
            } else {
                console.log("no results for " + address);
            }
        });
    }
}

// perhaps leave out the map on small viewports?
if (!(lat && lng)) {
    lat = '42.02';
    lng = '-87.67';
}

function polyFeatureCollection(geoid) {
    let features = {
        type: 'FeatureCollection',
        'features': []
    }

    if (PLACE_LAYERS[geoid]) {
        features.features.push(PLACE_LAYERS[geoid].geom)
    }

    return features
}

function labelFeatureCollection(lngLat, label) {

    let label_features = {
        type: 'FeatureCollection',
        'features': []
    }

    if (lngLat && label) {
        let feature = {
            'type': 'Feature',
            'properties': {
                'description': label,
                'icon': 'theatre'
            },
            'geometry': {
                'type': 'Point',
                'coordinates': lngLat
            }
        }
        label_features.features.push(feature)

    }
    return label_features
}

function initialize_map() {
    mapboxgl.accessToken = MAPBOX_ACCESS_TOKEN;
    window.map = new mapboxgl.Map({        
        container: 'slippy-map',
        center: [lng, lat],
        zoom: 13,
        style: 'mapbox://styles/censusreporter/ckfyfj0v707ob19qdo047ndoq',
        zoomControl: false,
        doubleClickZoom: false,
        boxZoom: true,
        keyboard: true,
        dragging: true,
        touchZoom: true
    });

    map.addControl(new mapboxgl.NavigationControl({
        showZoom: true,
        showCompass: false
    }), 'top-right')

    map.on("dblclick", function(evt) {
        updateLocation(evt.lngLat);
    })

    map.on("load", e => {         // avoid showing marker before map is ready
        map.addSource('labels-source', {
            'type': 'geojson',
            'data': labelFeatureCollection()
        });

        map.addLayer({
            'id': 'labels-layer',
            'type': 'symbol',
            'source': 'labels-source',
            'layout': {
                'text-field': ['get', 'description'],
                'text-font': ["Lato Bold"], // need to come from Mapbox Studio
                'text-size': 14,
                'text-max-width': 20,
                'text-variable-anchor': ['left', 'bottom', 'top', 'right'],
                'text-radial-offset': 0.5,
                'text-justify': 'auto'
            },
            'paint': {
                'text-halo-width': 2,
                'text-halo-color': 'white',
                'text-halo-blur': 1
            }
        });

        map.addSource('polys-source', {
            type: 'geojson',
            data: {
                type: 'FeatureCollection',
                features: []
            }
        })

        map.addLayer({
            id: 'polys-layer-line',
            type: 'line',
            source: 'polys-source',
            paint: {
                "line-color": "#777",
                "line-width": 2,
                "line-opacity": 0.3,
            }
        })

        map.addLayer({
            id: 'polys-layer-fill',
            type: 'fill',
            source: 'polys-source',
            paint: {
                "fill-color": "#66c2a5",
                "fill-opacity": 0.3,
            }
        })

        init_from_params($.parseParams());
 
    })
}
var should_show_map = true; // eventually base on viewport or similar
if (should_show_map) {
    initialize_map();
} else {
    $("#address-search-content").addClass('no-map')
}
