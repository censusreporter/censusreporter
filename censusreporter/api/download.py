import shutil
import tempfile
import os

supported_formats = {
    #'shp':      {"driver": "ESRI Shapefile"},
    #'kml':      {"driver": "KML"},
    #'geojson':  {"driver": "GeoJSON"},
    'xlsx':     {"driver": "XLSX", 'mime': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'},
    'csv':      {"driver": "CSV", 'mime': 'text/csv'},
}

def generate_download_bundle(tables, geos, data, fmt):
    import ogr
    import osr

    # where we're going to put the data temporarily
    temp_path = tempfile.mkdtemp()
    try:
        file_ident = "%s_%s" % (tables[0].id.upper(), geos[0].short_name)
        out_filename = '%s.%s' % (file_ident, fmt)
        out_filepath = os.path.join(temp_path, out_filename)

        ogr.UseExceptions()

        out_driver = ogr.GetDriverByName(supported_formats[fmt]['driver'])
        out_srs = osr.SpatialReference()
        out_srs.ImportFromEPSG(4326)
        out_data = out_driver.CreateDataSource(out_filepath)
        try:
            # See http://gis.stackexchange.com/questions/53920/ogr-createlayer-returns-typeerror
            # excel limits worksheet names to 31 chars
            out_layer = out_data.CreateLayer(file_ident.encode('utf-8')[0:31], srs=out_srs, geom_type=ogr.wkbMultiPolygon)
            out_layer.CreateField(ogr.FieldDefn('geo_level', ogr.OFTString))
            out_layer.CreateField(ogr.FieldDefn('geo_code', ogr.OFTString))
            out_layer.CreateField(ogr.FieldDefn('geoid', ogr.OFTString))
            out_layer.CreateField(ogr.FieldDefn('name', ogr.OFTString))

            for table in tables:
                for column_id, column_info in table.columns.iteritems():
                    out_layer.CreateField(ogr.FieldDefn(str(column_id), ogr.OFTReal))

            for geo in geos:
                geoid = geo.full_geoid

                out_feat = ogr.Feature(out_layer.GetLayerDefn())
                # XXX: need to get the geometry from somewhere
                #out_feat.SetGeometry(in_feat.GetGeometryRef())
                out_feat.SetField2('geo_level', geo.level)
                out_feat.SetField2('geo_code', geo.code)
                out_feat.SetField2('geoid', geoid)
                out_feat.SetField2('name', geo.short_name)

                for table in tables:
                    table_estimates = data[geoid][table.id.upper()]['estimate']

                    for column_id, column_info in table.columns.iteritems():
                        if column_id in table_estimates:
                            # GDAL generates invalid excel spreadsheets for
                            # zero values in real columns
                            if fmt == 'xlsx' and table_estimates[column_id] == 0:
                                continue
                            out_feat.SetField(str(column_id), table_estimates[column_id])

                out_layer.CreateFeature(out_feat)
        finally:
            out_data.Destroy()

        with open(out_filepath) as f:
            content = f.read()
            return content, out_filename, supported_formats[fmt]['mime']
    finally:
        shutil.rmtree(temp_path)
