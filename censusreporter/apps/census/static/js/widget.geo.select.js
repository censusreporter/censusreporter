var textmatchAPI = '/place-search/json/',
    geocodingAPI = 'http://wards.code4sa.org/',
    resultTemplate = '<p class="result-name"><span class="result-type">{{geo_level}}</span>{{full_name}}</p>',
    geoSelect = $('#geography-select, #geography-select-home');


// contains geoid of each item in the current typeahead selection
var remote_data = {};

function addRemoteItem(full_geoid) {
    if (!(full_geoid in remote_data)) {
        remote_data[full_geoid] = 1;
        return true;
    }
    return false;
}

function makeGeoSelectWidget(element) {
    baseAttributes = {
        valueKey: 'full_geoid',
        nameKey: 'full_name',
        limit: 20,
        template: resultTemplate,
        engine: Hogan
    };

    element.typeahead([
        // get textual matches from host
        $.extend({}, baseAttributes, {
            name: 'textmatch',
            remote: {
                url: textmatchAPI,
                replace: function(url, uriEncodedQuery) {
                    return url += '?q=' + uriEncodedQuery;
                },
                filter: function(response) {
                    var deduped_items = [];
                    response.results.map(function(item) {
                        if (addRemoteItem(item['full_geoid'])) {
                            deduped_items.push(item);
                        }
                    });
                    return deduped_items;
                }
            }
        }),
        // get geocoded matches from ward API
        $.extend({}, baseAttributes, {
            name: 'geocoded',
            remote: {
                url: geocodingAPI,
                replace: function(url, uriEncodedQuery) {
                    return url += '?address=' + uriEncodedQuery + '&database=wards_2011';
                },
                filter: function(response) {
                    if (response.error !== undefined) return [];

                    var deduped_items = [];
                    response.map(function(item) {
                        var full_geoid = 'ward-' + item['ward'];
                        if (addRemoteItem(full_geoid)) {
                            deduped_items.push({
                                full_name: ['Ward ' + item['wards_no'] + ' (' + item['ward'] + ')',
                                            item['municipality'], item['province']].join(', '),
                                full_geoid: full_geoid,
                                geo_level: 'ward',
                                geo_code: item['ward'],
                            });
                        }
                    });
                    return deduped_items;
                },
                dataType: 'jsonp',  // allow cross domain request
            }
        })]
    );

    $(document).ajaxSend(function(e, xhr_obj, settings) {
        if (settings.url.indexOf(textmatchAPI) > -1 ||
            settings.url.indexOf(geocodingAPI) > -1) {
            remote_data = {};
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        element.typeahead('setQuery', datum['full_name']);
        window.location = '/profiles/' + datum['full_geoid'] + '/';
    });
}

makeGeoSelectWidget(geoSelect);
