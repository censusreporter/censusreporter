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
    rootGeoAPI = CR_API_URL + '/1.0/geo/tiger2019/',
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
        'topic_string': "health care, children",
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
        'topic_string': "health care, children",
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
            window.location = '/data/table/?table=' + chosenTableID + "&geo_ids=" + thisGeoID + "&primary_geo_id=" + thisGeoID + "&release=" + latestWorkingRelease;
        }
    });
}

jQuery(document).ready(function(){
    // initial setup for select widget
    makeTopicSelectWidget(topicSelect);
});
