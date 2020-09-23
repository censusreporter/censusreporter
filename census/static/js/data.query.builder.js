var spinnerTarget = document.getElementById("body-spinner");
if (!spinnerTarget) {
    $('body').append('<div id="body-spinner"></div>');
    spinnerTarget = document.getElementById('body-spinner');
} 

var tableSearchAPI = CR_API_URL + '/1.0/table/search',
    geoSearchAPI = FREE_TEXT_SEARCH_API_URL + '/2.1/full-text/search';

var topicSelect = $('#topic-select'),
    topicSelectContainer = $('#explore-topic-picker'),
    placeSelect = $('#topic-place-select'),
    placeSelectContainer = $('#explore-topic-place-picker'),
    parentSelect = $('#topic-place-select-parent'),
    parentSelectContainer = $('#explore-topic-place-picker-parent'),
    chosenTableID,
    chosenRelease = 'latest',
    chosenSumlev,
    chosenSumlevPluralName,
    chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970',
    chosenSumlevAncestorOptions,
    chosenGeoID,
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

            // infant mortality
            var infantmortality = 'infantmortalitydeathschildrensleepsafeunsafeassultmaltreatmentbirth';
            var match_im = infantmortality.match(re);
            if (match_im) {
                var d3Response = d3InfantMortalityTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 
            
            // immunization
            var immunization = 'immunizationvaccinationvaccinechildrenshotspreventablediseasedtappoliommrhibhepbvaricellapcvhepavaccinations';
            var match_imm = immunization.match(re);
            if (match_imm) {
                var d3Response = d3ImmunizationTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // medicaid
            var medicaid = 'hospitalervisitsmedicaidchildrenurgentcarehealthcareasthmadiabetestype1type2other';
            var match_medicaid = medicaid.match(re);
            if (match_medicaid) {
                var d3Response = d3MedicaidTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 
 
            // child care
            var childcare = 'licensedchildcarefacilitiesgrouphomefamilyhomeschildcarecentersearlyheadstartprogramsGSRPcapacity';
            var match_childcare = childcare.match(re);
            if (match_childcare) {
                var d3Response = d3ChildCareCenterTable();
                // insert response into the reponse
                response.unshift(d3Response);
                d3Response = d3ChildCareProgramsTable();
                // insert response into the reponse
                response.unshift(d3Response);                
                d3Response = d3ChildCareCapacityTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // school lunch
            var lunch = 'eligibilityfreereducedpriceschoollunchmigranthomelessstudentsdirectcertificationprocess';
            var match_lunch = lunch.match(re);
            if (match_lunch) {
                var d3Response = d3FreeReducedLunchTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // college readiness
            var collegereadiness = 'studentssatassessmentallsubjectsmathcollegereadinessproficiencyevidencedbasedreadingwriting';
            var match_collegereadiness = collegereadiness.match(re);
            if (match_collegereadiness) {
                var d3Response = d3CollegeReadinessTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // blood lead levels
            var bloodlead = 'individualstestedelevatedbloodleadleveldefined4.5microgramsperdeciliter';
            var match_bloodlead = bloodlead.match(re);
            if (match_bloodlead) {
                var d3Response = d3BloodLeadLevelsTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // college enrollment
            var collegeenrollment = 'publichighschoolgraduatesreceiveddiplomagraduationenrolledcollege12twelvemonthsgraduationenrollment';
            var match_collegeenrollment = collegeenrollment.match(re);
            if (match_collegeenrollment) {
                var d3Response = d3CollegeEnrollmentTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // Student Mobility
            var studentmobility = 'publicschoolstudentsmobilityleavingenteringnewschoolduringschoolyear';
            var match_studentmobility = studentmobility.match(re);
            if (match_studentmobility) {
                var d3Response = d3StudentMobilityTable();
                // insert response into the reponse
                response.unshift(d3Response);
            }             

            // chronicabsenteeism
            var chronicabsenteeism = 'publicschoolstudentschronicabsenteeismmissing10tenormoreschooldaysinaschoolyear';
            var match_chronicabsenteeism = chronicabsenteeism.match(re);
            if (match_chronicabsenteeism) {
                var d3Response = d3ChronicAbsenteeismTable();
                // insert response into the reponse
                response.unshift(d3Response);
            } 

            // eighthgrademath
            var eighthgrademath = 'educationtestingelamatheighth8thgradeproficientexpectationsexceednotmeetadvancedstudentschildrenschoolmath';
            var match_eighthgrademath = eighthgrademath.match(re);
            if (match_eighthgrademath) {
                var d3Response = d38thGradeMathTable();
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

var d3InfantMortalityTable = function() {
    // state table
    var response = {
        'id': "D3-Infant-Mortality",
        'simple_table_name': "Infant Mortality",
        'table_id': "D3-Infant-Mortality",
        'table_name': "Infant Mortality",
        'topic_string': "health care, children",
        'topics': ['health care','children'],
        'type': "table",
        'unique_key': "D3-Infant-Mortality",
        'universe': "Number of infant deaths"
    }

    return response;

}

var d3ImmunizationTable = function() {
    // state table
    var response = {
        'id': "D3-Immunization",
        'simple_table_name': "Immunizations",
        'table_id': "D3-Immunization",
        'table_name': "Immunizations",
        'topic_string': "health care, children",
        'topics': ['health care','children'],
        'type': "table",
        'unique_key': "D3-Immunization",
        'universe': "Immunized children aged 19-35 months"
    }

    return response;

}

var d3MedicaidTable = function() {
    // state table
    var response = {
        'id': "D3-Medicaid",
        'simple_table_name': "Hospital or ER visits through Medicaid for children (under 18)",
        'table_id': "D3-Medicaid",
        'table_name': "Hospital or ER visits through Medicaid for children (under 18)",
        'topic_string': "health care, children",
        'topics': ['health care','children'],
        'type': "table",
        'unique_key': "D3-Medicaid",
        'universe': "Total number of hospital or ER visits through Medicaid for children (under 18)"
    }

    return response;

}

var d3ChildCareCenterTable = function() {
    // state table
    var response = {
        'id': "D3-Child-Care-Centers",
        'simple_table_name': "Child care facilities",
        'table_id': "D3-Child-Care-Centers",
        'table_name': "Child care facilities",
        'topic_string': "child care, children",
        'topics': ['child care','children'],
        'type': "table",
        'unique_key': "D3-Child-Care-Centers",
        'universe': "Number of licensed child care facilities"
    }

    return response;

}

var d3ChildCareProgramsTable = function() {
    // state table
    var response = {
        'id': "D3-Child-Care-Programs",
        'simple_table_name': "Child care programs",
        'table_id': "D3-Child-Care-Programs",
        'table_name': "Child care programs",
        'topic_string': "child care, children",
        'topics': ['child care','children'],
        'type': "table",
        'unique_key': "D3-Child-Care-Programs",
        'universe': "Number of licensed child care centers"
    }

    return response;

}

var d3ChildCareCapacityTable = function() {
    // state table
    var response = {
        'id': "D3-Child-Care-Capacity",
        'simple_table_name': "Total capacity of licensed child care facilities",
        'table_id': "D3-Child-Care-Capacity",
        'table_name': "Total capacity of licensed child care facilities",
        'topic_string': "child care, children",
        'topics': ['child care','children'],
        'type': "table",
        'unique_key': "D3-Child-Care-Capacity",
        'universe': "Total capacity of licensed child care facilities"
    }

    return response;

}

var d3FreeReducedLunchTable = function() {
    // state table
    var response = {
        'id': "D3-School-Lunch",
        'simple_table_name': "Eligibility for free or reduced price school lunches",
        'table_id': "D3-School-Lunch",
        'table_name': "Eligibility for free or reduced price school lunches",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-School-Lunch",
        'universe': "Total number of student counts grade K-12, including ungraded"
    }

    return response;

}

var d3CollegeReadinessTable = function() {
    // state table
    var response = {
        'id': "D3-College-Readiness",
        'simple_table_name': "College readiness",
        'table_id': "D3-College-Readiness",
        'table_name': "College readiness",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-College-Readiness",
        'universe': "The number of students who took the SAT assessment in all subjects"
    }

    return response;

}

var d3BloodLeadLevelsTable = function() {
    // state table
    var response = {
        'id': "D3-Blood-Lead",
        'simple_table_name': "Blood lead levels",
        'table_id': "D3-Blood-Lead",
        'table_name': "Blood lead levels",
        'topic_string': "health care, children",
        'topics': ['health care','children'],
        'type': "table",
        'unique_key': "D3-Blood-Lead",
        'universe': "Number of individuals who were tested"
    }

    return response;

}

var d3CollegeEnrollmentTable = function() {
    // state table
    var response = {
        'id': "D3-College-Enrollment",
        'simple_table_name': "College enrollment",
        'table_id': "D3-College-Enrollment",
        'table_name': "College enrollment",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-College-Enrollment",
        'universe': "Number of public high school graduates who received a diploma during the high school graduation year"
    }

    return response;

}

var d3StudentMobilityTable = function() {
    // state table
    var response = {
        'id': "D3-Student-Mobility",
        'simple_table_name': "Student mobility",
        'table_id': "D3-Student-Mobility",
        'table_name': "College enrollment",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-Student-Mobility",
        'universe': "Number of public school students"
    }

    return response;

}

var d3ChronicAbsenteeismTable = function() {
    // state table
    var response = {
        'id': "D3-Chronic-Absenteeism",
        'simple_table_name': "Chronic absenteeism",
        'table_id': "D3-Chronic-Absenteeism",
        'table_name': "College enrollment",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-Chronic-Absenteeism",
        'universe': "Number of public school students"
    }

    return response;

}


var d38thGradeMathTable = function() {
    // state table
    var response = {
        'id': "D3-Eighth-Grade-Math-Assessment",
        'simple_table_name': "Eighth grade math assessment",
        'table_id': "D3-Eighth-Grade-Math-Assessment",
        'table_name': "College enrollment",
        'topic_string': "education, children",
        'topics': ['education','children'],
        'type': "table",
        'unique_key': "D3-Eighth-Grade-Math-Assessment",
        'universe': "Number of students assessed in Math"
    }

    return response;

}


var placeSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: geoSearchAPI,
        replace: function (url, query) {
            return url += '?q=' + query + '&sumlevs=' + chosenSumlevAncestorList;
        },
        filter: function(response) {
            var results = [];
            // remove any non-Michigan responses
            for (var i = response.results.length - 1; i >= 0; i--) {
                // all Michigan results have US26 as part of their geoID
                // all Michigan zip codes begin with 49 or 49
                // remove Places
                if ((response.results[i].full_geoid.search('US26') != -1 || response.results[i].full_geoid.search('86000US48') != -1 || response.results[i].full_geoid.search('86000US49') != -1) && response.results[i].sumlevel != '160') {
                    results.push(response.results[i]);
                }
            }
            if (results.length === 0) {
                results.push({
                    simple_table_name: 'Sorry, no matches found. Try changing your search.'
                });
            } 
            _.map(results, function(item) {
                item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
            });
            return results;
        }
    }
});
placeSelectEngine.initialize();

var sumlevSelectEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.plural_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    local: [
        {name: 'state', plural_name: 'states', sumlev: '040', ancestor_sumlev_list: '010,020,030', ancestor_options: 'the United States, a region or division' },
        {name: 'county', plural_name: 'counties', sumlev: '050', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
        {name: 'county subdivision', plural_name: 'county subdivisions', sumlev: '060', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'place', plural_name: 'places', sumlev: '160', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'metro area', plural_name: 'metro areas', sumlev: '310', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
        {name: 'native area', plural_name: 'native areas', sumlev: '250', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
        {name: 'census tract', plural_name: 'census tracts', sumlev: '140', ancestor_sumlev_list: '010,020,030,040,050,160', ancestor_options: 'the United States, a region, division, state, county or place' },
        {name: 'block group', plural_name: 'block groups', sumlev: '150', ancestor_sumlev_list: '010,020,030,040,050,140,160', ancestor_options: 'the United States, a region, division, state, county, place or census tract' },
        {name: 'zip codes', plural_name: 'ZIP codes', sumlev: '860', ancestor_sumlev_list: '010,020,030,040,050,160', ancestor_options: 'the United States, a region, division, state, county or place' },
        {name: 'congressional district', plural_name: 'congressional districts', sumlev: '500', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
        {name: 'state senate district', plural_name: 'state senate districts', sumlev: '610', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
        {name: 'state house district', plural_name: 'state house districts', sumlev: '620', ancestor_sumlev_list: '010,020,030,040', ancestor_options: 'the United States, a region, division or state' },
        {name: 'elementary school district', plural_name: 'elementary school districts', sumlev: '950', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'secondary school district', plural_name: 'secondary school districts', sumlev: '960', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county' },
        {name: 'unified school district', plural_name: 'unified school districts', sumlev: '970', ancestor_sumlev_list: '010,020,030,040,050', ancestor_options: 'the United States, a region, division, state or county'}
    ]
});
sumlevSelectEngine.initialize();

// hide the geography stuff to start
placeSelectContainer.hide();
parentSelectContainer.hide();

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
                    '{{#if table_id}}<h5 class="result-type">{{#if column_name}}Column in {{/if}}Table {{table_id}}: {{simple_table_name}}</h5>{{/if}}',
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
            window.location.href = '/tables/' + chosenTableID + '/'
        }
        
        // ORGINAL 1-2-3 version of this widget
        //makePlaceSelectWidget(placeSelect);
        //placeSelectContainer.slideDown();
        //placeSelect.focus();
        //$('#explore-callouts').hide();
        //topicFilters.prop('checked', false);
    });
}

function makePlaceSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'summary_levels',
        displayKey: 'plural_name',
        source: sumlevSelectEngine.ttAdapter(),
        templates: {
            header: '<h2>Summary levels</h2>',
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev}}</span>{{plural_name}}</p>'
            )
        }
    }, {
        name: 'geographies',
        displayKey: 'full_name',
        source: placeSelectEngine.ttAdapter(),
        templates: {
            header: '<h2>Geographies</h2>',
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        if (!datum['full_geoid'] && !!datum['sumlev']) {
            chosenSumlev = datum['sumlev'];
            chosenSumlevPluralName = datum['plural_name'];
            chosenSumlevAncestorList = datum['ancestor_sumlev_list'],
            chosenSumlevAncestorOptions = datum['ancestor_options'];
            parentSelectContainer.find('.help-text').text(
                'Select a place to explore your chosen summary level. ' + capitalize(chosenSumlevPluralName) + ' can be compared within ' + chosenSumlevAncestorOptions + '.'
            );
            makeParentSelectWidget(parentSelect);
            if (chosenSumlev == '040') {
                parentSelect.typeahead('val', 'United States');
            }
            parentSelectContainer.slideDown();
            parentSelect.focus();
        } else if (!!datum['full_geoid']) {
            chosenGeoID = datum['full_geoid'];
            sendToDataView(chosenTableID, chosenRelease, chosenGeoID);
        }
    });
}

function makeParentSelectWidget(element) {
    element.typeahead('destroy');
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        name: 'geographies',
        displayKey: 'full_name',
        source: placeSelectEngine.ttAdapter(),
        templates: {
            suggestion: Handlebars.compile(
                '<p class="result-name"><span class="result-type">{{sumlev_name}}</span>{{full_name}}</p>'
            )
        }
    });

    element.on('typeahead:selected', function(obj, datum) {
        chosenGeoID = datum['full_geoid'];
        if (!!chosenGeoID) {
            sendToDataView(chosenTableID, chosenRelease, chosenGeoID, chosenSumlev);
        }
    });
}

function sendToDataView(chosenTableID, chosenRelease, chosenGeoID, chosenSumlev) {
    // add spinner to page load 
    spinner.spin(spinnerTarget);
    var theseGeoIDs = (!!chosenSumlev) ? chosenSumlev + '|' + chosenGeoID : chosenGeoID,
        targetURL = '/data/table/?table=' + chosenTableID + '&geo_ids=' + theseGeoIDs + '&primary_geo_id=' + chosenGeoID + '&release=' + chosenRelease;
    window.location.href = targetURL;
}

jQuery(document).ready(function(){
    makeTopicSelectWidget(topicSelect);
    $("#explore").on('click', '#change-table', function(e) {
        e.preventDefault();
        $('#explore-topic-metadata').remove();
        $('#explore-callouts').show();
        placeSelectContainer.hide()
        parentSelectContainer.hide()
        topicSelectContainer.toggle();
        topicSelect.focus();
    });
});