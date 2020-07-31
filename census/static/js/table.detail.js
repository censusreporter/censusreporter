function Table(options) {

    var spinnerTarget = document.getElementById("body-spinner");
    if (!spinnerTarget) {
        $('body').append('<div id="body-spinner"></div>');
        spinnerTarget = document.getElementById('body-spinner');
    }

    var API_URL = typeof(CR_API_URL) != 'undefined' ? CR_API_URL : API_URL + 'https://hipapi.datadrivendetroit.org';


    var table = {
        geoIDs: [],
        tableSearchAPI: API_URL + '/1.0/table/search',
        geoSearchAPI: FREE_TEXT_SEARCH_API_URL + '/2.1/full-text/search',
        chosenSumlevAncestorList: '040,050,060,250,252,254,310,500,610,620,860,950,960,970',
        queryString: ''
    }

    table.init = function(options) {
        table.tableID = options.tableID;
        table.$topicSelect = $(options.topicSelect);
        table.$topicSelectContainer = $(options.topicSelectContainer);
        table.$displayHeader = $(options.displayHeader);
        table.$displayWrapper = $(options.displayWrapper);
        table.$pageWrapper = $('#table');
        table.$geoSelectContainer = $('#explore');
        table.$placeSelect = $('#topic-place-select');
        table.$placeSelectContainer = $('#explore-topic-place-picker');
        table.$parentSelect = $('#topic-place-select-parent');
        table.$parentSelectContainer = $('#explore-topic-place-picker-parent');

        // make the side preview expand and collapse
        table.makePreviewExpander();

        // add the "change table" widget and listener
        table.makeTopicSelectWidget();

        table.$parentSelectContainer.hide();
        table.makePlaceSelectWidget();
        table.$placeSelect.focus();

        return table;
    }

    table.makePreviewExpander = function() {
        var previewTable = d3.select('.preview-table ul');
        if (previewTable.empty()) { return; }

        var previewCollapsedHeight = '135px',
            previewExpandText = 'Show all preview columns &#x25BC;',
            previewFullHeight = previewTable.node().offsetHeight + 'px';

        previewTable
            .style('overflow', 'hidden')
            .style('height', previewCollapsedHeight);

        var previewTableToggleControl = d3.select('.preview-table')
            .append('a')
                .classed('expand-preview', true)
                .attr('href', '#')
                .html(previewExpandText)
                .on('click', function() {
                    previewTableToggle();
                })

        var previewTableToggle = function() {
            d3.event.preventDefault();
            if (previewTable.classed('open')) {
                previewTableAnimate(false, previewCollapsedHeight);
            } else {
                previewTableAnimate(true, previewFullHeight);
            }
        }

        var previewTableAnimate = function(toOpen, targetHeight) {
            previewTable
                .classed('open', toOpen)
                .transition()
                .duration(500)
                .style('height', targetHeight);

            var toggleText = (toOpen) ? 'Collapse preview columns &#x25B2;' : previewExpandText;
            previewTableToggleControl.html(toggleText);
        }

        return table
    }

    table.topicSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 1500,
        remote: {
            url: table.tableSearchAPI,
            replace: function (url, query) {
                url += '?';
                if (query) {
                    table.queryString = query;
                    url += 'q=' + query;
                }
                return url;
            },
            filter: function(response) {
                // inject results for D3 tables here is query term matches a string
                var re = new RegExp(table.queryString, 'g');
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
                response.map(function(item) {
                    if (!!item['topics']) {
                        item['topic_string'] = item['topics'].join(', ');
                    }
                });
                return response;
            }
        }
    });

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
            'simple_table_name': "Capacity of licensed child care facilities",
            'table_id': "D3-Child-Care-Capacity",
            'table_name': "Capacity of licensed child care facilities",
            'topic_string': "health care, children",
            'topics': ['child care','children'],
            'type': "table",
            'unique_key': "D3-Child-Care-Capacity",
            'universe': "Capacity of licensed child care facilities"
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



    table.makeTopicSelectWidget = function() {
        table.$displayWrapper.find('h1')
            .append('<a href="#" id="change-table">Change</a>');

        table.topicSelectEngine.initialize();

        var element = table.$topicSelect;

        element.typeahead('destroy');
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'topics',
            displayKey: 'simple_table_name',
            source: table.topicSelectEngine.ttAdapter(),
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
            table.tableID = datum['table_id'];
            if (!!table.tableID) {
                spinner.spin(spinnerTarget);
                window.location = '/tables/'+table.tableID;
            }
        });

        // standard listeners
        table.$pageWrapper.on('click', '#change-table, #cancel-search', function(e) {
            e.preventDefault();
            table.toggleTableSearch();
        });

        return table;
    }

    table.toggleTableSearch = function() {
        table.$displayHeader.toggle();
        table.$displayWrapper.toggle();
        table.$geoSelectContainer.toggle();
        table.$topicSelectContainer.toggle();
        table.$topicSelect.focus();
    }

    table.placeSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 20,
        remote: {
            url: geoSearchAPI,
            replace: function (url, query) {
                table.chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';
                return url += '?q=' + query + '&sumlevs=' + table.chosenSumlevAncestorList;
            },
            filter: function(response) {
                var results = [];
                // remove any non-Michigan responses
                for (var i = response.results.length - 1; i >= 0; i--) {
                    // all Michigan results have US26 as part of their geoID
                    if (response.results[i].full_geoid.search('US26') != -1) {
                        results.push(response.results[i]);
                    }
                    // all Michigan zip codes begin with 49 or 49
                    if (response.results[i].full_geoid.search('86000US48') != -1) {
                        results.push(response.results[i]);
                    }
                    if (response.results[i].full_geoid.search('86000US49') != -1) {
                        results.push(response.results[i]);
                    }
                }
                results.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item['sumlevel']]['name'];
                });
                return results;
            }
        }
    });

    table.sumlevSelectEngine = new Bloodhound({
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

    table.makePlaceSelectWidget = function() {
        table.placeSelectEngine.initialize();
        table.sumlevSelectEngine.initialize();

        var element = table.$placeSelect;
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'summary_levels',
            displayKey: 'plural_name',
            source: table.sumlevSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Summary levels</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{plural_name}}<span class="result-type">{{sumlev}}</span></p>'
                )
            }
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: table.placeSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();

            if (!datum['full_geoid'] && !!datum['sumlev']) {
                // we have a sumlev choice, so provide a parent input
                table.chosenSumlev = datum['sumlev'];
                table.chosenSumlevPluralName = datum['plural_name'];
                table.chosenSumlevAncestorList = datum['ancestor_sumlev_list'],
                table.chosenSumlevAncestorOptions = datum['ancestor_options'];

                table.makeParentSelectWidget();
                if (table.chosenSumlev == '040') {
                    table.$parentSelect.typeahead('val', 'United States');
                }
                table.$parentSelectContainer.slideDown();
                table.$parentSelect.focus();
            } else if (!!datum['full_geoid']) {
                // we have a geoID, so add it
                table.geoIDs.push(datum['full_geoid']);

                var url = table.buildDataURL(
                    'table', table.tableID, table.geoIDs, datum['full_geoid']
                );
                spinner.spin(spinnerTarget);
                window.location = url;
            }
        });
    }

    table.makeParentSelectWidget = function() {
        var element = table.$parentSelect;
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: table.placeSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        if (table.chosenSumlev == '040') {
            element.typeahead('val', 'United States');
        }

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();
            if (!!datum['full_geoid']) {
                var geoGroup = table.chosenSumlev + '|' + datum['full_geoid']
                table.geoIDs.push(geoGroup);
                table.primaryGeoID = datum['full_geoid'];

                var url = table.buildDataURL(
                    'table', table.tableID, table.geoIDs, table.primaryGeoID
                );
                spinner.spin(spinnerTarget);
                window.location = url;
            }
        });
    }

    table.capitalize = function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }

    table.buildDataURL = function(dataFormat, tableID, geoIDs, primaryGeoID) {
        // pass in vars rather than use them from table object
        // so they can be created to arbitrary destinations

        var url = '/data/'+dataFormat+'/?table='+tableID;
        if (!!geoIDs) {
            url += "&geo_ids=" + geoIDs.join(',')
        }
        if (!!primaryGeoID) {
            url += "&primary_geo_id=" + primaryGeoID
        }

        return url
    }

    table.init(options);
    return table;
}
