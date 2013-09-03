var map = L.mapbox.map('slippy-map', 'iandees.map-b7tobml9', {
    scrollWheelZoom: false,
    zoomControl: false
});
map.setView([42.045416,-87.698978], 13);

map.addControl(new L.Control.Zoom({
    position: 'topright'
}));