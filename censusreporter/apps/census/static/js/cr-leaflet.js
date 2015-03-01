CensusReporter = {
    GeoIDLayer: L.GeoJSON.extend({
        addGeoID: function(geoid) {
            var request = new XMLHttpRequest();
            var url = this.options.api_url + "/1.0/geo/show/tiger2013?geo_ids=" + geoid;
            request.open('GET', url, true);
            var self = this;
            request.onreadystatechange = function() {
              if (this.readyState === 4) {
                if (this.status >= 200 && this.status < 400) {
                  // Success!
                  var data = JSON.parse(this.responseText);
                  self.addData(data);
                } else {
                  if (typeof(console) != 'undefined' && typeof(console.log) == 'function') {
                    console.log("Error ("+this.status+") getting data")
                    console.log(this.responseText)                        
                  }
                }
              }
            };
            request.send();
            request = null;
        },
        removeGeoID: function(geoid) {
            var layers = this.getLayers();
            for (var i = 0; i < layers.length; i++) {
                if (layers[i].feature.properties.geoid == geoid) {
                    this.removeLayer(layers[i]);
                    return layers[i];
                }
            }
            return null;
        },
        initialize: function(geoid_spec, options) {
            L.GeoJSON.prototype.initialize.call(this);
            var options = L.extend({
                api_url: 'http://api.censusreporter.org',
                censusreporter_url: 'http://censusreporter.org',
                autoclick: true
            }, options);
            if (options.autoclick) {
                var censusreporter_url = options.censusreporter_url;
                var autoclick_handler = function(data, layer) {
                    layer.on('click',function() {
                        window.open(censusreporter_url + "/profiles/" + data.properties.geoid);
                    });
                }
                if (options.onEachFeature) {
                    var old_handler = options.onEachFeature;
                    options.onEachFeature = function(data, layer) {
                        old_handler(data, layer);
                        autoclick_handler(data, layer);
                    }
                } else {
                    options.onEachFeature = autoclick_handler;
                }
            }
            this.options = options;
            this.addGeoID(geoid_spec);
        }
    })
}

CensusReporter.AjaxLayer = L.TileLayer.extend({
    _requests: [],
    _addTile: function (tilePoint) {
        var tile = { datum: null, processed: false };
        this._tiles[tilePoint.x + ':' + tilePoint.y] = tile;
        this._loadTile(tile, tilePoint);
    },
    // XMLHttpRequest handler; closure over the XHR object, the layer, and the tile
    _xhrHandler: function (req, layer, tile, tilePoint) {
        return function () {
            if (req.readyState !== 4) {
                return;
            }
            var s = req.status;
            if ((s >= 200 && s < 300) || s === 304) {
                tile.datum = JSON.parse(req.responseText);
                layer._tileLoaded(tile, tilePoint);
            } else {
                layer._tileLoaded(tile, tilePoint);
            }
        };
    },
    // Load the requested tile via AJAX
    _loadTile: function (tile, tilePoint) {
        this._adjustTilePoint(tilePoint);
        var layer = this;
        var req = new XMLHttpRequest();
        this._requests.push(req);
        req.onreadystatechange = this._xhrHandler(req, layer, tile, tilePoint);
        req.open('GET', this.getTileUrl(tilePoint), true);
        req.send();
    },
    _reset: function () {
        L.TileLayer.prototype._reset.apply(this, arguments);
        for (var i in this._requests) {
            this._requests[i].abort();
        }
        this._requests = [];
    },
    _update: function () {
        if (this._map._panTransition && this._map._panTransition._inProgress) { return; }
        if (this._tilesToLoad < 0) { this._tilesToLoad = 0; }
        L.TileLayer.prototype._update.apply(this, arguments);
    }
});


CensusReporter.GeoJSONLayer = CensusReporter.AjaxLayer.extend({
    // Store each GeometryCollection's layer by key, if options.unique function is present
    _keyLayers: {},

    // Used to calculate svg path string for clip path elements
    _clipPathRectangles: {},

    initialize: function (url, options, geojsonOptions) {
        CensusReporter.AjaxLayer.prototype.initialize.call(this, url, options);
        this.geojsonLayer = new L.GeoJSON(null, geojsonOptions);
    },
    onAdd: function (map) {
        this._map = map;
        CensusReporter.AjaxLayer.prototype.onAdd.call(this, map);
        map.addLayer(this.geojsonLayer);
    },
    onRemove: function (map) {
        map.removeLayer(this.geojsonLayer);
        CensusReporter.AjaxLayer.prototype.onRemove.call(this, map);
    },
    _reset: function () {
        this.geojsonLayer.clearLayers();
        this._keyLayers = {};
        this._removeOldClipPaths();
        CensusReporter.AjaxLayer.prototype._reset.apply(this, arguments);
    },

    // Remove clip path elements from other earlier zoom levels
    _removeOldClipPaths: function  () {
        for (var clipPathId in this._clipPathRectangles) {
            var clipPathZXY = clipPathId.split('_').slice(1);
            var zoom = parseInt(clipPathZXY[0], 10);
            if (zoom !== this._map.getZoom()) {
                var rectangle = this._clipPathRectangles[clipPathId];
                this._map.removeLayer(rectangle);
                var clipPath = document.getElementById(clipPathId);
                if (clipPath !== null) {
                    clipPath.parentNode.removeChild(clipPath);
                }
                delete this._clipPathRectangles[clipPathId];
            }
        }
    },

    // Recurse LayerGroups and call func() on L.Path layer instances
    _recurseLayerUntilPath: function (func, layer) {
        if (layer instanceof L.Path) {
            func(layer);
        }
        else if (layer instanceof L.LayerGroup) {
            // Recurse each child layer
            layer.getLayers().forEach(this._recurseLayerUntilPath.bind(this, func), this);
        }
    },

    _clipLayerToTileBoundary: function (layer, tilePoint) {
        // Only perform SVG clipping if the browser is using SVG
        if (!L.Path.SVG) { return; }

        var svg = this._map._pathRoot;

        // create the defs container if it doesn't exist
        var defs = null;
        if (svg.getElementsByTagName('defs').length === 0) {
            defs = document.createElementNS(L.Path.SVG_NS, 'defs');
            svg.insertBefore(defs, svg.firstChild);
        }
        else {
            defs = svg.getElementsByTagName('defs')[0];
        }

        // Create the clipPath for the tile if it doesn't exist
        var clipPathId = 'tileClipPath_' + tilePoint.z + '_' + tilePoint.x + '_' + tilePoint.y;
        var clipPath = document.getElementById(clipPathId);
        if (clipPath === null) {
            clipPath = document.createElementNS(L.Path.SVG_NS, 'clipPath');
            clipPath.id = clipPathId;

            // Create a hidden L.Rectangle to represent the tile's area
            var tileSize = this.options.tileSize,
            nwPoint = tilePoint.multiplyBy(tileSize),
            sePoint = nwPoint.add([tileSize, tileSize]),
            nw = this._map.unproject(nwPoint),
            se = this._map.unproject(sePoint);
            this._clipPathRectangles[clipPathId] = new L.Rectangle(new L.LatLngBounds([nw, se]), {
                opacity: 0,
                fillOpacity: 0,
                clickable: false,
                noClip: true
            });
            this._map.addLayer(this._clipPathRectangles[clipPathId]);

            // Add a clip path element to the SVG defs element
            // With a path element that has the hidden rectangle's SVG path string  
            var path = document.createElementNS(L.Path.SVG_NS, 'path');
            var pathString = this._clipPathRectangles[clipPathId].getPathString();
            path.setAttribute('d', pathString);
            clipPath.appendChild(path);
            defs.appendChild(clipPath);
        }

        // Add the clip-path attribute to reference the id of the tile clipPath
        this._recurseLayerUntilPath(function (pathLayer) {
            pathLayer._container.setAttribute('clip-path', 'url(#' + clipPathId + ')');
        }, layer);
    },

    // Add a geojson object from a tile to the GeoJSON layer
    // * If the options.unique function is specified, merge geometries into GeometryCollections
    // grouped by the key returned by options.unique(feature) for each GeoJSON feature
    // * If options.clipTiles is set, and the browser is using SVG, perform SVG clipping on each
    // tile's GeometryCollection 
    addTileData: function (geojson, tilePoint) {
        var features = L.Util.isArray(geojson) ? geojson : geojson.features,
            i, len, feature;

        if (features) {
            for (i = 0, len = features.length; i < len; i++) {
                // Only add this if geometry or geometries are set and not null
                feature = features[i];
                if (feature.geometries || feature.geometry || feature.features || feature.coordinates) {
                    this.addTileData(features[i], tilePoint);
                }
            }
            return this;
        }

        var options = this.geojsonLayer.options;

        if (options.filter && !options.filter(geojson)) { return; }

        var parentLayer = this.geojsonLayer;
        var incomingLayer = null;
        if (this.options.unique && typeof(this.options.unique) === 'function') {
            var key = this.options.unique(geojson);

            // When creating the layer for a unique key,
            // Force the geojson to be a geometry collection
            if (!(key in this._keyLayers && geojson.geometry.type !== 'GeometryCollection')) {
                geojson.geometry = {
                    type: 'GeometryCollection',
                    geometries: [geojson.geometry]
                };
            }

            // Transform the geojson into a new Layer
            try {
                incomingLayer = L.GeoJSON.geometryToLayer(geojson, options.pointToLayer, options.coordsToLatLng);
            }
            // Ignore GeoJSON objects that could not be parsed
            catch (e) {
                return this;
            }

            // Add the incoming Layer to existing key's GeometryCollection
            if (key in this._keyLayers) {
                parentLayer = this._keyLayers[key];
                parentLayer.feature.geometry.geometries.push(geojson.geometry);
            }
            // Convert the incoming GeoJSON feature into a new GeometryCollection layer
            else {
                incomingLayer.feature = L.GeoJSON.asFeature(geojson);
                this._keyLayers[key] = incomingLayer;
            }
        }
        // Add the incoming geojson feature to the L.GeoJSON Layer
        else {
            // Transform the geojson into a new layer
            try {
                incomingLayer = L.GeoJSON.geometryToLayer(geojson, options.pointToLayer, options.coordsToLatLng);
            }
            // Ignore GeoJSON objects that could not be parsed
            catch (e) {
                return this;
            }
            incomingLayer.feature = L.GeoJSON.asFeature(geojson);
        }
        incomingLayer.defaultOptions = incomingLayer.options;

        this.geojsonLayer.resetStyle(incomingLayer);

        if (options.onEachFeature) {
            options.onEachFeature(geojson, incomingLayer);
        }
        parentLayer.addLayer(incomingLayer);

        // If options.clipTiles is set and the browser is using SVG
        // then clip the layer using SVG clipping
        if (this.options.clipTiles) {
            this._clipLayerToTileBoundary(incomingLayer, tilePoint);
        }
        return this;
    },

    _tileLoaded: function (tile, tilePoint) {
        CensusReporter.AjaxLayer.prototype._tileLoaded.apply(this, arguments);
        if (tile.datum === null) { return null; }
        this.addTileData(tile.datum, tilePoint);
    }
});

CensusReporter.SummaryLevelLayer = CensusReporter.GeoJSONLayer.extend({
    summary_levels: {
        '020': 'region',
        '030': 'division',
        '040': 'state',
        '050': 'county',
        '060': 'county subdivision',
        '140': 'census tract',
        '150': 'block group',
        '160': 'place',
        '170': 'consolidated city',
        '230': 'Alaska native regional corporation',
        '250': 'native area',
        '251': 'tribal subdivision',
        '256': 'tribal tract',
        '310': 'metro area (CBSA)',
        '314': 'metropolitan division',
        '330': 'combined statistical area',
        '335': 'combined NECTA',
        '350': 'NECTA',
        '364': 'NECTA division',
        '400': 'urban area',
        '500': 'congressional district',
        '610': 'state house (upper)',
        '620': 'state house (lower)',
        '795': 'PUMA',
        '860': 'ZIP code',
        '950': 'school district (elementary)',
        '960': 'school district (secondary)',
        '970': 'school district (unified)'
    },

    _defaultOptions: {
        clipTiles: true,
        unique: function(feature) {
            return feature.properties.geoid;
        }
    },
    _defaultFeatureStyle: {
        "clickable": true,
        "color": "#00d",
        "fillColor": "#ccc",
        "weight": 1.0,
        "opacity": 0.3,
        "fillOpacity": 0.3,
    },
    _defaultGeojsonOptions: {
        onEachFeature: function(feature, layer) {
            // you can wire behavior to each "feature", or place outline.
            var profileURL = 'http://censusreporter.org/profiles/' + feature.properties.geoid;
            layer.bindPopup("<a href='" + profileURL + "'>" + feature.properties.name + "</a>");
            if (this.style && this.mouseoverStyle) {
                layer.on('mouseover', function() {
                    layer.setStyle(this.mouseoverStyle);
                });
                layer.on('mouseout', function() {
                    layer.setStyle(this.style);
                });
            }
        }
    },

    initialize: function (summary_level, options, geojsonOptions) {
        if (typeof(this.summary_levels[summary_level]) == "undefined") {
            throw "Unsupported or invalid summary level."
        }

        var url = 'http://embed.censusreporter.org/1.0/geo/tiger2013/tiles/' + summary_level + '/{z}/{x}/{y}.geojson';

        options = L.Util.extend(this._defaultOptions, options);
        geojsonOptions = L.Util.extend(this._defaultGeojsonOptions, geojsonOptions);

        if (!('style' in geojsonOptions)) {
            geojsonOptions.style = this._defaultFeatureStyle;
        }
        CensusReporter.GeoJSONLayer.prototype.initialize.call(this, url, options, geojsonOptions);

        if ('style' in geojsonOptions) {
            this.style = geojsonOptions.style;
        }

        if ('mouseoverStyle' in options) {
            this.mouseoverStyle = options.mouseoverStyle;
        }
    },
});

