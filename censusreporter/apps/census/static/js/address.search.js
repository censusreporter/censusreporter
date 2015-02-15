L.mapbox.accessToken = 'pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiQV9hS01rQSJ9.wtsn0FwmAdRV7cckopFKkA';
var geoSearchAPI = 'http://api.censusreporter.org/1.0/geo/search';

var place_template = _.template($("#place-result-template").html())

var lat = '',
    lng = '',
    address = '',
    point_marker = null;

// prepare spinner
$('body').append('<div id="body-spinner"></div>');
var spinnerTarget = document.getElementById('body-spinner');
    spinner = new Spinner();

// perhaps leave out the map on small viewports?
if (!(lat && lng)) {
    lat = '42.02';
    lng = '-87.67';
}
var map_center = new L.latLng(lat, lng);
window.map = L.mapbox.map('slippy-map', 'censusreporter.map-j9q076fv', {
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

map.addControl(new L.Control.Zoom({
    position: 'topright'
}));

map.on("dblclick",function(evt) { 
    console.log("doubleclick");
    point_marker.setLatLng(evt.latlng);
    point_marker.getLabel().setContent(evt.latlng.lat.toFixed(2) + ", " + evt.latlng.lng.toFixed(2));
    findPlaces(evt.latlng.lat, evt.latlng.lng);
})
if (navigator.geolocation) {
    $("#use-location").on("click",function() {
        $("#address-search-message").hide();
        spinner.spin(spinnerTarget);
        function foundLocation(position) {
            spinner.stop();
            lat = position.coords.latitude;
            lng = position.coords.longitude;
            setMap(lat,lng);
            placeMarker(lat,lng,lat.toFixed(2) + ", " + lng.toFixed(2));
            findPlaces(lat, lng)
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

function findPlaces(lat,lng) {
    spinner.spin(spinnerTarget);
    params = { 'lat': lat, 'lon': lng, 'sumlevs': '010,020,030,040,050,060,140,160,250,310,400,500,610,620,860,950,960,970' }
    $.getJSON(geoSearchAPI,params, function(data, status) {
        spinner.stop();
        if (status == 'success') {
            $("#data-display").html("");
            var list = $("<ul class='location-list'></ul>");
            list.appendTo($("#data-display"));

            var results = _.sortBy(data.results,function(x){ return sumlevMap[x.sumlevel].size_sort });
            for (var i = 0; i < results.length; i++) {
                var d = results[i];
                d['SUMLEVELS'] = sumlevMap;
                $(place_template(d)).appendTo(list);
                window.stash = results;
            }
            $('body').trigger('glossaryUpdate', list);
        } else {
            $("#data-display").html(status);
        }
    })
}


function placeMarker(lat, lng, label) {
    if (point_marker) {
        map.removeLayer(point_marker);
    }
    point_marker = new L.Marker(L.latLng(lat,lng),{fillColor: "#66c2a5", fillOpacity: 1, stroke: false, radius: 5, draggable: true});
    if (label) {
        point_marker.bindLabel(label, {noHide: true});
    }
    point_marker.on("drag",function(evt) {
        point_marker.hideLabel();
    })
    point_marker.on("dragend", function(evt) {
        window.stash = evt;
        var new_pos = evt.target.getLatLng();
        point_marker.getLabel().setContent(new_pos.lat.toFixed(2) + ", " + new_pos.lng.toFixed(2));
        point_marker.showLabel();
        findPlaces(new_pos.lat, new_pos.lng);

    })
    map.addLayer(point_marker);

}
function setMap(lat, lng, address) {
    var height = 500;
    var map_center = new L.latLng(lat, lng);
    map.panTo(map_center);
    if (address) {
        $("#address-search-message").html("Address: " + address);
        $("#address-search-message").show();
    } else {
        $("#address-search-message").html("Your location: " + lat.toFixed(2) + ", " + lng.toFixed(2));
        $("#address-search-message").show();
    }
}

$(".location-list li").on("mouseover",function(){
    var geoid = $(this).data('geoid');
    console.log(geoid);
})
