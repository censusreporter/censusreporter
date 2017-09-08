// powers the topic picker on profile pages

// the template including this should set the following vars:
// var thisGeoID = '{{ geography.this.full_geoid }}',
//     placeGeoID = '{{ geography.parents.place.full_geoid }}',
//     CBSAGeoID = '{{ geography.parents.CBSA.full_geoid }}',
//     countyGeoID = '{{ geography.county.full_geoid }}',
//     stateGeoID = '{{ geography.state.full_geoid }}',
//     nationGeoID = '{{ geography.nation.full_geoid }}';

var spinnerTarget = document.getElementById("body-spinner");
if (!spinnerTarget) {
    $('body').append('<div id="body-spinner"></div>');
    spinnerTarget = document.getElementById('body-spinner');
} 

var theseGeoIDs = [thisGeoID, placeGeoID, CBSAGeoID, countyGeoID, stateGeoID, nationGeoID].filter(function(n){return n}),
    chosenTableID = chosenTableID || null,
    topicSelect = $('#topic-select');

var tableSearchAPI = CR_API_URL + '/1.0/table/search',
    rootGeoAPI = CR_API_URL + '/1.0/geo/tiger2015/',
    dataAPI = CR_API_URL + '/1.0/data/show/latest',
    queryString;

var topicSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 1500,
    remote: {
        url: tableSearchAPI,
        replace: function (url, query) {
            queryString = query;
            return url += '?q=' + query;
        },
        filter: function(response) {
            // inject results for D3 tables here is query term matches a string
            var re = new RegExp(queryString, 'g');
            // births
            var births = 'totalbirthsnonhispanicwhiteblackotherinadequateprenatalcarelowbirthweightteenmothersfertilityracehealthcare';
            var match_births = births.match(re);
            console.log(match_births);
            if (match_births) {
                // get all births tables and 
                var d3Response = d3BirthsTable();
                // insert response into the reponse
                response.unshift(d3Response);
            }

            // Math
            var math = 'educationtestingelamaththird3rdgradeproficientexpectationsexceednotmeetadvancedstudentschildrenschoolmath';
            var match_elamath = math.match(re);
            if (match_elamath) {
                var d3Response = d3MathTable();
                // insert response into the reponse
                response.unshift(d3Response);
            }

            // ELA
            var ela = 'educationtestingelamaththird3rdgradeproficientexpectationsexceednotmeetadvancedstudentschildrenschoolelaenglishlanguagearts';
            var match_elamath = ela.match(re);
            if (match_elamath) {
                var d3Response = d3ELATable();
                // insert response into the reponse
                response.unshift(d3Response);
            }

            // graduation rates
            var grad = 'educationstudentschildrenschoolgraduationrateshighschoolcollegeattainmentstatisticsgradedropout';
            var match_elamath = grad.match(re);
            if (match_elamath) {
                var d3Response = d3GradTable();
                // insert response into the reponse
                response.unshift(d3Response);
            }     

            var resultNumber = response.length;
            if (resultNumber === 0) {
                response.push({
                    simple_table_name: 'Sorry, no matches found. Try changing your search.'
                });
            }
            _.map(response, function(item) {
                if (!!item['topics']) {
                    item['topic_string'] = item['topics'].join(', ');
                }
            });
            return response;
        }
    }
});
topicSelectEngine.initialize();

var d3BirthsTable = function() {
    // state table
    var response = {
        'id': "D3-Births",
        'simple_table_name': "Births by Race and Ethnicity and Characteristic",
        'table_id': "D3-Births",
        'table_name': "Births by Race and Ethnicity and Characteristic",
        'topic_string': "fertility, race, health care",
        'topics': ['fertility','race', 'health care'],
        'type': "table",
        'unique_key': "D3-Births",
        'universe': "Total births"
    }

    return response;

}

var d3MathTable = function() {
    // state table
    var response = {
        'id': "D3-Math-Proficiency",
        'simple_table_name': "Third Grade Proficiency in Math",
        'table_id': "D3-Math-Proficiency",
        'table_name': "Third Grade Proficiency in Math",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-Math-Proficiency",
        'universe': "Total students taking Math Assessment"
    }

    return response;

}

var d3ELATable = function() {
    // state table
    var response = {
        'id': "D3-ELA-Proficiency",
        'simple_table_name': "Third Grade Proficiency in English Language Arts",
        'table_id': "D3-ELA-Proficiency",
        'table_name': "Third Grade Proficiency in English Language Arts",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-ELA-Proficiency",
        'universe': "Total students taking ELA Assessment"
    }

    return response;

}

var d3GradTable = function() {
    // state table
    var response = {
        'id': "D3-Graduation-Rates",
        'simple_table_name': "High School Graduation Rate",
        'table_id': "D3-Graduation-Rates",
        'table_name': "High School Graduation Rate",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-Graduation-Rates",
        'universe': "High School Graduation Rate"
    }

    return response;

}



function makeTopicSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'topics',
        displayKey: 'simple_table_name',
        source: topicSelectEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                [
                    '{{#if table_id}}<h5 class="result-type">{{#if column_name}}Column in {{/if}}Table {{table_id}}</h5>{{/if}}',
                    '<p class="result-name">{{simple_table_name}}</p>',
                    '{{#if column_name}}<p class="caption"><strong>Column name:</strong> {{column_name}}</p>{{/if}}',
                    '{{#if topic_string}}<p class="caption"><strong>Table topics:</strong> {{topic_string}}</p>{{/if}}'
                ].join('')
            )
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        chosenTableID = datum['table_id'];
        if (!!chosenTableID) {
            spinner.spin(spinnerTarget);
            window.location = '/data/table/?table=' + chosenTableID + "&geo_ids=" + thisGeoID + "&primary_geo_id=" + thisGeoID;
        }
    });
}

jQuery(document).ready(function(){
    // initial setup for select widget
    makeTopicSelectWidget(topicSelect);
});
