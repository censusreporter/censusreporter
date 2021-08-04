import JSZip from "jszip/dist/jszip" // https://github.com/Stuk/jszip/issues/673
import { open as openShapefile } from 'shapefile'
import { toWgs84 } from './reproject'
import { bbox, area as turfArea, pointToLineDistance } from '@turf/turf'
import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"

window.toWgs84 = toWgs84
window.bbox = bbox
window.turfArea = turfArea

const MAXIMUM_AREA_IN_SQ_M = 2000000000; // only 5 Census places are larger than 2 billion sq m.
const EASING = {
    'InOutSine': (x) => -(Math.cos(Math.PI * x) - 1) / 2
}

const FIT_BOUNDS_OPTIONS = {
    padding: 30,
    linear: false,
    duration: 1250,
    easing: EASING.InOutSine
}

/**
 * Add the given geojson to the given map, and do some clean-up. Geojson 
 * should be in WGS84 projection already.
 * @param geojson 
 * @param map 
 */
function addGeojsonToMap(geojson, map) {
    document.querySelector('#intro-explainer').classList.add('hidden')

    for (let popup of document.getElementsByClassName('mapboxgl-popup')) {
        popup.remove()
    }

    map.getSource('user-geo').setData(geojson)
    let bb = geojson.bbox || bbox(geojson)
    if (bb && bb.length && bb.length > 0 && isFinite(bb[0])) {
        // if we add empty geojson the bbox is infinite
        map.fitBounds(bb, FIT_BOUNDS_OPTIONS)
        updateDetailsForm(geojson)
    }
}

/**
 * Given a GeoJSON object, introspect it to find the property fields and set up the menus 
 * so that users can specify name and ID fields.
 * @param geojson
 */
function updateDetailsForm(geojson) {
    let options = []
    if (geojson.features && geojson.features.length > 0) {
        let p = geojson.features[0].properties;
        options.push(['', ' -- none -- '])
        Object.keys(p).forEach(k => options.push([k, k]))
    } else {
        options.push(['', 'No fields found'])
    }
    let name_field = document.querySelector('select#name_field')
    while (name_field.hasChildNodes()) name_field.firstChild.remove()
    let id_field = document.querySelector('select#id_field')
    while (id_field.hasChildNodes()) id_field.firstChild.remove()
    options.forEach(pair => {
        [name_field, id_field].forEach(f => {
            let opt = document.createElement('option')
            opt.value = pair[0]
            opt.label = pair[1]
            f.appendChild(opt)
        })
    })
    showDetailsForm()
}

window.addGeojsonToMap = addGeojsonToMap

function showFileUploadMessage(msg) {
    const msgDiv = document.querySelector('#file-upload-message')
    msgDiv.textContent = msg
    msgDiv.classList.remove('hidden')
}

function hideFileUploadMessage() {
    const msgDiv = document.querySelector('#file-upload-message')
    msgDiv.classList.add('hidden')
}

const CLIENT_SIDE_VALIDATED_FIELDS = [
    'dataset_name', 'source_url', 'name_field', 'id_field'
]

function validateForm() {
    hideFileUploadMessage()
    if (!window.geojson) {
        showFileUploadMessage('No map data found to upload.')
        return false
    }

    let valid = true;
    CLIENT_SIDE_VALIDATED_FIELDS.forEach(elem_id => {
        const f = document.getElementById(elem_id)
        if (typeof(f.checkValidity) == 'function') {
            valid = valid && f.checkValidity()
        }
    })

    if (!valid) {
        showFileUploadMessage("Please fix the errors on the form, or clear out values if you'd rather skip it.")
        return false
    }

    return true
}


function clearDetailsForm() {
    CLIENT_SIDE_VALIDATED_FIELDS.forEach(elem_id => {
        const f = document.getElementById(elem_id)
        if (f.tagName == 'INPUT') {
            f.value = ''
        } else if (f.tagName == 'SELECT') {
            while (f.options.length > 1) {
                f.removeChild(f.options.item(1))
            }
        }
    })

}

function showDetailsForm() {
    document.querySelector('#details').classList.remove('hidden')
}

function hideDetailsForm() {
    document.querySelector('#details').classList.add('hidden')
}



function initMap(map, geojson) {
    if (!geojson) geojson = minimalFeatureCollection()
    map.addSource('user-geo', {
        'type': 'geojson',
        data: geojson
    })

    map.addLayer({
        id: `user-geo-fill`,
        type: 'fill',
        source: 'user-geo',
        paint: {
            'fill-color': '#333',
            'fill-opacity': 0.3
        }
    })
    map.addLayer({
        id: `user-geo-line`,
        type: 'line',
        source: 'user-geo',
        paint: {
            'line-color': '#333',
            'line-opacity': 1,
            'line-width': 1
        }
    })


    // When a click event occurs on a feature in the states layer,
    // open a popup at the location of the click, with description
    // HTML from the click event's properties.
    map.on('click', 'user-geo-fill', function(e) {
        let features = e.features || map.queryRenderedFeatures(e.point, { layers: ['user-geo-fill'] })
        if (features && features[0].properties) {
            let html = Object.entries(features[0].properties).map(([k, v]) => `<b>${k}:</b> ${v}`)
            new mapboxgl.Popup()
                .setLngLat(e.lngLat)
                .setHTML(html.join('<br>'))
                .addTo(map);
        }
    });

    // Change the cursor to a pointer when
    // the mouse is over the states layer.
    map.on('mouseenter', 'user-geo-fill', function() {
        map.getCanvas().style.cursor = 'pointer';
    });

    // Change the cursor back to a pointer
    // when it leaves the states layer.
    map.on('mouseleave', 'user-geo-fill', function() {
        map.getCanvas().style.cursor = '';
    });
}

window.addEventListener("DOMContentLoaded", e => {

    document.querySelectorAll('.import-geojson-button').forEach(e => {
        e.addEventListener('click', () => {
            if (validateForm()) {
                const metadata = {
                    dataset_name: document.getElementById('dataset_name').value || null,
                    source_url: document.getElementById('source_url').value || null,
                    name_field: document.getElementById('name_field').value || null,
                    id_field: document.getElementById('id_field').value || null,

                }
                importGeoJSON(geojson, metadata)
            }
        })

    })

    const inputElement = document.getElementById("file-picker");
    if (inputElement) {
        inputElement.addEventListener("change", handleFiles, false);
    }

    mapboxgl.accessToken = 'pk.eyJ1IjoiY2Vuc3VzcmVwb3J0ZXIiLCJhIjoiM3BfZ080cyJ9.1qg3pnpZZP5-iLWMNoaLIQ';
    var map = new mapboxgl.Map({
        container: 'map', // container id
        style: 'mapbox://styles/censusreporter/ckfyfj0v707ob19qdo047ndoq', // style URL
        center: [-87.750691, 41.976544], // starting position [lng, lat]
        zoom: 9 // starting zoom
    });
    map.on('style.load', () => initMap(map))
    window.map = map;

    function featureCollectionHandler(fc) {
        fc.type = 'FeatureCollection'
        fc.features = []
        return async function(source) {
            fc.bbox = source.bbox
            return source.read().then(function(result) {
                if (result.done) return fc;
                fc.features.push(result.value)
                return source.read().then(function repeat(result) {
                    if (result.done) return fc;
                    fc.features.push(result.value)
                    return source.read().then(repeat);
                });
            });
        }
    }

    async function readShapefile(obj) {

        let fc = minimalFeatureCollection()
        const fcHandler = featureCollectionHandler(fc)
        return Promise.all([
            obj.shp.async('arrayBuffer'),
            obj.dbf.async('arrayBuffer')
        ]).then(ary => {
            return openShapefile(...ary)
        }).then(fcHandler).then(_ => {
            return fc
        })
    }

    window.readShapefile = readShapefile


    /**
     * 
     * @param zipfile_dict {Object} an object with filenames for keys and readable streams representing the contents of those streams
     * @returns {Object} a new object with keys of 'shp', and if found, 'dbf', and 'prj', each of which points to the stream representing that feature of the ZIP file. 
     * @throws {String} Error messages representing various invalid conditions.
     */
    function validateShapefileZip(zipfile_dict) {
        let shp_files = []
        let basename = null;
        Object.keys(zipfile_dict).forEach(f => {
            if (f.match(/^([a-zA-Z0-9]+.*)\.shp$/i)) {
                shp_files.push(f)
                basename = f.match(/^([a-zA-Z0-9]+.*)\.shp$/i)[1]
            }
        })
        if (shp_files.length == 0) {
            throw `Uploaded ZIP file does not contain any files with .shp extension.`
        } else if (shp_files.length > 1) {
            throw `Uploaded ZIP file has multiple files with .shp extension.`
        }
        // put the relevant files into a consistent place regardless of the basename for later handling
        const files = {}
        Object.keys(zipfile_dict).forEach(f => {
            if (f.match(/^[a-zA-Z0-9]+.*\.(shp|dbf|prj)$/i)) {
                if (f.indexOf(basename) == 0) {
                    const ext = f.match(/.*\.(.+)$/)[1].toLowerCase()
                    if (zipfile_dict[ext]) {
                        throw `Uploaded ZIP file contains multiple entries with [${ext}] extension. ZIPs should have only one set of shapefile files.`
                    }
                    files[ext] = zipfile_dict[f]
                }
            }
        })
        return files
    }

    function handleFiles() {
        hideFileUploadMessage()
        addGeojsonToMap(minimalFeatureCollection(), map)
        clearDetailsForm()
        hideDetailsForm()
        if (this.files.length > 0) {
            const file = this.files.item(0);
            if (file.type && ['application/zip', 'application/json'].indexOf(file.type) == -1) {
                console.log(`Invalid upload type ${file.type}`)
                showFileUploadMessage("Uploaded file must be either a ZIP file or GeoJSON.")
                return;
            }
            if (file.type == 'application/zip') {
                file.arrayBuffer().then(JSZip.loadAsync).then(zip => {
                    window.stash = zip
                    const files = validateShapefileZip(zip.files)

                    if (!files.shp) {
                        throw 'Uploaded ZIP file must contain a file with .shp extension'
                    }

                    if (files.prj) {
                        files.prj.async('string').then(prj => {
                            readShapefile(files).then(geojson => {
                                geojson = toWgs84(geojson, prj)
                                window.geojson = geojson
                                if (geojson.features.length > 0) {
                                    if (turfArea(geojson) > MAXIMUM_AREA_IN_SQ_M) throw 'Uploaded map area is too large.'
                                    addGeojsonToMap(geojson, map)
                                } else {
                                    console.log(`no features, but prj ${prj}`)
                                }
                            }).catch(e => showFileUploadMessage(e))
                        })
                    } else {
                        readShapefile(files).then(geojson => {
                            if (geojson.features.length > 0) {
                                if (turfArea(geojson) > MAXIMUM_AREA_IN_SQ_M) throw 'Uploaded map area is too large.'
                                console.log(`Adding to map in given projection`)
                                addGeojsonToMap(geojson, map)
                            } else {
                                console.log(`no features, and no prj`)
                            }
                        }).catch(e => showFileUploadMessage(e))
                    }


                }).catch(e => showFileUploadMessage(e))
            } else if (probablyJson(file)) {
                file.text().then(geojson => {
                    const parsed = JSON.parse(geojson);
                    window.geojson = parsed;
                    addGeojsonToMap(parsed, map)
                })
            }

        }

    }

})

function probablyJson(file) {
    if (file.type == 'application/json') return true;
    if (file.name.match(/.*\.(.+)$/)) {
        const ext = file.name.match(/.*\.(.+)$/)[1].toLowerCase()
        return (ext == 'json' || ext == 'geojson')
    }
    return false;
}

function minimalFeatureCollection() {
    return {
        'type': 'FeatureCollection',
        'bbox': '',
        'features': []
    };
}

function setLoading(bool) {
    var e = document.getElementById('loading-indicator')
    if (bool) {
        e.classList.add('loading')
    } else {
        e.classList.remove('loading')
    }
}

window.turfArea = turfArea

function importGeoJSON(geojson, metadata) {
    if (!metadata) metadata = {}
    var request = new XMLHttpRequest();
    const name = metadata.dataset_name || 'Untitled'
    console.log(`${name} Input geojson total area is ${turfArea(geojson)} sq. meters`)
    request.open('POST', `${CR_API_URL}/1.0/user_geo/import`, true);
    request.setRequestHeader('Content-Type', 'application/json');
    request.onload = function() {
        console.log('------------------')
        let response = JSON.parse(this.response)
        if (response.ok && response.hash_digest) {
            window.location.href += response.hash_digest
        } else {
            console.log('error importing')
            console.log(response)
            setLoading(false)
            showFileUploadMessage(response.message)
            window.stash = response
        }
    }
    request.onerror = function(evt) {
        console.log(`Error importing GeoJSON ${evt}`)
        console.log(evt)
        setLoading(false)
        showFileUploadMessage("An unexpected error occurred.")
    }
    let data = {
        geojson: geojson,
        dataset_name: metadata.dataset_name,
        source_url: metadata.source_url,
        name_field: metadata.name_field,
        id_field: metadata.id_field
    }

    clearDetailsForm()
    hideDetailsForm()
    setLoading(true)

    request.send(JSON.stringify(data));
}

function extractProperties(geoJSON) {
    let headers = []
    let data = []

    if (geoJSON.features.length > 0 && geoJSON.features[0].properties) {
        headers = Object.keys(geojson.features[0].properties)
        geoJSON.features.forEach(f => {
            data.push(headers.map(h => f.properties[h]))
        })
    }
    return {
        headers: headers,
        data: data
    }
}

window.importGeoJSON = importGeoJSON

if (module.hot) {
    module.hot.accept();
}