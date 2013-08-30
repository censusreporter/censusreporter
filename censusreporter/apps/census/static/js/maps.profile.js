var map = L.map('slippy-map', {
    scrollWheelZoom: false,
    zoomControl: false
}).setView([42.045416,-87.698978], 13);

map.addControl(new L.Control.Zoom({
    position: 'topright'
}));

L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; OpenStreetMap.org',
    maxZoom: 19
}).addTo(map);