/* Interactive ACS aggregation for an arbitrary geometry.
 *
 * Lets the user draw or upload a polygon, then calls the census-api endpoint
 * POST /1.0/aggregate/acs/<release> to total ACS estimates (and combine their
 * margins of error) across the overlapping geographies of a chosen level.
 *
 * Deliberately dependency-light (vanilla JS + Leaflet/Leaflet.draw globals) so
 * it needs no Parcel build step.
 */
(function () {
  "use strict";

  var API_URL = window.CR_API_URL || "https://api.censusreporter.org";

  var map = L.map("map").setView([39.8283, -98.5795], 4);
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    maxZoom: 19,
    attribution: "&copy; OpenStreetMap contributors"
  }).addTo(map);

  var drawnItems = new L.FeatureGroup().addTo(map);
  var drawControl = new L.Control.Draw({
    edit: { featureGroup: drawnItems },
    draw: {
      polygon: { allowIntersection: false, showArea: true },
      rectangle: {},
      polyline: false, circle: false, marker: false, circlemarker: false
    }
  });
  map.addControl(drawControl);

  var lastResult = null;
  var debounceTimer = null;

  // --- geometry helpers -----------------------------------------------------

  // Merge every polygon currently on the map into a single GeoJSON MultiPolygon
  // that we can POST as one geometry. (A true union isn't done client-side;
  // overlapping uploads are rare and the server's intersection test tolerates
  // a MultiPolygon with touching parts.)
  function currentGeometry() {
    var polys = [];
    drawnItems.eachLayer(function (layer) {
      var gj = layer.toGeoJSON();
      collectPolygons(gj, polys);
    });
    if (polys.length === 0) return null;
    return { type: "MultiPolygon", coordinates: polys };
  }

  function collectPolygons(geojson, out) {
    if (!geojson) return;
    if (geojson.type === "FeatureCollection") {
      geojson.features.forEach(function (f) { collectPolygons(f, out); });
    } else if (geojson.type === "Feature") {
      collectPolygons(geojson.geometry, out);
    } else if (geojson.type === "Polygon") {
      out.push(geojson.coordinates);
    } else if (geojson.type === "MultiPolygon") {
      geojson.coordinates.forEach(function (p) { out.push(p); });
    }
  }

  // --- map events -----------------------------------------------------------

  map.on(L.Draw.Event.CREATED, function (e) {
    drawnItems.addLayer(e.layer);
    scheduleRecompute();
  });
  map.on(L.Draw.Event.EDITED, scheduleRecompute);
  map.on(L.Draw.Event.DELETED, function () {
    if (drawnItems.getLayers().length === 0) {
      clearResults("Draw or upload a shape to begin.");
    } else {
      scheduleRecompute();
    }
  });

  // --- controls -------------------------------------------------------------

  var thresholdSlider = document.getElementById("threshold-slider");
  var thresholdValue = document.getElementById("threshold-value");
  thresholdSlider.addEventListener("input", function () {
    var pct = parseInt(thresholdSlider.value, 10);
    thresholdValue.textContent = pct === 0 ? "any" : pct + "% of area";
    scheduleRecompute();
  });
  document.getElementById("sumlevel-select").addEventListener("change", scheduleRecompute);
  document.getElementById("release-select").addEventListener("change", scheduleRecompute);
  document.getElementById("table-input").addEventListener("change", scheduleRecompute);

  document.getElementById("geojson-upload").addEventListener("change", function (evt) {
    var file = evt.target.files && evt.target.files[0];
    if (!file) return;
    var reader = new FileReader();
    reader.onload = function () {
      var parsed;
      try {
        parsed = JSON.parse(reader.result);
      } catch (err) {
        setStatus("Could not parse that file as GeoJSON.");
        return;
      }
      var layer = L.geoJSON(parsed);
      layer.eachLayer(function (l) { drawnItems.addLayer(l); });
      try { map.fitBounds(drawnItems.getBounds()); } catch (e) { /* empty */ }
      scheduleRecompute();
    };
    reader.readAsText(file);
  });

  document.getElementById("download-csv").addEventListener("click", downloadCsv);

  // --- compute --------------------------------------------------------------

  function scheduleRecompute() {
    if (debounceTimer) clearTimeout(debounceTimer);
    debounceTimer = setTimeout(recompute, 350);
  }

  function parseTableIds() {
    return document.getElementById("table-input").value
      .split(",")
      .map(function (t) { return t.trim().toUpperCase(); })
      .filter(function (t) { return t.length > 0; });
  }

  function recompute() {
    var geometry = currentGeometry();
    if (!geometry) return;
    var tableIds = parseTableIds();
    if (tableIds.length === 0) {
      setStatus("Enter at least one table ID (e.g. B01001).");
      return;
    }

    var release = document.getElementById("release-select").value;
    var sumlevel = document.getElementById("sumlevel-select").value;
    var threshold = parseInt(thresholdSlider.value, 10) / 100;

    setStatus("Calculating…");
    fetch(API_URL + "/1.0/aggregate/acs/" + release, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        geometry: geometry,
        table_ids: tableIds,
        sumlevel: sumlevel,
        threshold: threshold
      })
    })
      .then(function (resp) {
        return resp.json().then(function (body) {
          return { ok: resp.ok, body: body };
        });
      })
      .then(function (r) {
        if (!r.ok) {
          setStatus(r.body && r.body.error ? r.body.error : "Request failed.");
          return;
        }
        lastResult = r.body;
        render(r.body);
      })
      .catch(function () {
        setStatus("Network error contacting the API.");
      });
  }

  // --- rendering ------------------------------------------------------------

  function setStatus(msg) {
    document.getElementById("agg-status").textContent = msg;
  }

  function clearResults(statusMsg) {
    lastResult = null;
    document.getElementById("results").innerHTML = "";
    document.getElementById("suppressed-note").innerHTML = "";
    document.getElementById("component-summary").textContent = "";
    document.getElementById("download-csv").style.display = "none";
    setStatus(statusMsg || "");
  }

  function fmt(n) {
    if (n === null || n === undefined || n === "") return "—";
    return Math.round(n).toLocaleString();
  }

  function cvClass(estimate, moe) {
    if (!estimate || estimate === 0) return "";
    var cv = (moe / 1.645) / estimate; // coefficient of variation
    if (cv <= 0.15) return "cv-low";
    if (cv <= 0.30) return "cv-med";
    return "cv-high";
  }

  function render(result) {
    var n = result.components ? result.components.length : 0;
    var levelLabel = document.querySelector("#sumlevel-select option:checked").textContent.toLowerCase();
    var names = (result.components || []).slice(0, 5).map(function (c) { return c.name; });
    var more = n > 5 ? " and " + (n - 5) + " more" : "";
    document.getElementById("component-summary").textContent =
      n + " " + levelLabel + " combined (" + result.release_name + ")" +
      (names.length ? ": " + names.join(", ") + more : "");
    setStatus("");

    var container = document.getElementById("results");
    container.innerHTML = "";
    var suppressedAll = [];

    Object.keys(result.tables).forEach(function (tableId) {
      var t = result.tables[tableId];
      var block = document.createElement("div");
      block.className = "table-block";

      var h = document.createElement("h3");
      h.textContent = tableId + ". " + (t.title || "");
      block.appendChild(h);

      var table = document.createElement("table");
      table.className = "agg-table";
      table.innerHTML = "<thead><tr><th>Column</th><th>Estimate</th><th>MoE</th></tr></thead>";
      var tbody = document.createElement("tbody");

      Object.keys(t.estimate).forEach(function (colId) {
        var est = t.estimate[colId];
        var moe = t.error[colId];
        var meta = (result.column_meta && result.column_meta[colId]) || {};
        var tr = document.createElement("tr");
        var label = meta.name || colId;
        var indentClass = meta.indent ? " indent-" + Math.min(meta.indent, 3) : "";
        tr.innerHTML =
          '<td class="' + indentClass.trim() + '">' + escapeHtml(label) + '</td>' +
          '<td class="num ' + cvClass(est, moe) + '">' + fmt(est) + '</td>' +
          '<td class="num moe">&plusmn;' + fmt(moe) + '</td>';
        tbody.appendChild(tr);
      });
      table.appendChild(tbody);
      block.appendChild(table);
      container.appendChild(block);

      (t.suppressed || []).forEach(function (s) {
        suppressedAll.push(tableId + " " + s.column_id + ": " + s.reason);
      });
    });

    var note = document.getElementById("suppressed-note");
    if (suppressedAll.length) {
      note.innerHTML = "<strong>Not aggregated (not additive across geographies):</strong><br>" +
        suppressedAll.map(escapeHtml).join("<br>");
    } else {
      note.innerHTML = "";
    }

    document.getElementById("download-csv").style.display = n > 0 ? "inline-block" : "none";
  }

  function escapeHtml(s) {
    return String(s).replace(/[&<>"']/g, function (c) {
      return { "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c];
    });
  }

  function downloadCsv() {
    if (!lastResult) return;
    var rows = [["table_id", "column_id", "estimate", "margin_of_error"]];
    Object.keys(lastResult.tables).forEach(function (tableId) {
      var t = lastResult.tables[tableId];
      Object.keys(t.estimate).forEach(function (colId) {
        rows.push([tableId, colId, t.estimate[colId], t.error[colId]]);
      });
    });
    var csv = rows.map(function (r) {
      return r.map(function (v) { return '"' + String(v) + '"'; }).join(",");
    }).join("\n");
    var blob = new Blob([csv], { type: "text/csv" });
    var a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = "acs_aggregate.csv";
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
  }
})();
