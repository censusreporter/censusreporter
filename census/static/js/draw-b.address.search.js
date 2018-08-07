var gmaps_api_key = 'AIzaSyAQVmojih2QofQW7mMMFdfmI85aYF5yA9M';
var GEOCODE_URL = _("https://maps.googleapis.com/maps/api/geocode/json?address=<%=query%>&components=administrative_area:MI|country:US&key=<%=token%>").template()

var geoSearchAPI = 'https://api.censusreporter.org/1.0/geo/search';
var place_template = _.template($("#place-result-template").html())

var lat = '',
    lon = '', 
    map = null,
    drawnLayer = null,
    drawnGeojson = null;

var sumlevs = [
    { 'level': '150', 'name': 'Census Block Group', zoom: 15 },
    { 'level': '140', 'name': 'Census Tract', zoom: 10 },
    { 'level': '860', 'name': 'ZIP Code', zoom: 12  },
    { 'level': '950', 'name': 'School District (Elementary)', zoom: 10  },
    { 'level': '970', 'name': 'School District (Unified)', zoom: 10  },
    { 'level': '060', 'name': 'County Subdivision', zoom: 7 },
    { 'level': '500', 'name': 'Congressional District', zoom: 7 },
    { 'level': '610', 'name': 'State House (Upper)', zoom: 7 },
    { 'level': '620', 'name': 'State House (Lower)', zoom: 7 },
    { 'level': '400', 'name': 'Urban Area', zoom: 7 },
    { 'level': '050', 'name': 'County', zoom: 7 },
    { 'level': '310', 'name': 'Metro (CBSA) area', zoom: 7 }
]

var invisibleStyle = {
    "color": "#fff",
    "fillColor": "#fff",
    "weight": 0,
    "opacity": 0,
    "fillOpacity": 0,
}

var defaultStyle = {
    "color": "#76AFF2",
    "fillColor": "#f1f1f2",
    "weight": 1,
    "opacity": 0.5,
    "fillOpacity": 0.3,
};

var selectedStyle = {
    "fillColor": "#9C65D1",
    "color": "#686867",
    "weight": 1,
    "opacity": 0.3,
    "fillOpacity": 0.3,
}

// perhaps leave out the map on small viewports?
if (!(lat && lng)) {
    lat = '42.365054';
    lng = '-83.073021';
}

var regularBackgroundTiles = L.tileLayer('https://stamen-tiles-{s}.a.ssl.fastly.net/toner-lite/{z}/{x}/{y}.png', { attribution: 'Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, under <a href=\"https://creativecommons.org/licenses/by/3.0/\" target=\"_blank\">CC BY 3.0</a>. Data by <a href=\"http://www.openstreetmap.org/\" target=\"_blank\">OpenStreetMap</a>, under ODbL.'
});

var drawBackgroundTiles = L.tileLayer('https://stamen-tiles-{s}.a.ssl.fastly.net/toner/{z}/{x}/{y}.png', { attribution: 'Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, under <a href=\"https://creativecommons.org/licenses/by/3.0/\" target=\"_blank\">CC BY 3.0</a>. Data by <a href=\"http://www.openstreetmap.org/\" target=\"_blank\">OpenStreetMap</a>, under ODbL.'
});

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

    // add these tiles to our map
    map.addLayer(regularBackgroundTiles);

    map.addControl(new L.Control.Zoom({
        position: 'topright'
    }));

    // map.on("dblclick",function(evt) {
    //     var lat = evt.latlng.lat, lng = evt.latlng.lng;
    //     updateLocation(lat, lng);
    // })
}
var should_show_map = true; // eventually base on viewport or similar
if (should_show_map) {
    initialize_map();
} else {
    $("#address-search-content").addClass('no-map')
}


function makeTileLayer(thisSumlev) {
    var geojsonTileLayer;
    if (CensusReporter.SummaryLevelLayer && thisSumlev !== "010") {
        geojsonTileLayer = new CensusReporter.SummaryLevelLayer(thisSumlev, {}, {
            style: invisibleStyle,
            onEachFeature: function(feature, layer) {}
        });
    } 
    return geojsonTileLayer;
}

// make tiles layers for each geographic type and save to sumlev.layer, don't add to map yet
_.each(sumlevs,function(l) {
    l.layer = makeTileLayer(l.level);
    map.addLayer(l.layer);
});

// adding draw tools
var drawnItems = new L.FeatureGroup();
map.addLayer(drawnItems);

var drawControl = new L.Control.Draw({
    draw: {
        polyline: false,
        polygon: true,
        rectangle: false,
        circle: false,
        marker: false,
        circlemarker: false,
    },
    edit: {
        featureGroup: drawnItems,
        edit: true
    }
});

var drawToggle = false;
$("#draw-on-map").click(function() {
    if (!drawToggle) {
        new L.Draw.Polygon(map, drawControl.options.polygon).enable();
        drawToggle = true;
    }
    // set up map for draw mode
    $("#draw-on-map").addClass("active");
    map.removeLayer(regularBackgroundTiles);
    map.addLayer(drawBackgroundTiles);
});

$("#clear-map").click(function() {
    // hide clear and make dashboard buttons
    $("#map-action-buttons").addClass("hidden");
    // loop through each layer and reset style and event listeners
    enabledLayer.geojsonLayer.eachLayer(function(layer) {
        setInvisible(layer.feature, layer);
    });
});



function setInvisible(layer) {
    layer.removeEventListener();
    layer.setStyle(invisibleStyle);
    layer.unbindLabel();
    layer.on('mouseover', function() {
        layer.setStyle({
            "weight": 2,
            "fillOpacity": 0.4,
            "fillColor": "#76AFF2",
        });
    });
    layer.on('mouseout', function() {
        layer.setStyle(invisibleStyle);
    });
    layer.on('click', function() {
        // add spinner to page load 
        // var spinnerTarget = document.getElementById("body-spinner");
        // if (!spinnerTarget) {
        //    $('body').append('<div id="body-spinner"></div>');
        //    spinnerTarget = document.getElementById('body-spinner');
        // } 
        // spinner.spin(spinnerTarget);
        // window.location.href = '/profiles/' + feature.properties.geoid + '-' + slugify(feature.properties.name);
    });
}

function setSelected(layer) {
    layer.removeEventListener();
    layer.setStyle(selectedStyle);
    // update label
    layer.unbindLabel();
    layer.bindLabel("Remove " + layer.feature.properties.name + " from selection.", {direction: 'auto'});
    // set up new listeners
    layer.on('mouseover', function() {
        layer.setStyle({
            "weight": 2,
            "fillOpacity": 0.4,
            "fillColor": "#6828A6",
        });
    });
    layer.on('mouseout', function() {
        layer.setStyle(selectedStyle);
    });
    layer.on('click', function() {
        layer.selected = false;
        setDeselected(layer);
    });
}

function setDeselected(layer) {
    layer.removeEventListener();
    layer.setStyle(defaultStyle);
    // update label
    layer.unbindLabel();
    layer.bindLabel("Add " + layer.feature.properties.name + " to selection.", {direction: 'auto'});
    // set up new listeners
    layer.on('mouseover', function() {
        layer.setStyle({
            "weight": 2,
            "fillOpacity": 0.4,
            "fillColor": "#76AFF2",
        });
    });
    layer.on('mouseout', function() {
        layer.setStyle(defaultStyle);
    });
    layer.on('click', function() {
        layer.selected = true; 
        setSelected(layer);
    });
}

function listGeograpies() {
    $("#data-display").html("");
    var list = $("<ul class='location-list'></ul>");
    list.appendTo($("#data-display"));

    _.each(sumlevs,function(l) {
        $(place_template(l)).appendTo(list);
        $('.location-list li').on('mouseover',function(evt) {
            var this_level = $(evt.currentTarget).data('level');
            _.each(sumlevs,function(sumlev) {
                if (sumlev.level == this_level) {
                    sumlev.layer.geojsonLayer.bringToFront();
                    sumlev.layer.geojsonLayer.eachLayer(function(layer){
                        if (layer.selected) {
                            setSelected(layer);
                        } else {
                            setDeselected(layer);
                        }  
                    });
                } else {

                    sumlev.layer.geojsonLayer.setStyle(invisibleStyle);
                    sumlev.layer.geojsonLayer.bringToBack();
                    // if (map.hasLayer(sumlev.layer)) {
                    //     map.removeLayer(sumlev.layer);
                    // }
                }
            });
            
        });

        $('.location-list li').click(function(e) {
            e.stopPropagation();
            e.preventDefault();
            // create dashbaord TO DO

            //spinner.spin(spinnerTarget);
            //console.log($(this).children('a')[0]['href']);
            //window.location.href = $(this).children('a')[0]['href'];
        });
    });

    $('body').trigger('glossaryUpdate', list);
    
}

map.on('draw:created', function (e) {
    // take map out of draw mode
    $("#draw-on-map").removeClass("active");
    map.removeLayer(drawBackgroundTiles);
    map.addLayer(regularBackgroundTiles);

    // show clear and make dashboard buttons
    $("#map-action-buttons").removeClass("hidden");

    drawnLayer = e.layer;
    map.addLayer(drawnLayer);
    drawnGeojson = drawnLayer.toGeoJSON();

    // create selections and store for mouseover    
    _.each(sumlevs,function(l) {
        l.layer.geojsonLayer.eachLayer(function(layer) {
            //console.log(layer);
            var tileGeojson = layer.toGeoJSON();
            //console.log(tileGeojson.geometry.geometries[0]);
            var intersection = turf.intersect(drawnGeojson, tileGeojson.geometry.geometries[0]);
            //console.log(intersection);
            if (intersection !== null) {
                layer.selected = true;
            } else {
                layer.selected = false;
            }
        });

    });

    // make a list of all possible geographies
    listGeograpies();



    drawToggle = false;
});



