var spinnerTarget = document.getElementById("body-spinner");
if (!spinnerTarget) {
    $('body').append('<div id="body-spinner"></div>');
    spinnerTarget = document.getElementById('body-spinner');
} 

var geoSearchAPI = FREE_TEXT_SEARCH_API_URL + '/2.1/full-text/search',
    geoSelect = $('.geography-select'),
    chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';
var wayneCountyCommission = false;
var policeDept = false;
var cityCouncil = false;

var geoSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
        url: geoSearchAPI,
        replace: function (url, query) {
            var re = new RegExp(query.toLowerCase().replace(/\s/g,''), 'g');
            // check query to see if district text shows up and print options
            
            if ('waynecountycommissiondistrict'.match(re)) {
                wayneCountyCommission = true;
            } else {
                wayneCountyCommission = false;
            }

            if ('detroitpolicedepartmentprecinct'.match(re)) {
                policeDept = true;
            } else {
                policeDept = false;
            }

            if ('detroitcitycouncildistrict'.match(re)) {
                cityCouncil = true;
            } else {
                cityCouncil = false;
            }

            var latitude = 42.3487;
            var longitude = -83.0587;
            chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';
            console.log(url += '?q=' + query + '&sumlevs=' + chosenSumlevAncestorList)
            return url += '?q=' + query + '&sumlevs=' + chosenSumlevAncestorList;
        },
        filter: function(response) {            
            var results = [];
            // remove any non-Michigan responses
            for (let i = 0; i < response.results.length; i++) {
                // all Michigan results have US26 as part of their geoID
                // all Michigan zip codes begin with 49 or 49
                // remove Places
                if ((response.results[i].full_geoid.search('US26') != -1 || response.results[i].full_geoid.search('86000US48') != -1 || response.results[i].full_geoid.search('86000US49') != -1) && response.results[i].sumlevel != '160') {
                    results.push(response.results[i]);
                }
            }
            _.map(results, function(item) {
                item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
                item['url'] = '/profiles/' + item['full_geoid'] + '-' + slugify(item['full_name']);
            })
            // check against arrays of geoIDs to see if we should add districts
            if (wayneCountyCommission) {
                results.push({full_geoid: "", full_name: "Wayne County Commission District 1", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-1'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 2", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-2'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 3", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-3'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 4", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-4'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 5", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-5'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 6", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-6'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 7", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-7'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 8", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-8'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 9", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-9'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 10", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-10'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 11", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-11'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 12", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-12'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 13", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-13'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 14", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-14'});
                results.push({full_geoid: "", full_name: "Wayne County Commission District 15", sumlevel: "", sumlev_name: "county commission district", url: '/districts/wayne-county-commission-district-15'});
            }

            if (cityCouncil) {
                results.push({full_geoid: "", full_name: "Detroit City Council District 1", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-1'});
                results.push({full_geoid: "", full_name: "Detroit City Council District 2", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-2'});  
                results.push({full_geoid: "", full_name: "Detroit City Council District 3", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-3'});  
                results.push({full_geoid: "", full_name: "Detroit City Council District 4", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-4'});  
                results.push({full_geoid: "", full_name: "Detroit City Council District 5", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-5'});  
                results.push({full_geoid: "", full_name: "Detroit City Council District 6", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-6'});  
                results.push({full_geoid: "", full_name: "Detroit City Council District 7", sumlevel: "", sumlev_name: "city council district", url: '/districts/detroit-city-council-district-7'});               
            }

            if (policeDept) {
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 2", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-2'});                
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 3", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-3'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 4", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-4'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 5", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-5'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 6", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-6'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 7", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-7'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 8", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-8'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 9", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-9'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 10", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-10'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 11", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-11'}); 
                results.push({full_geoid: "", full_name: "Detroit Police Department Precinct 12", sumlevel: "", sumlev_name: "police department precinct", url: '/districts/detroit-police-department-precinct-12'}); 
            }
            
            var resultNumber = results.length;
            if (resultNumber === 0) {
                results.push({
                    full_name: 'Sorry, no matches found. Try changing your search.'
                });
            }
            console.log(results);
            return results;
        }
    }
});
geoSelectEngine.initialize();

function makeGeoSelectWidget(element) {
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, [
    {
        name: 'profile',
        displayKey: 'full_name',
        source: geoSelectEngine.ttAdapter(),
        limit: 10,
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    }]);

    element.on('typeahead:selected', function(event, datum) {
        if (datum['url']) {
          event.stopPropagation();
          spinner.spin(spinnerTarget);
          window.location = datum['url'];
        }
    });
}

makeGeoSelectWidget(geoSelect);

