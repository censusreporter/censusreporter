var map = L.mapbox.map('slippy-map', 'censusreporter.map-j9q076fv', {
    scrollWheelZoom: false,
    zoomControl: false,
    doubleClickZoom: false,
    boxZoom: false,
    keyboard: false
});
map.setView([42.045416,-87.698978], 13);

map.addControl(new L.Control.Zoom({
    position: 'topright'
}));