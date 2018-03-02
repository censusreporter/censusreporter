/*
Pass in an options object, fetch data, get back a comparison view.

Comparison({
    tableID: '{{ table }}', # string
    dataFormat: '{{ data_format }}', # 'table' or 'distribution'
    geoIDs: '{{ geo_list }}', # an array
    primaryGeoID: '{{ primary_geo_id }}', # string
    topicSelect: '#topic-select',
    topicSelectContainer: '#query-topic-picker',
    dataHeader: '#header-container',
    dataWrapper: '#data-display',
    dataContainer: '#data-container'
})

This expects to have Underscore, D3 and jQuery.

You may optionally pass in a callback function, which will be exectued
after Comparison() retrieves data from the API. This callback should
accept a `comparison` object.
*/

function Comparison(options, callback) {

    var spinnerTarget = document.getElementById("body-spinner");
    if (!spinnerTarget) {
        $('body').append('<div id="body-spinner"></div>');
        spinnerTarget = document.getElementById('body-spinner');
    } 


    var API_URL = typeof(CR_API_URL) != 'undefined' ? CR_API_URL : API_URL + 'https://api.censusreporter.org';

    var comparison = {
        tableSearchAPI: API_URL + '/1.0/table/search',
        geoSearchAPI: API_URL + '/1.0/geo/search',
        rootGeoAPI: API_URL + '/1.0/geo/tiger2016/',
        childGeoAPI: API_URL + '/1.0/geo/show/tiger2016',
        dataAPI: API_URL + '/1.0/data/show/latest',
        d3DataAPI: 'https://services2.arcgis.com/HsXtOCMp1Nis1Ogr/arcgis/rest/services'
    };

    comparison.init = function(options) {
        // establish our base vars
        comparison.tableID = options.tableID;
        comparison.dataFormat = options.dataFormat;
        comparison.geoIDs = options.geoIDs;
        comparison.primaryGeoID = options.primaryGeoID || ((comparison.geoIDs.length == 1) ? comparison.geoIDs[0] : null);
        comparison.chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';
        // jQuery things
        comparison.$topicSelect = $(options.topicSelect);
        comparison.$topicSelectContainer = $(options.topicSelectContainer);
        comparison.$displayHeader = $(options.displayHeader);
        comparison.$displayWrapper = $(options.displayWrapper);
        comparison.$pageWrapper = $(options.pageWrapper) || $('.data-view');
        // D3 things
        comparison.headerContainer = d3.select(options.displayHeader);
        comparison.dataContainer = d3.select(options.dataContainer);
        comparison.aside = d3.select('aside');

        // add the "change table" widget and listener
        comparison.makeTopicSelectWidget();

        // go get the data
        comparison.getData();
        return comparison;
    }

    comparison.formatD3Data = function() {

        var data = {};
        data['release'] = {};
        data['release']['id'] = "d3_open_data";
        data['release']['name'] = comparison.d3DataReleaseName;
        data['release']['years'] = comparison.d3DataYears;

        data['tables'] = {};
        data['tables'][comparison.d3table_name] = {};
        data['tables'][comparison.d3table_name]['title'] = comparison.d3title;
        data['tables'][comparison.d3table_name]['universe'] = comparison.d3universe
        data['tables'][comparison.d3table_name]['denominator_column_id'] = comparison.d3denominator_column_id;

        data['tables'][comparison.d3table_name]['columns'] = {};

        for (var key in comparison.d3fields) {
            d3_key = 'D3-' + key;
            data['tables'][comparison.d3table_name]['columns'][d3_key] = {};
            data['tables'][comparison.d3table_name]['columns'][d3_key]['name'] = comparison.d3fields[key]['name'];
            data['tables'][comparison.d3table_name]['columns'][d3_key]['indent'] = comparison.d3fields[key]['indent'];
        }

        data['data'] = {};
        data['geography'] = {};

        var ajaxGeo = 0;
        var split_geoid;

        // births
        if (comparison.d3table_name == "D3-Births") {
            for (var i = comparison.d3_all_geoids.length - 1; i >= 0; i--) {
                split_geoid = comparison.d3_all_geoids[i].split('US');
                if (split_geoid[0].startsWith('040')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'state_data', 'StateID');
                }
                if (split_geoid[0].startsWith('050')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'county_data', 'GeoID10_1');
                }
                if (split_geoid[0].startsWith('060')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'county_sd_data', 'GeoID10_1');
                }
                if (split_geoid[0].startsWith('140')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'tract_data', 'GEOID10');
                }
                if (split_geoid[0].startsWith('310')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'msa_data', 'GeoID10_1');
                }
                if (split_geoid[0].startsWith('860')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'zcta_data', 'ZCTA5CE10');
                }
                if (split_geoid[0].startsWith('950') || split_geoid[0].startsWith('960') || split_geoid[0].startsWith('970')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'school_district_data', 'GEOID10');
                }
            }
        }

        if (comparison.d3table_name == "D3-Math-Proficiency" || comparison.d3table_name == "D3-ELA-Proficiency" || comparison.d3table_name == "D3-Graduation-Rates") {
            for (var i = comparison.d3_all_geoids.length - 1; i >= 0; i--) {
                split_geoid = comparison.d3_all_geoids[i].split('US');
                if (split_geoid[0].startsWith('040')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'state_data', 'StateID');
                }
                if (split_geoid[0].startsWith('050')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'county_data', 'GEOID10');
                }
                if (split_geoid[0].startsWith('060')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'county_sd_data', 'GeoID10_1');
                }
                if (split_geoid[0].startsWith('140')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'tract_data', 'GEOID10');
                }
                if (split_geoid[0].startsWith('310')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'msa_data', 'GeoID10_MSA');
                }
                if (split_geoid[0].startsWith('860')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'zcta_data', 'ZCTA5CE10');
                }
                if (split_geoid[0].startsWith('950') || split_geoid[0].startsWith('960') || split_geoid[0].startsWith('970')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'school_district_data', 'GEOID10');
                }
            }
        } 
        
        // infant mortality
        if (comparison.d3table_name == "D3-Infant-Mortality") {
            for (var i = comparison.d3_all_geoids.length - 1; i >= 0; i--) {
                split_geoid = comparison.d3_all_geoids[i].split('US');
                if (split_geoid[0].startsWith('040')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'state_data', 'StateID');
                }
                if (split_geoid[0].startsWith('050')) {
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'county_data', 'GEOID10');
                }
                if (split_geoid[0].startsWith('060')) {
                    console.log(comparison.d3_all_geoids[i]);
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'county_sd_data', 'GEOID10');
                }
                if (split_geoid[0].startsWith('500')) {
                    //console.log(comparison.d3_all_geoids[i]);
                    ajaxGeo++;
                    parseData(comparison.d3_all_geoids[i], 'congressional_district_data', 'DISTRICT');
                }
            }
        }


        function parseData(geo_id, geo_key, geo_field) {
            var split_geoid = geo_id.split('US');

            // for infant mortality data by congressional district, remove the leading 26 from split_geoid[1]
            if (geo_field == 'DISTRICT') {
                split_geoid[1] = split_geoid[1].replace("26", "");
            }
            
            // get geography name from CR
            var nameGeoAPI = comparison.rootGeoAPI + geo_id;
            $.getJSON(nameGeoAPI)
                .done(function(results) {
                    data['geography'][geo_id] = {};
                    data['geography'][geo_id]['name'] = results.properties.display_name;
                    data['data'][geo_id] = {};
                    data['data'][geo_id][comparison.d3table_name] = {};
                    data['data'][geo_id][comparison.d3table_name]['estimate'] = {};
                    data['data'][geo_id][comparison.d3table_name]['error'] = {};
                    for (var key in comparison[geo_key]['features']) {
                        if (comparison[geo_key]['features'][key]['attributes'][geo_field] == split_geoid[1]) {
                            for (var feature_key in comparison[geo_key]['features'][key]['attributes']) {
                                d3_feature_key = 'D3-' + feature_key;

                                data['data'][geo_id][comparison.d3table_name]['estimate'][d3_feature_key] = comparison[geo_key]['features'][key]['attributes'][feature_key];
                                data['data'][geo_id][comparison.d3table_name]['error'][d3_feature_key] = 0;

                            }
                        }

                    }

                    ajaxGeo--;
                    if (ajaxGeo == 0) {
                        comparison.data = comparison.cleanData(data);
                        comparison.addStandardMetadata();
                        comparison.makeDataDisplay();
                        if (typeof callback === "function") {
                            callback(comparison);
                        }
                    } 
                })
                .fail(function(xhr, textStatus, error) {
                    var message = $.parseJSON(xhr.responseText);
                    comparison.$displayWrapper.html('<h1>Error</h1><p class="message display-type clearfix"><span class="message-error">'+message.error+'</span></p>');
                });

        }

    }

    comparison.getD3Data = function(table_id, field_name, geo_ids, geo_key) {
        // var url = comparison.d3DataAPI + '/' + table_id + '/FeatureServer/0/query?outFields=*&where='+ field_name +'%20in%20(' + geo_ids + ')&f=json';
        var url = comparison.d3DataAPI + '/' + table_id + '/FeatureServer/0/query'
        console.log(url);
        console.log(geo_ids);       
        var data = {
            outFields: '*',
            where: field_name +' in (' + geo_ids + ')',
            f: 'json',
        }
        $.ajax({
          type: "POST",
          url: url,
          data: data,
        })
        .done(function(results) {
            var resultsJson = $.parseJSON(results);
            console.log(resultsJson);
            comparison[geo_key] = resultsJson;
            comparison.ajaxCount--;
            if (comparison.ajaxCount == 0) {
                comparison.formatD3Data();
            }          
        })
        .fail(function(xhr, textStatus, error) {
            var message = $.parseJSON(xhr.responseText);
            comparison.$displayWrapper.html('<h1>Error</h1><p class="message display-type clearfix"><span class="message-error">'+message.error+'</span></p>');
        });
    }

    comparison.getBirthData = function() {
        // metadata specific to Births
        comparison.d3DataReleaseName = 'Data Driven Detroit Open Data Portal, State of Michigan Office of Vital Statistics';
        comparison.d3DataYears = '2014';
        comparison.d3table_name = 'D3-Births';
        comparison.d3title = 'Births by Race and Ethnicity and Characteristic';
        comparison.d3universe = 'Total Births';
        comparison.d3denominator_column_id ='D3-TotalBirths';

        // table columns
        comparison.d3fields = {};
        comparison.d3fields['TotalBirths'] = {};
        comparison.d3fields['TotalBirths']['name'] = "Total Births"
        comparison.d3fields['TotalBirths']['indent'] = 0

        comparison.d3fields['NonHispWhite'] = {};
        comparison.d3fields['NonHispWhite']['name'] = "Non-Hispanic White Births"
        comparison.d3fields['NonHispWhite']['indent'] = 1

        comparison.d3fields['NonHispBlack'] = {};
        comparison.d3fields['NonHispBlack']['name'] = "Non-Hispanic Black Births"
        comparison.d3fields['NonHispBlack']['indent'] = 1

        comparison.d3fields['NonHIspOther'] = {};
        comparison.d3fields['NonHIspOther']['name'] = "Non-Hispanic Other Race Births"
        comparison.d3fields['NonHIspOther']['indent'] = 1

        comparison.d3fields['Hispanic'] = {};
        comparison.d3fields['Hispanic']['name'] = "Hispanic Births"
        comparison.d3fields['Hispanic']['indent'] = 1

        comparison.d3fields['InadequatePrenatal'] = {};
        comparison.d3fields['InadequatePrenatal']['name'] = "Births with Inadequate Prenatal Care"
        comparison.d3fields['InadequatePrenatal']['indent'] = 1

        comparison.d3fields['LowBirthWeight'] = {};
        comparison.d3fields['LowBirthWeight']['name'] = "Low Birth Weight Births"
        comparison.d3fields['LowBirthWeight']['indent'] = 1

        comparison.d3fields['TeenMothers'] = {};
        comparison.d3fields['TeenMothers']['name'] = "Births to Teen Mothers"
        comparison.d3fields['TeenMothers']['indent'] = 1

        comparison.ajaxCount = 0;

        if (comparison.state_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_StateofMichigan_2014', 'StateID', comparison.state_geoids, 'state_data');
        }
        if (comparison.county_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_byCounty_2014', 'GeoID10_1', comparison.county_geoids, 'county_data')
        }
        if (comparison.county_sd_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_byCity_2014', 'GeoID10_1', comparison.county_sd_geoids, 'county_sd_data')
        }
        if (comparison.tract_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_byTract_2014', 'GEOID10', comparison.tract_geoids, 'tract_data')
        }
        if (comparison.msa_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_byMSA_2014', 'GeoID10_1', comparison.msa_geoids, 'msa_data') 
        }
        if (comparison.school_district_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_bySD_2014', 'GEOID10', comparison.school_district_geoids, 'school_district_data')
        }
        if (comparison.zcta_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('Births_byZCTA_2014', 'ZCTA5CE10', comparison.zcta_geoids, 'zcta_data')
        }
        
    }

    comparison.getMathProficiencyData = function() {
        // metadata specific to Math
        comparison.d3DataReleaseName = 'D3 Open Data Portal, State of Michigan Center for Educational Performance and Information';
        comparison.d3DataYears = '2017';
        comparison.d3table_name = 'D3-Math-Proficiency';
        comparison.d3title = 'Third Grade Proficiency in Math';
        comparison.d3universe = 'Total students taking Math Assessment';
        comparison.d3denominator_column_id ='D3-MATHNumAssessed_Calc';

        // table columns
        comparison.d3fields = {};
        comparison.d3fields['MATHNumAssessed_Calc'] = {};
        comparison.d3fields['MATHNumAssessed_Calc']['name'] = "Total students taking Math Assessment"
        comparison.d3fields['MATHNumAssessed_Calc']['indent'] = 0

        comparison.d3fields['MATHTotalMet_Calc'] = {};
        comparison.d3fields['MATHTotalMet_Calc']['name'] = "Number of students who met or exceeded expectations in Math"
        comparison.d3fields['MATHTotalMet_Calc']['indent'] = 1

        comparison.d3fields['MATHTotalNotMet_Calc'] = {};
        comparison.d3fields['MATHTotalNotMet_Calc']['name'] = "Number of students who did not meet expectations in Math"
        comparison.d3fields['MATHTotalNotMet_Calc']['indent'] = 1


        comparison.ajaxCount = 0;

        if (comparison.state_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_Michigan_08032017', 'StateID', comparison.state_geoids, 'state_data');
        }
        if (comparison.county_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Score_byCounty_08032017', 'GEOID10', comparison.county_geoids, 'county_data')
        }
        if (comparison.county_sd_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byCities_08032017', 'GeoID10_1', comparison.county_sd_geoids, 'county_sd_data')
        }
        if (comparison.tract_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byTract_08032017', 'GEOID10', comparison.tract_geoids, 'tract_data')
        }
        if (comparison.msa_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byMSA_08032017', 'GeoID10_MSA', comparison.msa_geoids, 'msa_data') 
        }
        if (comparison.school_district_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_bySchoolDistrict_08032017', 'GEOID10', comparison.school_district_geoids, 'school_district_data')
        }
        if (comparison.zcta_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byZip_08032017', 'ZCTA5CE10', comparison.zcta_geoids, 'zcta_data')
        }
        
    }

    comparison.getELAProficiencyData = function() {
        // metadata specific to ELA
        comparison.d3DataReleaseName = 'D3 Open Data Portal, State of Michigan Center for Educational Performance and Information';
        comparison.d3DataYears = '2017';
        comparison.d3table_name = 'D3-ELA-Proficiency';
        comparison.d3title = 'Third Grade Proficiency in English Language Arts';
        comparison.d3universe = 'Total students taking ELA Assessment';
        comparison.d3denominator_column_id ='D3-ELANumAssessed_Calc';

        // table columns
        comparison.d3fields = {};
        comparison.d3fields['ELANumAssessed_Calc'] = {};
        comparison.d3fields['ELANumAssessed_Calc']['name'] = "Total students taking ELA Assessment"
        comparison.d3fields['ELANumAssessed_Calc']['indent'] = 0

        comparison.d3fields['ELATotalMet_Calc'] = {};
        comparison.d3fields['ELATotalMet_Calc']['name'] = "Number of students who met or exceeded expectations in ELA"
        comparison.d3fields['ELATotalMet_Calc']['indent'] = 1

        comparison.d3fields['ELATotalNotMet_Calc'] = {};
        comparison.d3fields['ELATotalNotMet_Calc']['name'] = "Number of students who did not meet expectations in ELA"
        comparison.d3fields['ELATotalNotMet_Calc']['indent'] = 1


        comparison.ajaxCount = 0;

        if (comparison.state_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_Michigan_08032017', 'StateID', comparison.state_geoids, 'state_data');
        }
        if (comparison.county_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Score_byCounty_08032017', 'GEOID10', comparison.county_geoids, 'county_data')
        }
        if (comparison.county_sd_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byCities_08032017', 'GeoID10_1', comparison.county_sd_geoids, 'county_sd_data')
        }
        if (comparison.tract_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byTract_08032017', 'GEOID10', comparison.tract_geoids, 'tract_data')
        }
        if (comparison.msa_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byMSA_08032017', 'GeoID10_MSA', comparison.msa_geoids, 'msa_data') 
        }
        if (comparison.school_district_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_bySchoolDistrict_08032017', 'GEOID10', comparison.school_district_geoids, 'school_district_data')
        }
        if (comparison.zcta_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('ThirdGrade_ELA_Math_Scores_byZip_08032017', 'ZCTA5CE10', comparison.zcta_geoids, 'zcta_data')
        }
        
    }


    comparison.getGraduationRateData = function() {
        // metadata specific to graduaton rates
        comparison.d3DataReleaseName = 'D3 Open Data Portal, State of Michigan Center for Educational Performance and Information';
        comparison.d3DataYears = '2017';
        comparison.d3table_name = 'D3-Graduation-Rates';
        comparison.d3title = 'High School Graduation Rate';
        comparison.d3universe = 'Total students';
        comparison.d3denominator_column_id ='D3-CohortCount';

        // table columns
        comparison.d3fields = {};
        comparison.d3fields['CohortCount'] = {};
        comparison.d3fields['CohortCount']['name'] = "Number of Students"
        comparison.d3fields['CohortCount']['indent'] = 0

        comparison.d3fields['GradCnt'] = {};
        comparison.d3fields['GradCnt']['name'] = "Number of Graduates"
        comparison.d3fields['GradCnt']['indent'] = 1

        comparison.ajaxCount = 0;

        if (comparison.state_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRate_Michigan_08312017', 'StateID', comparison.state_geoids, 'state_data');
        }
        if (comparison.county_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRates_byCounty_08312017', 'GEOID10', comparison.county_geoids, 'county_data')
        }
        if (comparison.county_sd_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRates_byCity_08312017', 'GeoID10_1', comparison.county_sd_geoids, 'county_sd_data')
        }
        if (comparison.tract_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRates_byTract_08312017', 'GEOID10', comparison.tract_geoids, 'tract_data')
        }
        if (comparison.msa_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRates_byMSA_08312017', 'GeoID10_MSA', comparison.msa_geoids, 'msa_data') 
        }
        if (comparison.school_district_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRates_bySchoolDistrict_08312017', 'GEOID10', comparison.school_district_geoids, 'school_district_data')
        }
        if (comparison.zcta_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('GraduationRates_byZip_08312017', 'ZCTA5CE10', comparison.zcta_geoids, 'zcta_data')
        }
        
    }

    comparison.getInfantMortalityData = function() {
        // metadata specific to graduaton rates
        comparison.d3DataReleaseName = 'D3 Open Data Portal, State of Michigan Office of Vital Statistics';
        comparison.d3DataYears = '2017';
        comparison.d3table_name = 'D3-Infant-Mortality';
        comparison.d3title = 'Infant Mortality';
        comparison.d3universe = 'Number of infant deaths';
        comparison.d3denominator_column_id ='D3-InfantMort';

        // table columns
        comparison.d3fields = {};
        comparison.d3fields['InfantMort'] = {};
        comparison.d3fields['InfantMort']['name'] = "Total infant deaths"
        comparison.d3fields['InfantMort']['indent'] = 1

        comparison.d3fields['SafeSleep'] = {};
        comparison.d3fields['SafeSleep']['name'] = "Number of unsafe sleep related deaths"
        comparison.d3fields['SafeSleep']['indent'] = 1

        comparison.d3fields['AssaultMal'] = {};
        comparison.d3fields['AssaultMal']['name'] = "Number of assault or maltreatment related deaths"
        comparison.d3fields['AssaultMal']['indent'] = 1

        comparison.ajaxCount = 0;

        if (comparison.state_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('MI_Statewide_InfantMort_Suppressed', 'StateID', comparison.state_geoids, 'state_data');
        }
        if (comparison.county_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('MI_InfantMort_County_Suppressed', 'GEOID10', comparison.county_geoids, 'county_data')
        }
        if (comparison.county_sd_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('MI_InfantMort_CouSub_Suppressed', 'GEOID10', comparison.county_sd_geoids, 'county_sd_data')
        }
        if (comparison.congressional_district_geoids.length > 0) {
            comparison.ajaxCount++;
            comparison.getD3Data('MI_USCongressionalDistrict_InfantMort_Suppressed', 'DISTRICT', comparison.congressional_district_geoids, 'congressional_district_data')
        }
        
    }

    comparison.getData = function() {
        if (comparison.tableID && comparison.geoIDs) {
            var params = {
                table_ids: comparison.tableID,
                geo_ids: comparison.geoIDs.join(',')
            }

            // D3 query
            if (comparison.tableID.startsWith('D3-')) {
                comparison.d3_all_geoids = []
                comparison.state_geoids = [];
                comparison.county_geoids = [];
                comparison.county_sd_geoids = [];
                comparison.tract_geoids = [];
                comparison.msa_geoids = [];
                comparison.congressional_district_geoids = [];
                comparison.school_district_geoids = [];
                comparison.zcta_geoids = [];

                var ajaxGeo2 = 0;
                for (var i = comparison.geoIDs.length - 1; i >= 0; i--) {
                    // if a | esists in the geo_id get all of the child geographies via ajax
                    if (comparison.geoIDs[i].indexOf('|') != -1) {
                        // add parent geography to array
                        var parent_split = comparison.geoIDs[i].split('|');
                        comparison.d3_all_geoids.push(parent_split[1]);
                        splitGeoID(parent_split[1]);

                        // run ajax call to pull child geographies
                        ajaxGeo2++;

                        var geo_id_params = {geo_ids: comparison.geoIDs[i]};
                        $.getJSON(comparison.childGeoAPI, geo_id_params)
                            .done(function(results) {
                                for (var j = results.features.length - 1; j >= 0; j--) {
                                    comparison.d3_all_geoids.push(results.features[j].properties.geoid);
                                    splitGeoID(results.features[j].properties.geoid);
                                }

                                ajaxGeo2--;
                                if (ajaxGeo2 == 0) {
                                    pullData();
                                }

                            })
                            .fail(function(xhr, textStatus, error) {
                                var message = $.parseJSON(xhr.responseText);
                                comparison.$displayWrapper.html('<h1>Error</h1><p class="message display-type clearfix"><span class="message-error">'+message.error+'</span></p>');
                            });
                    } else {
                        comparison.d3_all_geoids.push(comparison.geoIDs[i]);
                        splitGeoID(comparison.geoIDs[i]);
                        if (i == 0 && ajaxGeo2 == 0) {
                            pullData();
                        }
                    }
                }

                function splitGeoID(geo_id) {
                    var split_geoid = [];
                    split_geoid = geo_id.split('US');
                    if (split_geoid[0].startsWith('040')) {
                        comparison.state_geoids.push(split_geoid[1]);
                    }
                    if (split_geoid[0].startsWith('050')) {
                        comparison.county_geoids.push(split_geoid[1]);
                    }
                    if (split_geoid[0].startsWith('060')) {
                        comparison.county_sd_geoids.push(split_geoid[1]);
                    }
                    if (split_geoid[0].startsWith('140')) {
                        comparison.tract_geoids.push(split_geoid[1]);
                    }
                    if (split_geoid[0].startsWith('310')) {
                        comparison.msa_geoids.push(split_geoid[1]);
                    }
                    if (split_geoid[0].startsWith('500')) {
                        var cong_dist_geoid = split_geoid[1].replace("26", "");
                        comparison.congressional_district_geoids.push(cong_dist_geoid);
                    }
                    if (split_geoid[0].startsWith('860')) {
                        comparison.zcta_geoids.push(split_geoid[1]);
                    }
                    if (split_geoid[0].startsWith('950') || split_geoid[0].startsWith('960') || split_geoid[0].startsWith('970')) {
                        comparison.school_district_geoids.push(split_geoid[1]);
                    }  
                }

                function pullData() {
                    // what type of D3 data is this
                    if (comparison.tableID == 'D3-Births') {
                        comparison.getBirthData();
                    }

                    if (comparison.tableID == 'D3-Math-Proficiency') {
                        comparison.getMathProficiencyData();
                    }

                    if (comparison.tableID == 'D3-ELA-Proficiency') {
                        comparison.getELAProficiencyData();
                    }

                    if (comparison.tableID == 'D3-Graduation-Rates') {
                        comparison.getGraduationRateData();
                    }

                    if (comparison.tableID == 'D3-Infant-Mortality') {
                        comparison.getInfantMortalityData();
                    }

                }

                

            } else {
                // CR query
                $.getJSON(comparison.dataAPI, params)
                    .done(function(results) {
                        comparison.data = comparison.cleanData(results);
                        comparison.addStandardMetadata();
                        comparison.makeDataDisplay();
                        if (typeof callback === "function") {
                            callback(comparison);
                        }
                    })
                    .fail(function(xhr, textStatus, error) {
                        var message = $.parseJSON(xhr.responseText);
                        comparison.$displayWrapper.html('<h1>Error</h1><p class="message display-type clearfix"><span class="message-error">'+message.error+'</span></p>');
                    });
            }


        }
        return comparison;
    }

    comparison.addStandardMetadata = function() {
        // get any params from the hash
        comparison.makeHashObj();

        comparison.table = comparison.data.tables[comparison.tableID];
        comparison.release = comparison.data.release;
        comparison.values = comparison.data.data;
        comparison.thisSumlev = (!!comparison.primaryGeoID) ? comparison.primaryGeoID.substr(0,3) : null;
        comparison.statType = comparison.getStatType(),
        comparison.sortedPlaces = comparison.getSortedPlaces('name');

        comparison.denominatorColumn = (!!comparison.table.denominator_column_id) ? jQuery.extend({id: comparison.table.denominator_column_id}, comparison.table.columns[comparison.table.denominator_column_id]) : null;
        comparison.valueType = (!!comparison.denominatorColumn) ? 'percentage' : 'estimate';
        comparison.valueType = comparison.hash.valueType || comparison.valueType;
        // prep the column keys and names
        if (!!comparison.denominatorColumn) {
            delete comparison.table.columns[comparison.denominatorColumn.id]
            // add percentage values to column data
            comparison.addPercentageDataValues();

        }
        comparison.columnKeys = _.keys(comparison.table.columns);
        comparison.prefixColumnNames(comparison.table.columns);

        // determine whether we have a primary geo to key off of
        if (!!comparison.primaryGeoID && !!comparison.data.geography[comparison.primaryGeoID]) {
            comparison.primaryGeoName = comparison.data.geography[comparison.primaryGeoID].name
        } else {
            // case where primaryGeoID is passed as param, but not part of data returned by API
            comparison.primaryGeoID = null
        }
        // validated list of geoIDs with data
        comparison.dataGeoIDs = _.keys(comparison.values);
        // create groupings of geoIDs by sumlev
        comparison.sumlevMap = comparison.makeSumlevMap();
        comparison.addToggleViewListener();
    }

    comparison.makeDataDisplay = function() {
        if (comparison.dataFormat == 'table') {
            comparison.makeGridDisplay();
        }
        if (comparison.dataFormat == 'map') {
            comparison.makeMapDisplay();
        }
        if (comparison.dataFormat == 'distribution') {
            comparison.makeDistributionDisplay();
        }
    }




    // BEGIN THE MAP-SPECIFIC THINGS
    comparison.makeMapDisplay = function() {
        var API_URL = typeof(CR_API_URL) != 'undefined' ? CR_API_URL : API_URL + 'https://api.censusreporter.org';

        // some extra setup for map view
        // for triggering overflow-y: visible on table search
        comparison.lockedParent = $('#map-controls').css('max-height', function() {
            return (document.documentElement.clientHeight - 40) + 'px';
        })

        comparison.showStandardMetadata();
        comparison.addMapMetadata();

        comparison.makeMapDataSelector();
        comparison.makeMapLegendContainer();
        comparison.makeMapSumlevSelector();

        // initial page load, make map with currently selected
        // column (first column by default)
        if (comparison.hash.column && comparison.table.columns[comparison.hash.column]) {
            comparison.chosenColumn = comparison.hash.column;
        } else {
            comparison.chosenColumn = comparison.columnKeys[0];
        }

        var geoAPI = API_URL + "/1.0/geo/show/tiger2016?geo_ids=" + comparison.geoIDs.join(','),
            allowMapDrag = (browserWidth > 480) ? true : false;

        d3.json(geoAPI, function(error, json) {
            if (error) return console.warn(error);

            comparison.geoFeatures = json.features;
            comparison.mergeMapData();



            // draw the base map
            if (comparison.map) {
                // in case we're redrawing without refresh
                comparison.map.remove();
            }
            comparison.map = L.map('slippy-map', {
                scrollWheelZoom: false,
                zoomControl: false,
                dragging: allowMapDrag,
                touchZoom: allowMapDrag
            });

            // set a tile layer
            var tiles = L.tileLayer('https://stamen-tiles-{s}.a.ssl.fastly.net/toner-lite/{z}/{x}/{y}.png', { attribution: 'Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, under <a href=\"https://creativecommons.org/licenses/by/3.0/\" target=\"_blank\">CC BY 3.0</a>. Data by <a href=\"http://www.openstreetmap.org/\" target=\"_blank\">OpenStreetMap</a>, under ODbL.'
            });

            // add these tiles to our map
            comparison.map.addLayer(tiles);

            if (allowMapDrag) {
                comparison.map.addControl(new L.Control.Zoom({
                    position: 'topright'
                }));
            }

            comparison.showChoropleth();

            comparison.sumlevSelector.fadeIn();
            comparison.mapLegend.fadeIn();
            comparison.dataSelector.fadeIn();
        })

        comparison.changeMapControls();
        comparison.addGeographyCompareTools();
        if (!!comparison.denominatorColumn) {
            comparison.addMapNumberToggle(comparison.showChoropleth);
        }



        return comparison;
    }

    comparison.addMapNumberToggle = function(redrawFunc) {
        d3.select('#number-toggles').remove();
        var toggleText = (comparison.valueType == 'estimate') ? 'Switch to percentages' : 'Switch to totals',
            toggleID = (comparison.valueType == 'estimate') ? 'show-percentage' : 'show-number',
            controlsList = d3.select('#header-container .metadata'),
            toggle = controlsList.append('li')
                    .attr('id', 'number-toggles')
                    .classed('tool-group', true)
                .append('a')
                    .classed('toggle-control', true)
                    .attr('id', toggleID)
                    .text(toggleText);

        comparison.addNumberToggleListener(comparison.showChoropleth);
    }

    comparison.addMapMetadata = function() {
        // add the metadata to the header box
        comparison.headerContainer.selectAll('.metadata').remove();
        var headerMetadataContainer = comparison.headerContainer.append('ul')
                .classed('metadata', true);
        headerMetadataContainer.append('li')
                .classed('bigger', true)
                .text('Table '+ comparison.tableID);
        headerMetadataContainer.append('li')
                .classed('bigger', true)
                .text(comparison.release.name);
        headerMetadataContainer.append('li')
                .html('<a id="change-table" href="#">Change table</a>');

        comparison.headerContainer.selectAll('.caption').remove();
        comparison.headerContainer.append('p')
                .classed('caption', true)
            .append('span')
                .classed('caption-group', true)
                .html('<strong>Table universe:</strong> '+ comparison.table.universe);
    }

    comparison.makeMapLegendContainer = function() {
        // add container for dynamically-built legend
        comparison.headerContainer.selectAll('.legend-bar').remove();
        comparison.legendContainer = comparison.headerContainer.append('div')
                .classed('legend-bar', true)
            .append('div')
                .classed('tool-group', true)
                .attr('id', 'map-legend')
            .append('ul')
                .classed('quantile-legend', true);

        comparison.mapLegend = $('#map-legend');
    }

    comparison.makeMapDataSelector = function() {
        // add the "show column" picker
        comparison.headerContainer.select('#column-select').remove();
        var dataSelector = comparison.headerContainer.append('div')
                .classed('tool-group clearfix', true)
                .attr('id', 'column-select');

        dataSelector.append('h2')
                .classed('list-header', true)
                .text('Show column');

        var chosen = dataSelector.append('div')
                .classed('item-chosen', true)
                .attr('id', 'column-picker');

        var chosenTitle = chosen.append('h3')
                .classed('item-chosen-title', true);

        chosenTitle.append('i')
                .classed('fa fa-chevron-circle-down', true);

        chosenTitle.append('span')
                .attr('id', 'column-title-chosen');

        var chosenChoices = chosen.append('div')
                .classed('item-choices', true)
            .append('ul')
                .classed('filter-list clearfix', true)
                .attr('id', 'column-picker-choices');

        var makeColumnChoice = function(columnKey) {
            var columnData = comparison.table.columns[columnKey];
            var choice = '<li class="indent-'+columnData.indent+'">';
            if (columnKey.indexOf('.') != -1) {
                choice += '<span class="label">'+columnData.name+'</span>';
            } else {
                choice += '<a href="#" id="column-select-'+columnKey+'" data-value="'+columnKey+'" data-full-name="'+columnData.prefixed_name+'">'+columnData.name+'</a>'
            }
            choice += '</li>';

            return choice;
        }

        var columnChoices = d3.select('#column-picker-choices');
        columnChoices.selectAll("li")
                .data(comparison.columnKeys)
            .enter().append("li")
                .html(function(d) {
                    return makeColumnChoice(d);
                });

        if (!!comparison.denominatorColumn) {
            var columnChoiceDenominator = '<li class="indent-'+comparison.denominatorColumn.indent+'"><span class="label">'+comparison.denominatorColumn.name+'</span></li>';
            columnChoices.insert('li', ':first-child')
                .html(columnChoiceDenominator);
        }

        // set up dropdown listener for changing data column
        comparison.dataSelector = $('#column-select');
        comparison.dataSelector.on('click', '.item-chosen', function(e) {
            e.preventDefault();
            var chosenGroup = $(this);
            chosenGroup.toggleClass('open');
            chosenGroup.find('i[class^="fa "]').toggleClass('fa-chevron-circle-down fa-chevron-circle-up');
            comparison.trackEvent('Map View', 'Open column selector', '');
        });
        comparison.dataSelector.on('click', 'a', function(e) {
            e.preventDefault();
            e.stopPropagation();
            var selected = $(this);
            comparison.chosenColumn = selected.data('value');
            comparison.dataSelector.find('a').removeClass('option-selected');
            selected.addClass('option-selected');
            var chosenGroup = $(this).closest('.item-chosen');
            chosenGroup.toggleClass('open');
            comparison.changeMapControls();
            comparison.showChoropleth();
            comparison.trackEvent('Map View', 'Change display column', comparison.tableID);

            // update the URL
            window.location = comparison.buildComparisonURL();
        });
    }

    comparison.makeMapSumlevSelector = function() {
        // add the "change summary level" picker
        comparison.sortedSumlevList = comparison.makeSortedSumlevMap(comparison.sumlevMap);
        if (comparison.hash.sumlev && sumlevMap[comparison.hash.sumlev]) {
            comparison.chosenSumlev = comparison.hash.sumlev || comparison.sortedSumlevList[0]['sumlev'];
        } else {
            comparison.chosenSumlev = comparison.sortedSumlevList[0]['sumlev'];
        }

        comparison.headerContainer.select('#sumlev-select').remove();
        var sumlevSelector = comparison.headerContainer.append('div')
                .classed('tool-group clearfix', true)
                .attr('id', 'sumlev-select');

        sumlevSelector.append('h2')
                .classed('list-header', true)
                .text('Show summary level');

        var chosen = sumlevSelector.append('div')
                .classed('item-chosen', true)
                .attr('id', 'sumlev-picker');

        var chosenTitle = chosen.append('h3')
                .classed('item-chosen-title', true);

        chosenTitle.append('i')
                .classed('fa fa-chevron-circle-down', true);

        chosenTitle.append('span')
                .attr('id', 'sumlev-title-chosen');

        var chosenChoices = chosen.append('div')
                .classed('item-choices', true)
            .append('ul')
                .classed('filter-list clearfix', true)
                .attr('id', 'sumlev-picker-choices');

        var sumlevChoices = d3.select('#sumlev-picker-choices');
        sumlevChoices.selectAll("li")
                .data(comparison.sortedSumlevList)
            .enter().append("li")
                .classed("indent-1", true)
                .html(function(d) {
                    var thisName = (d.name.name == 'nation') ? 'nation' : d.name.plural;
                    return '<a href="#" id="sumlev-select-'+d.sumlev+'" data-value="'+d.sumlev+'">'+comparison.capitalize(thisName)+'</a>';
                });

        // set up dropdown listener for changing summary level
        comparison.sumlevSelector = $('#sumlev-select');
        comparison.sumlevSelector.on('click', '.item-chosen', function(e) {
            e.preventDefault();
            var chosenGroup = $(this);
            chosenGroup.toggleClass('open');
            chosenGroup.find('i[class^="fa "]').toggleClass('fa-chevron-circle-down fa-chevron-circle-up');
            comparison.trackEvent('Map View', 'Open summary level selector', '');
        });
        comparison.sumlevSelector.on('click', 'a', function(e) {
            e.preventDefault();
            e.stopPropagation();
            var selected = $(this);
            comparison.chosenSumlev = selected.data('value');
            comparison.sumlevSelector.find('a').removeClass('option-selected');
            selected.addClass('option-selected');
            var chosenGroup = $(this).closest('.item-chosen');
            chosenGroup.toggleClass('open');
            comparison.changeMapControls();
            comparison.makeChosenGeoList();
            comparison.showChoropleth();
            comparison.trackEvent('Map View', 'Change summary level', comparison.chosenSumlev);

            window.location = comparison.buildComparisonURL();
        });

    }

    comparison.changeMapControls = function() {
        // rebuild map controls with new data on select menu change
        var columnTitle = comparison.table.columns[comparison.chosenColumn]['prefixed_name'];
        d3.select("#column-title-chosen").text(columnTitle);
        var sumlevTitle = comparison.sumlevMap[comparison.chosenSumlev]['name']['plural'];
        d3.select("#sumlev-title-chosen").text(comparison.capitalize(sumlevTitle));
    }

    comparison.makeMapLabel = function(feature, column) {
        if (!!feature.properties.data) {
            var thisValue = feature.properties.data.estimate[column],
                thisValueMOE = feature.properties.data.error[column],
                thisIsValue = !!thisValue && comparison.valueType == 'estimate',
                thisPct = (!!comparison.denominatorColumn) ? feature.properties.data.percentage[column] : null,
                thisPctMOE = (!!comparison.denominatorColumn) ? feature.properties.data.percentage_error[column] : null,
                thisIsPct = !!thisPct && comparison.valueType == 'percentage',
                label = '<span class="label-title">' + feature.properties.name + '</span>',
                pctLabel = '',
                valLabel = '',
                strLabelNumbers;

            if (!!thisPct) {
                var openParen = (thisIsValue) ? '(' : '',
                    closeParen = (thisIsValue) ? ')' : '';
                pctLabel = '<span class="inline-stat">' + openParen + valFmt(thisPct, 'percentage');
                if (!column.startsWith('D3-')) {
                    pctLabel += '<span class="context">&plusmn;' + valFmt(thisPctMOE, 'percentage') + '</span>';
                    pctLabel += closeParen + '</span>';
                } else {
                    pctLabel += closeParen + '</span>';
                }
                
            }
            if (!!thisValue) {
                var openParen = (thisIsPct) ? '(' : '',
                    closeParen = (thisIsPct) ? ')' : '';
                valLabel = '<span class="inline-stat">' + openParen + valFmt(thisValue, comparison.statType);
                if (!column.startsWith('D3-')) {
                    valLabel += '<span class="context">&plusmn;' + valFmt(thisValueMOE, comparison.statType) + '</span>';
                    valLabel += closeParen + '</span>';
                } else {
                    valLabel += closeParen + '</span>';
                }
            }

            strLabelNumbers = (thisIsPct) ? pctLabel + valLabel : valLabel + pctLabel;
            label += '<span class="name">' + comparison.table.columns[column]['prefixed_name'] + '</span>';
            label += '<span class="value">' + strLabelNumbers + '</span>';
        }
        return label;
    }

    comparison.mergeMapData = function() {
        // add table data to each geography's properties
        _.each(comparison.geoFeatures, function(e) {
            e.properties.data = comparison.values[e.properties.geoid][comparison.tableID];
        })
    }

    comparison.showChoropleth = function() {
        // build map based on specific column of data
        if (comparison.featureLayer) {
            comparison.map.removeLayer(comparison.featureLayer);
        }

        var viewGeoData = _.filter(comparison.geoFeatures, function(g) {
            var thisSumlev = g.properties.geoid.slice(0, 3);
            return thisSumlev == comparison.chosenSumlev;
        })

        var values = d3.values(viewGeoData).map(function(d) {
            return d.properties.data[comparison.valueType][comparison.chosenColumn];
        });


        // create the legend
        var quintileColors = ['#D4E6EC', '#799CA9', '#487586', '#1F4E5F', '#4F80BA'];
        var buildLegend = function(colors) {
            var scaleStops = (values.length >= 5) ? 5 : values.length;

            comparison.quantize = d3.scale.quantile()
                .domain([d3.min(values), d3.max(values)])
                .range(d3.range(scaleStops));

            colors = _.last(colors, scaleStops);
            comparison.colors = colors.slice(0);
            colors.unshift(null);

            comparison.legendContainer.selectAll('li').remove();
            comparison.legendContainer.selectAll('li')
                    .data(colors)
                .enter().append('li')
                    .style('background-color', function(d) { if (d) { return d }})
                    .classed('empty', function(d) { return (d == null) })
                .append('span')
                    .classed('quantile-label', true);
        }
        buildLegend(quintileColors);

        // add the actual label values
        var labelData = comparison.quantize.quantiles().slice(0),
            min = d3.min(values),
            max = d3.max(values),
            precision = (max <= 1) ? 2 : 1;

        // cases like Gini Index aren't pct, but range display needs decimals
        if (comparison.valueType != 'percentage') {
            precision = (max <= 1) ? 2 : (max <= 10) ? 1 : 0;
        }

        labelData.unshift(min);
        labelData.push(max);

        var legendLabels = d3.select("#map-legend")
            .selectAll("span")
            .data(labelData)
            .text(function(d){
                if (typeof(d) != 'undefined') {
                    if (comparison.valueType == 'percentage') {
                        return roundNumber(d, precision) + '%';
                    } else {
                        var prefix = (comparison.statType == 'dollar') ? '$' : '';
                        return prefix + numberWithCommas(d, precision);
                    }
                }
            });

        var styleFeature = function(feature) {
            return {
                fillColor: comparison.colors[
                    comparison.quantize(feature.properties.data[comparison.valueType][comparison.chosenColumn])
                ],
                weight: 1.0,
                opacity: 1.0,
                color: '#fff',
                fillOpacity: .90
            };
        }

        comparison.featureLayer = L.geoJson(viewGeoData, {
            style: styleFeature,
            onEachFeature: function(feature, layer) {
                var label = comparison.makeMapLabel(feature, comparison.chosenColumn);

                layer.bindLabel(label, {className: 'hovercard', direction: 'auto', offset: [10, -38]});
                layer.on('click', function() {
                    comparison.trackEvent('Map View', 'Click to visit geo detail page', feature.properties.name);
                     // add spinner to page load 
                    spinner.spin(spinnerTarget);                   
                    window.location.href = '/profiles/' + feature.properties.geoid + '-' + slugify(feature.properties.name);
                });
            }
        });
        comparison.map.addLayer(comparison.featureLayer);
        var objBounds = comparison.featureLayer.getBounds();
        if (comparison.chosenSumlev === '040') {
            var geoIDList = _.map(viewGeoData, function(g) {
                return g.properties.geoid
            })
            if ((_.indexOf(geoIDList, '04000US02') > -1) || (_.indexOf(geoIDList, '04000US15') > -1)) {
                objBounds = L.latLngBounds(L.latLng(17.831509, -179.231086), L.latLng(71.4410, -66.9406));
            }
        }

        if (browserWidth > 768) {
            var z,
                targetWidth = browserWidth - 100,
                targetHeight = browserHeight - 100;
            for(z = 16; z > 2; z--) {
                var swPix = comparison.map.project(objBounds.getSouthWest(), z),
                    nePix = comparison.map.project(objBounds.getNorthEast(), z),
                    pixWidth = Math.abs(nePix.x - swPix.x),
                    pixHeight = Math.abs(nePix.y - swPix.y);
                if (pixWidth < targetWidth && pixHeight < targetHeight) {
                    break;
                }
            }
            comparison.map.setView(objBounds.getCenter(), z);
            if (browserWidth < 1600) {
                comparison.map.panBy([-200, 0], {animate: false});
            }
        } else {
            comparison.map.fitBounds(objBounds);
        }
    }
    // DONE WITH THE MAP-SPECIFIC THINGS




    // BEGIN THE GRID-SPECIFIC THINGS
    comparison.makeGridDisplay = function() {
        comparison.showStandardMetadata();
        comparison.addContainerMetadata();

        comparison.addGridControls();
        comparison.makeGridHeader();
        comparison.makeGridRows();

        comparison.addGeographyCompareTools();
        comparison.lockVisibleGeoControls();

        return comparison;
    }

    comparison.makeGridHeader = function() {
        comparison.gridData = comparison.gridData || {};

        var gridHeaderBits = ['<i class="fa fa-long-arrow-right"></i>Column'];
        comparison.sortedPlaces.forEach(function(g) {
            var geoID = g.geoID,
                geoName = (comparison.data.geography[geoID]) ? comparison.data.geography[geoID].name : 'N/A';
            gridHeaderBits.push('<a href="/profiles/' + geoID + '-' + slugify(geoName) + '">' + geoName + '</a>');
        })

        comparison.gridData.Head = [gridHeaderBits];
    }

    comparison.makeGridRows = function() {
        comparison.gridData = comparison.gridData || {};
        var truncatedName = function(name) {
            return (name.length > 50) ? name.substr(0,50) + "..." : name;
        }

        // build the columns
        var gridRows = [];
        _.each(comparison.table.columns, function(v, k) {
            var gridRowBits = ['<div class="name indent-' + v.indent + '" data-full-name="' + v.name + '" title="' + k + '">' + truncatedName(v.name) + '</div>'];

            comparison.sortedPlaces.forEach(function(g) {
                var geoID = g.geoID,
                    thisRow = comparison.values[geoID][comparison.tableID],
                    thisValue = null,
                    thisValueMOE = null,
                    thisFmt = (comparison.valueType == 'percentage') ? 'percentage' : comparison.statType,
                    gridRowCol = '';


                if (!comparison.tableID.startsWith('D3-')) {
                    thisValue = (comparison.valueType == 'estimate') ? thisRow.estimate[k] : thisRow.percentage[k];
                    thisValueMOE = (comparison.valueType == 'estimate') ? thisRow.error[k] : thisRow.percentage_error[k];
                } else {
                    if (thisRow.estimate[k] == null) {
                        thisValue = null;
                    } else {
                        thisValue = (comparison.valueType == 'estimate') ? thisRow.estimate[k] : thisRow.percentage[k];
                    }
                }
                
                // add raw numbers
                if (thisValue >= 0) {
                    gridRowCol += '<span class="value number">' + valFmt(thisValue, thisFmt) + '</span>';
                    if (!comparison.tableID.startsWith('D3-')) {
                        gridRowCol += '<span class="context number">&plusmn;' + valFmt(thisValueMOE, thisFmt) + '</span>';
                    }
                }
                gridRowBits.push(gridRowCol);
            })
            gridRows.push(gridRowBits);
        })

        comparison.gridData.Body = gridRows;
        comparison.showGrid();
    }

    comparison.showGrid = function() {
        comparison.resultsContainerID = 'data-results';
        comparison.dataContainer.selectAll('#'+comparison.resultsContainerID).remove();

        // add empty container for the grid
        comparison.dataContainer.append('div')
            .classed('data-drawer grid', true)
            .attr('id', comparison.resultsContainerID)
            .style('height', '100%')
            .style('width', '100%')
            .style('overflow', 'hidden');

        // send comparison.gridData through Grid.js and into grid container
        comparison.grid = new Grid(comparison.resultsContainerID, {
            srcType: "json",
            srcData: comparison.gridData,
            allowColumnResize: true,
            fixedCols: 1,
            onResizeColumn: function() {
                $('.name').text(function() { return $(this).data('full-name') })
            }
        });

        // add hover listeners for grid rows
        comparison.$displayWrapper.on('mouseover', '.g_BR', function(e) {
            var thisClass = $(this).attr('class').split(' ');
            var thisRow = $.grep(thisClass, function(c) {
                return c.substr(0,3) == 'g_R';
            });
            $('.'+thisRow+':not(.g_HR)').addClass('hover');
        });

        comparison.$displayWrapper.on('mouseleave', '.g_BR', function(e) {
            var thisClass = $(this).attr('class').split(' ');
            var thisRow = $.grep(thisClass, function(c) {
                return c.substr(0,3) == 'g_R';
            });
            $('.'+thisRow+':not(.g_HR)').removeClass('hover');
        });

        comparison.$displayWrapper.on('click', '.g_BR', function(e) {
            var thisClass = $(this).attr('class').split(' ');
            var thisRow = $.grep(thisClass, function(c) {
                return c.substr(0,3) == 'g_R';
            });
            $('.'+thisRow+':not(.g_HR)').toggleClass('highlight');
            comparison.trackEvent('Table View', 'Click to toggle row highlight', '');
        });

        // be smart about fixed height
        comparison.dataDisplayHeight = $('#data-results').height()+20;
        comparison.setResultsContainerHeight();
        $(window).resize(comparison.setResultsContainerHeight);
    }

    comparison.addGridControls = function() {
        if (!!comparison.denominatorColumn) {
            comparison.addNumberToggles(comparison.makeGridRows);
        }

        var notes = d3.select('#tool-notes');
        notes.selectAll('#tool-instructions').remove();
        notes.append('div')
            .classed('tool-group', true)
            .attr('id', 'tool-instructions')
            .text('Click a row to highlight');
    }
    // DONE WITH THE GRID-SPECIFIC THINGS




    // BEGIN THE DISTRIBUTION-SPECIFIC THINGS
    comparison.makeDistributionDisplay = function() {
        comparison.showStandardMetadata();
        comparison.addContainerMetadata();

        comparison.addDistributionControls();
        comparison.showDistributionCharts();

        comparison.addGeographyCompareTools();
        comparison.lockVisibleGeoControls();

        return comparison;
    }

    comparison.makeDistributionChartData = function() {
        comparison.charts = {};
        comparison.chartColumnData = {};

        // build chart data for each column in the table
        _.each(comparison.table.columns, function(v, k) {
            // ignore label columns
            if (k.indexOf('.') != -1) { return; }

            comparison.chartColumnData[k] = {
                column: k,
                prefixed_name: v.prefixed_name,
                geographies: {}
            };

            var valuesList = _.map(comparison.values, function(g) { return g[comparison.tableID][comparison.valueType][k] });
            comparison.chartColumnData[k].minValue = d3.min(valuesList);
            comparison.chartColumnData[k].maxValue = d3.max(valuesList);
            comparison.chartColumnData[k].valuesRange = comparison.chartColumnData[k].maxValue - comparison.chartColumnData[k].minValue;
            comparison.chartColumnData[k].medianValue = roundNumber(d3.median(valuesList), 2);

            comparison.chartColumnData[k].xScale = d3.scale.linear()
                .range([0, 100])
                .domain([comparison.chartColumnData[k].minValue, comparison.chartColumnData[k].maxValue]);
            comparison.chartColumnData[k].medianPctOfRange = roundNumber(comparison.chartColumnData[k].xScale(comparison.chartColumnData[k].medianValue), 1);

            comparison.sortedPlaces.forEach(function(g) {
                var geoID = g.geoID,
                    thisValue = comparison.values[geoID][comparison.tableID].estimate[k],
                    thisValueMOE = comparison.values[geoID][comparison.tableID].error[k],
                    thisPct = (!!comparison.denominatorColumn) ? comparison.values[geoID][comparison.tableID].percentage[k] : null,
                    thisPctMOE = (!!comparison.denominatorColumn) ? comparison.values[geoID][comparison.tableID].percentage_error[k] : null;

                comparison.chartColumnData[k].geographies[geoID] = {
                    name: comparison.data.geography[geoID].name,
                    estimate: thisValue,
                    estimate_moe: thisValueMOE,
                    percentage: thisPct,
                    percentage_moe: thisPctMOE,
                    geoID: geoID
                }
            })
        })
    }

    comparison.showDistributionCharts = function() {
        comparison.dataContainer.selectAll('section').remove();
        comparison.makeDistributionChartData();

        comparison.chartDisplayFmt = (comparison.valueType == 'percentage') ? 'percentage' : comparison.statType;

        _.each(comparison.chartColumnData, function(v, k) {
            comparison.charts[k] = comparison.dataContainer.append('section')
                    .attr('class', 'coal-chart-container')
                    .attr('id', 'coal-chart-'+k)

            comparison.charts[k].append('h2')
                    .attr('id', k)
                    .html('<a class="permalink" href="#'+k+'">'+v.prefixed_name+' <i class="fa fa-link"></i></a>');

            var chart = comparison.charts[k].append('ul')
                .attr('class', 'coal-chart');

            chart.append('li')
                .attr('class', 'tick-mark tick-mark-min')
                .html('<span><b>Min:</b> '+valFmt(v.minValue, comparison.chartDisplayFmt)+'</span>');

            chart.append('li')
                .attr('class', 'tick-mark')
                .attr('style', 'left:'+v.medianPctOfRange+'%;')
                .html(function() {
                    var marginTop = (v.medianPctOfRange < 12 || v.medianPctOfRange > 88) ? 'margin-top:38px;' : '';
                    return '<span style="'+marginTop+'"><b>Median:</b> '+valFmt(v.medianValue, comparison.chartDisplayFmt)+'</span>';
                });

            chart.append('li')
                .attr('class', 'tick-mark tick-mark-max')
                .html('<span><b>Max:</b> '+valFmt(v.maxValue, comparison.chartDisplayFmt)+'</span>');

            var chartPoints = chart.selectAll('.chart-point')
                    .data(d3.values(v.geographies))
                .enter().append('li')
                    .classed('chart-point', true)
                    .style('left', function(d) {
                        return roundNumber(v.xScale(d[comparison.valueType]), 1)+'%';
                    });

            var chartPointCircles = chartPoints.append('span')
                    .attr('class', 'point')
                    .attr('data-index', function(d) {
                        return 'geography-'+d.geoID;
                    });

            comparison.makeDistributionLabels(chartPointCircles);
        })

        // set up the chart point listeners
        comparison.coalCharts = $('.coal-chart');
        comparison.coalChartPoints = $('.coal-chart .point');

        comparison.coalCharts.on('mouseover', '.point', function(e) {
            var chosenIndex = $(this).data('index'),
                filteredPoints = comparison.coalChartPoints.filter('[data-index='+chosenIndex+']');

            filteredPoints.addClass('hovered');
            filteredPoints.children('span').css('display', 'block');
        })
        comparison.coalCharts.on('mouseout', '.point', function(e) {
            comparison.coalChartPoints.removeClass('hovered');
            comparison.coalChartPoints.children('span').removeAttr('style');
        })
        comparison.coalCharts.on('click', '.point', function(e) {
            // allow clicking on the hovercard link
            if (e.target.tagName == 'A') return;
            e.preventDefault();
            comparison.toggleSelectedDistributionPoints($(this).data('index'));
            comparison.trackEvent('Distribution View', 'Click to toggle point highlight', '');
        })
    }

    comparison.makeDistributionLabels = function(points) {
        var chartPointLabels = points.append('span')
                .classed('hovercard', true);

        chartPointLabels.append('a')
                .classed('label-title', true)
                .attr('href', function(d) { return '/profiles/' + d.geoID + '/'; })
                .text(function(d) { return d.name });

        var addPct = function() {
            if (!!comparison.denominatorColumn) {
                chartPointLabels.append('span')
                        .classed('value', true)
                        .text(function(d) { return valFmt(d.percentage, 'percentage') })
                    .append('span')
                        .classed('context', true)
                        .html(function(d) { return '&plusmn;' + valFmt(d.percentage_moe, 'percentage') });
            }
        }
        var addEst = function() {
            chartPointLabels.append('span')
                    .classed('value', true)
                    .text(function(d) { return valFmt(d.estimate, comparison.statType) })
                .append('span')
                    .classed('context', true)
                    .html(function(d) { return '&plusmn;' + valFmt(d.estimate_moe, comparison.statType) });
        }

        if (comparison.valueType == 'percentage') {
            addPct();
            addEst();
        } else {
            addEst();
            addPct();
        }
    }

    comparison.addDistributionControls = function() {
        var notes = d3.select('#tool-notes');
        if (!!comparison.denominatorColumn) {
            comparison.addNumberToggles(comparison.showDistributionCharts);
        }

        notes.selectAll('#picker-group').remove();
        var placeSelect = notes.append('div')
                .attr('id', 'picker-group')
                .classed('tool-group', true)
                .text('Find ')
            .append('select')
                .attr('id', 'coal-picker');

        // add the geography select options
        // select2 needs an empty option first for placeholder
        placeSelect.append('option');
        placeSelect.selectAll('.geo')
                .data(comparison.sortedPlaces)
            .enter().append('option')
                .classed('geo', true)
                .attr('value', function(d) {
                    return 'geography-'+d.geoID;
                })
                .text(function(d) { return d.name });

        // add the place picker to highlight points on charts
        var placePicker = $('#coal-picker');
        placePicker.select2({
            placeholder: 'Select a geography',
            width: 'resolve'
        });
        placePicker.on('change', function(e) {
            comparison.toggleSelectedDistributionPoints($(this).val());
            comparison.trackEvent('Distribution View', 'Use dropdown to toggle point highlight', '');
        })

        // color scale for locked chart points
        comparison.colorScale = chroma.scale(['#76AFF2', '#86af3f', '#6595ce', '#686867', '#4F80BA', '#22592c',  '#f4a81d']).domain([0,6]);
        comparison.colorIndex = 0;
    }

    comparison.toggleSelectedDistributionPoints = function(chosenIndex) {
        var filteredPoints = comparison.coalChartPoints.filter('[data-index='+chosenIndex+']');
        // if adding a new selection, pick next color in scale
        if (!filteredPoints.hasClass('selected')) {
            targetColor = comparison.colorScale((comparison.colorIndex+=1) % 6);
        }
        filteredPoints.toggleClass('selected').removeAttr('style').filter('.selected').css({
            'background-color': targetColor.hex(),
            'border-color': targetColor.darken(20).hex()
        });
    }
    // DONE WITH THE DISTRIBUTION-SPECIFIC THINGS




    // utilities and standard comparison tools
    comparison.showStandardMetadata = function() {
        if (comparison.table.title == "Poverty Status in the Past 12 Months of Related Children Under 18 Years by Family Type by Age of Related Children Under 18 Years") {
            // shorten table title for childhood poverty linked from critical questions
            comparison.table.title = "Child Poverty Status in the Past 12 Months by Family Type and Age of Children";
        } 

        // fill in some metadata and instructions
        d3.select('#table-universe').html('<strong>Table universe:</strong> ' + comparison.table.universe);
        comparison.aside.selectAll('.hidden')
            .classed('hidden', false);
        d3.select('#table-title').remove();
        comparison.headerContainer.append('h1')
            .attr('id', 'table-title')
            .text(comparison.table.title);

        // for long table titles, bump down the font size
        if (comparison.table.title.length > 160) {
            comparison.headerContainer.select('h1')
                .style('font-size', '1.6em');
        }
    }

    comparison.addContainerMetadata = function() {
        // tableID and change table link
        comparison.$displayWrapper.find('h1').text('Table ' + comparison.tableID)
            .append('<a href="#" id="change-table">Change</a>');
        comparison.$displayWrapper.find('h2').text(comparison.release.name);
    }

    comparison.addPercentageDataValues = function() {
        _.each(comparison.values, function(e) {
            var thisData = e[comparison.tableID];
            thisData.percentage = {};
            thisData.percentage_error = {};
            _.each(_.keys(comparison.table.columns), function(k) {
                var thisValue = thisData.estimate[k],
                    thisValueMOE = thisData.error[k],
                    thisDenominator = thisData.estimate[comparison.denominatorColumn.id],
                    thisDenominatorMOE = thisData.error[comparison.denominatorColumn.id];

                thisData.percentage[k] = calcPct(thisValue, thisDenominator);
                thisData.percentage_error[k] = calcPctMOE(thisValue, thisDenominator, thisValueMOE, thisDenominatorMOE);
            })
        })
    }

    // typeahead autocomplete setup
    comparison.topicSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 1500,
        remote: {
            url: comparison.tableSearchAPI,
            replace: function (url, query) {
                url += '?';
                if (query) {
                    comparison.queryString = query;
                    url += 'q=' + query;
                }
                return url;
            },
            filter: function(response) {
            // inject results for D3 tables here is query term matches a string
                var re = new RegExp(comparison.queryString, 'g');
                // births
                var births = 'totalbirthsnonhispanicwhiteblackotherinadequateprenatalcarelowbirthweightteenmothersfertilityracehealthcare';
                var match_births = births.match(re);
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
                var match_grad = grad.match(re);
                if (match_grad) {
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

    comparison.makeTopicSelectWidget = function() {
        comparison.topicSelectEngine.initialize();

        var element = comparison.$topicSelect;

        element.typeahead('destroy');
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'topics',
            displayKey: 'simple_table_name',
            source: comparison.topicSelectEngine.ttAdapter(),
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
            comparison.tableID = datum['table_id'];
            if (!!comparison.tableID) {
                comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Change table', comparison.tableID);

                window.location = comparison.buildComparisonURL();
            }
        });

        // standard listeners
        comparison.$pageWrapper.on('click', '#change-table, #cancel-search', function(e) {
            e.preventDefault();
            comparison.toggleTableSearch();
            comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Toggle table search', '');
        });

        return comparison;
    }

    comparison.geoSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 20,
        remote: {
            url: comparison.geoSearchAPI,
            replace: function (url, query) {
                comparison.chosenSumlevAncestorList = '040,050,060,250,252,254,310,500,610,620,860,950,960,970';
                return url += '?q=' + query + '&sumlevs=' + comparison.chosenSumlevAncestorList;
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
                return results;
            }
        }
    });

    comparison.sumlevSelectEngine = new Bloodhound({
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

    comparison.makeGeoSelectWidget = function() {
        comparison.geoSelectEngine.initialize();
        comparison.sumlevSelectEngine.initialize();

        d3.select('#comparison-add').remove();
        comparison.geoSelectContainer = comparison.aside.append('div')
            .attr('class', 'aside-block search hidden')
            .attr('id', 'comparison-add');

        comparison.geoSelectContainer.append('a')
                .classed('action-button', true)
                .attr('href', '#')
                .text('Show selected places')
                .on('click', function() {
                    d3.event.preventDefault();
                    comparison.toggleGeoControls();
                    comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Toggle geo search', '');
                })

        comparison.geoSelectContainer.append('p')
            .attr('class', 'bottom display-type strong')
            .attr('id', 'comparison-add-header')
            .text('Add a geography');

        comparison.geoSelectContainer.append('input')
            .attr('name', 'geography_add')
            .attr('id', 'geography-add')
            .attr('type', 'text')
            .attr('placeholder', 'Find a place')
            .attr('autocomplete', 'off');

        var element = $('#geography-add');
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'summary_levels',
            displayKey: 'plural_name',
            source: comparison.sumlevSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Summary levels</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{plural_name}}<span class="result-type">{{sumlev}}</span></p>'
                )
            }
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: comparison.geoSelectEngine.ttAdapter(),
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
                comparison.chosenSumlev = datum['sumlev'];
                comparison.chosenSumlevPluralName = datum['plural_name'];
                comparison.chosenSumlevAncestorList = datum['ancestor_sumlev_list'],
                comparison.chosenSumlevAncestorOptions = datum['ancestor_options'];

                comparison.makeParentSelectWidget();
                $('#geography-add-parent-container').slideDown();
                $('#geography-add-parent').focus();
            } else if (!!datum['full_geoid']) {
                // we have a geoID, so add it
                comparison.geoIDs.push(datum['full_geoid']);
                comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Add geography', datum['full_geoid']);

                // TODO: pushState to maintain history without page reload
                window.location = comparison.buildComparisonURL();
            }
        });
    }

    comparison.makeParentSelectWidget = function() {
        d3.select('#geography-add-parent-container').remove();
        var parentContainer = comparison.geoSelectContainer.append('div')
                .attr('id', 'geography-add-parent-container')
                .classed('hidden', true);

        parentContainer.append('p')
                .attr('class', 'bottom display-type strong')
                .html('&hellip; in &hellip;');

        parentContainer.append('input')
                .attr('name', 'geography_add_parent')
                .attr('id', 'geography-add-parent')
                .attr('type', 'text')
                .attr('placeholder', 'Find a place')
                .attr('autocomplete', 'off');

        parentContainer.append('p')
                .attr('class', 'display-type')
                .text(comparison.capitalize(comparison.chosenSumlevPluralName) + ' can be compared within ' + comparison.chosenSumlevAncestorOptions + '.');

        var element = $('#geography-add-parent');
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: comparison.geoSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        if (comparison.chosenSumlev == '040') {
            element.typeahead('val', 'United States');
        }

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();
            if (!!datum['full_geoid']) {
                var geoGroup = comparison.chosenSumlev + '|' + datum['full_geoid']
                comparison.geoIDs.push(geoGroup);
                comparison.primaryGeoID = datum['full_geoid'];
                comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Add geography group', geoGroup);

                window.location = comparison.buildComparisonURL();
            }
        });
    }

    comparison.makeParentOptions = function() {
        // no tribbles!
        d3.selectAll('#comparison-parents').remove();

        if (!!comparison.primaryGeoID && comparison.thisSumlev != '010') {
            var parentGeoAPI = comparison.rootGeoAPI + comparison.primaryGeoID + '/parents',
                parentOptionsContainer = comparison.aside.append('div')
                    .attr('class', 'aside-block hidden')
                    .attr('id', 'comparison-parents');

            $.getJSON(parentGeoAPI)
                .done(function(results) {
                    parentOptionsContainer.append('p')
                        .attr('class', 'bottom display-type strong')
                        .html('Add all ' + sumlevMap[comparison.thisSumlev]['plural'] + ' in&nbsp;&hellip;');

                    var parents = _.reject(results['parents'], function(i) {
                        return i.relation == 'this' || i.relation == 'nation'
                    })

                    parentOptionsContainer.append('ul')
                            .attr('class', 'sumlev-list')
                        .selectAll('li')
                            .data(parents)
                        .enter().append('li').append('a')
                            .attr('href', function(d) {
                                var newGeoIDs = comparison.geoIDs.slice(0);
                                newGeoIDs.push(comparison.thisSumlev + '|' + d.geoid);

                                return comparison.buildComparisonURL(
                                    comparison.dataFormat, comparison.tableID, newGeoIDs, comparison.primaryGeoID, comparison.thisSumlev
                                )
                            })
                            .text(function(d) { return d.display_name });

                });
        }
        return comparison;
    }

    comparison.makeChildOptions = function() {
        // no tribbles!
        d3.selectAll('#comparison-children').remove();

        if (!!comparison.primaryGeoID && comparison.thisSumlev != '150') {
            var childOptionsContainer = comparison.aside.append('div')
                    .attr('class', 'aside-block hidden')
                    .attr('id', 'comparison-children');

            childOptionsContainer.append('p')
                    .attr('class', 'bottom display-type strong')
                    .html('Divide ' + comparison.primaryGeoName + ' into &hellip;');

            childOptionsContainer.append('ul')
                    .attr('class', 'sumlev-list')
                .selectAll('li')
                    .data(sumlevMap[comparison.thisSumlev]['children'])
                .enter().append('li').append('a')
                    .attr('href', function(d) {
                        // skip building places
                        if (d != 160) {
                            var newGeoIDs = comparison.geoIDs.slice(0);
                            newGeoIDs.push(d + '|' + comparison.primaryGeoID);
                            return comparison.buildComparisonURL(
                                comparison.dataFormat, comparison.tableID, newGeoIDs, comparison.primaryGeoID, d
                            )
                        }

                    })
                    .text(function(d) { 
                        // skip building places
                        if (d != 160) {
                            return sumlevMap[d]['plural'] 
                        }
                    });
        }
        return comparison;
    }

    comparison.makeChosenGeoList = function() {
        // no tribbles!
        d3.selectAll('#comparison-chosen-geos').remove();

        var chosenGeoContainer = comparison.aside.append('div')
                .attr('class', 'aside-block')
                .attr('id', 'comparison-chosen-geos');

        chosenGeoContainer.append('a')
                .classed('action-button', true)
                .attr('href', '#')
                .text('Add more places')
                .on('click', function() {
                    d3.event.preventDefault();
                    comparison.toggleGeoControls();
                    comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Toggle geo search', '');
                })

        chosenGeoContainer.append('p')
                .attr('class', 'bottom display-type strong')
                .html('Selected geographies');

        var geoOptions = _.flatten(_.map(comparison.sumlevMap, function(s) {
            return s.selections
        }))

        var chosenGeoOptions = chosenGeoContainer.append('ul')
                .attr('class', 'sumlev-list')
            .selectAll('li')
                .data(geoOptions)
            .enter().append('li')
                .attr('data-geoid', function(d) { return d.geoID })
                .classed('inactive', function(d) {
                    return (comparison.chosenSumlev && comparison.chosenSumlev != d.sumlev) ? true : false
                })
                .text(function(d) { return d.name });

        // TO DO: fix problmes with removing geographies from map -- this is causing errors
        if (geoOptions.length > 1 && comparison.dataFormat != 'map') {
            var removeGeoOptions = chosenGeoOptions.append('a')
                    .classed('remove', true)
                    .attr('href', '#')
                    .attr('data-geoid', function(d) { return d.geoID })
                    .html('<small>Remove</small>')
                    .on('click', function(d) {
                        comparison.removeGeoID(d.geoID, this)
                        comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Remove geography', d.geoID);
                    });
        }

        return comparison;
    }

    comparison.toggleGeoControls = function() {
        $('#comparison-chosen-geos, #comparison-add, #comparison-parents, #comparison-children, #map-controls #data-display').toggle();
        if (!!comparison.lockedParent) {
            var toggledY = (comparison.lockedParent.css('overflow-y') == 'auto') ? 'visible' : 'auto';
            comparison.lockedParent.css('overflow-y', toggledY);
        }
    }

    comparison.lockVisibleGeoControls = function() {
        $('#comparison-chosen-geos, #comparison-add, #comparison-parents, #comparison-children').show();
        $('aside .action-button').hide();
    }

    comparison.toggleTableSearch = function() {
        comparison.$displayHeader.toggle();
        comparison.$displayWrapper.toggle();

        if (!!comparison.lockedParent) {
            comparison.lockedParent.find('aside').toggle();
            comparison.lockedParent.css('overflow-y', 'visible');
        }

        comparison.$topicSelectContainer.toggle();
        comparison.$topicSelect.focus();
    }

    comparison.addGeographyCompareTools = function() {
        comparison.aside.selectAll('.aside-block').remove();


        // show the currently selected geographies
        comparison.makeChosenGeoList();

        // add typeahead place picker
        comparison.makeGeoSelectWidget();

        // fallback again in case we're redrawing without refresh
        if (!!comparison.primaryGeoID && !!comparison.primaryGeoName) {
            // create shortcuts for adding groups of geographies to comparison
            comparison.makeParentOptions();
            comparison.makeChildOptions();
        }

    }

    comparison.addNumberToggles = function(redrawFunction) {
        d3.select('#number-toggles').remove();
        var toggleText = (comparison.valueType == 'estimate') ? 'Switch to percentages' : 'Switch to totals',
            toggleID = (comparison.valueType == 'estimate') ? 'show-percentage' : 'show-number',
            notes = d3.select('#tool-notes'),
            toggle = notes.append('div')
                    .attr('id', 'number-toggles')
                    .classed('tool-group', true)
                .append('a')
                    .classed('toggle-control', true)
                    .attr('id', toggleID)
                    .text(toggleText);

        comparison.addNumberToggleListener(redrawFunction);
        return comparison;
    }

    comparison.addNumberToggleListener = function(redrawFunction) {
        var toggleControl = $('.toggle-control');
        toggleControl.on('click', function() {
            var clicked = $(this),
                showClass = clicked.attr('id').replace('show-','.'),
                toggleID = (showClass == '.number') ? 'show-percentage' : 'show-number',
                toggleText = (showClass == '.number') ? 'Switch to percentages' : 'Switch to totals';

            toggleControl.attr('id', toggleID).text(toggleText);
            comparison.trackEvent(comparison.capitalize(comparison.dataFormat)+' View', 'Toggle percent/number display', showClass);

            // update the URL and redraw the page
            comparison.valueType = (comparison.valueType == 'estimate') ? 'percentage' : 'estimate';
            comparison.updateHashObj('valueType', comparison.valueType);
            if (!!redrawFunction) {
                redrawFunction();
            }
        })
    }

    comparison.addToggleViewListener = function() {
        $('#data-view-toggles').on('click', 'a', function(e) {
            e.preventDefault();
            // make the url for pushState
            var url = comparison.buildComparisonURL(
                $(this).data('format'), comparison.tableID, comparison.geoIDs, comparison.primaryGeoID
            );
            spinner.spin(spinnerTarget);
            window.location = url;
        });
    }



    // UTILITIES

    comparison.buildComparisonURL = function(dataFormat, tableID, geoIDs, primaryGeoID, newSumLev) {
        // pass in vars to create arbitrary destinations
        if (!!tableID) {
            // if we're changing tables, need to get rid of hash params
            // that might not be valid in the next table
            comparison.hash = {};
        }

        var dataFormat = dataFormat || comparison.dataFormat,
            tableID = tableID || comparison.tableID,
            geoIDs = geoIDs || comparison.geoIDs,
            primaryGeoID = primaryGeoID || comparison.primaryGeoID;

        var url = '/data/'+dataFormat+'/?table='+tableID;
        if (!!geoIDs) {
            url += '&geo_ids=' + geoIDs.join(',')
        }
        if (!!primaryGeoID) {
            url += '&primary_geo_id=' + primaryGeoID
        }

        if (!newSumLev) {
            newSumLev = comparison.chosenSumlev;
        }

        if (dataFormat == 'map') {
            comparison.hash = {};
            if (comparison.chosenColumn) comparison.hash.column = comparison.chosenColumn;
            if (newSumLev) comparison.hash.sumlev = newSumLev;
        }

        if (!!comparison.hash) {
            var hashArray = [];
            _.each(comparison.hash, function(v, k) {
                hashArray.push(k+'|'+v)
            });

            if (hashArray.length) {
                url += '#' + hashArray.join(',');
            }
        }

        return url
    }

    comparison.makeHashObj = function() {
        comparison.hash = comparison.hash || {};

        if (window.location.hash) {
            var hash = decodeURIComponent(window.location.hash.substring(1)),
                hashBits = hash.split(',');

            _.each(hashBits, function(bit) {
                params = bit.split('|');
                comparison.hash[params[0]] = params[1];
            });
        }
    }

    comparison.updateHashObj = function(key, value) {
        if (key && value) {
            comparison.hash[key] = value;
        }
        window.history.replaceState({}, "", comparison.buildComparisonURL());
    }

    comparison.removeGeoID = function(geoID, clickedElement) {
        d3.event.preventDefault();
        d3.select(clickedElement.parentNode).remove()

        // get that geoID out of here
        comparison.geoIDs.splice(comparison.geoIDs.indexOf(geoID), 1);
        if (comparison.primaryGeoID == geoID) {
            comparison.primaryGeoID = (comparison.geoIDs.length == 1 && comparison.geoIDs[0].indexOf('|') == -1) ? comparison.geoIDs[0] : null;
        }

        if (geoID.indexOf('|') !== -1) {
            var groupBits = geoID.split('|'),
                childSumlev = groupBits[0],
                parentGeoID = groupBits[1];

            _.each(comparison.data.geography, function(v, k) {
                var thisSumlev = k.slice(0, 3);
                if (v.parent_geoid == parentGeoID && thisSumlev == childSumlev) {
                    delete comparison.data.data[k];
                }
            });
        } else {
            delete comparison.data.data[geoID];
        }

        // change the window URL and redraw the page
        window.history.pushState({}, "", comparison.buildComparisonURL());
        comparison.addStandardMetadata();
        comparison.makeDataDisplay();
    }

    comparison.setResultsContainerHeight = _.debounce(function() {
        // redraw to match new dimensions
        window.browserWidth = document.documentElement.clientWidth;
        window.browserHeight = document.documentElement.clientHeight;

        // use options.dataContainer
        var top = document.getElementById(comparison.resultsContainerID).getBoundingClientRect().top,
            maxContainerHeight = Math.floor(browserHeight - top - 20),
            bestHeight = (comparison.dataDisplayHeight < maxContainerHeight) ? comparison.dataDisplayHeight : maxContainerHeight;

        $('#'+comparison.resultsContainerID).css('height', bestHeight+'px');
    }, 100);

    comparison.getSortedPlaces = function(field) {
        var sortedPlaces = _.map(comparison.data.data, function(v, k) {
            var placeName = (comparison.data.geography[k]) ? comparison.data.geography[k]['name'] : 'N/A'
            return {
                geoID: k,
                name: placeName
            }
        }).sort(comparison.sortDataBy(field));

        return sortedPlaces
    }

    comparison.sortDataBy = function(field, sortFunc) {
        // allow reverse sorts, e.g. '-value'
        var sortOrder = (field[0] === "-") ? -1 : 1;
        if (sortOrder == -1) {
            field = field.substr(1);
        }

        // allow passing in a sort function
        var key = sortFunc ? function (x) { return sortFunc(x[field]); } : function (x) { return x[field]; };

        return function (a,b) {
            var A = key(a), B = key(b);
            return ((A < B) ? -1 : (A > B) ? +1 : 0) * sortOrder;
        }
    }

    comparison.getStatType = function() {
        var title = comparison.table.title.toLowerCase();

        if (title.indexOf('dollars') !== -1 && title.indexOf('percent') == -1) {
            if ((title.indexOf('income') !== -1 && title.indexOf('median') !== -1)) {
                return 'dollar';
            }
            if (!(title.indexOf('income') !== -1 && title.indexOf('per capita') == -1)) {
                return 'dollar';
            }
        }
        return 'number';
    }

    comparison.cleanData = function(data) {

        // remove non-data headers that are the first field in the table,
        // which simply duplicate information from the table name.
        _.each(_.keys(data.tables[comparison.tableID]['columns']), function(k) {
            if (k.indexOf('000.5') != -1) {
                delete data.tables[comparison.tableID]['columns'][k];
            }
        });

        return data
    }

    comparison.prefixColumnNames = function(columns) {
        // A user may need to view a column name in isolation, with no context
        // as to its level of indent. Prefixed column names allow this:
        //
        // Female
        //   Car, truck or van
        //     Carpooled
        //       In 2-person carpool
        //
        // to be represented as:
        //
        // Female: Car, truck or van: Carpooled: In 2-person carpool

        // store prefixPieces as an object with keys/values, because not all
        // tables apply indents in a standard, orderly or predictable fashion.
        // because some tables have a first non-total column with indent > 1,
        // and some skip directly from 0 to 2, then come back to 1 later,
        // we need to seed this with empty slots for later concatenation.
        var prefixPieces = {'0':'', '1':'', '2':''},
            prefixName;

        _.each(columns, function(v) {
            // strip occasional end chars to prep names for concatenation
            prefixName = v.name.replace(/(:|--)*$/,'').replace(/\s*$/,'');

            // add name piece to proper slot,
            // allowing for weird subhead columns with null indents
            prefixPieces[v.indent || 0] = prefixName;

            // compile a prefixed name that makes sense regardless of context
            v.prefixed_name = _.values(prefixPieces).slice(0, v.indent+1).filter(function(n){return n}).join(': ');
        });
    }

    comparison.makeSumlevMap = function() {
        var sumlevSets = {};
        function removeA(arr) {
            var what, a = arguments, L = a.length, ax;
            while (L > 1 && arr.length) {
                what = a[--L];
                while ((ax= arr.indexOf(what)) !== -1) {
                    arr.splice(ax, 1);
                }
            }
            return arr;
        }

        if (comparison.tableID.startsWith('D3-')) {
            removeA(comparison.geoIDs, '01000US');
        }

        _.each(comparison.geoIDs, function(i) {
            var thisSumlev = i.slice(0, 3),
                thisName;
            sumlevSets[thisSumlev] = sumlevSets[thisSumlev] || {};
            sumlevSets[thisSumlev]['selections'] = sumlevSets[thisSumlev]['selections'] || [];

            if (i.indexOf('|') > -1) {
                var nameBits = i.split('|');
                thisName = comparison.capitalize(sumlevMap[nameBits[0]]['plural']) + ' in ' + comparison.data.geography[nameBits[1]]['name'];
                // add parent sumlev
                var parentSumlev = nameBits[1].slice(0, 3);
                sumlevSets[parentSumlev] = sumlevSets[parentSumlev] || {}
                sumlevSets[parentSumlev]['selections'] = sumlevSets[parentSumlev]['selections'] || [];
                sumlevSets[parentSumlev]['selections'].push({'name': thisName, 'geoID': nameBits[1], 'sumlev': parentSumlev})
            } else {
                thisName = comparison.data.geography[i]['name'];
            }
            sumlevSets[thisSumlev]['selections'].push({'name': thisName, 'geoID': i, 'sumlev': thisSumlev})
        });
        _.each(_.keys(comparison.data.data), function(i) {
            var thisSumlev = i.slice(0, 3);
            sumlevSets[thisSumlev]['count'] = sumlevSets[thisSumlev]['count'] || 0;
            sumlevSets[thisSumlev]['count'] += 1;
        });
        _.each(_.keys(sumlevSets), function(i) {
            sumlevSets[i]['name'] = sumlevMap[i];
        });

        return sumlevSets;
    }

    comparison.makeSortedSumlevMap = function(sumlevSets) {
        sumlevSets = _.map(sumlevSets, function(v, k) {
            return {
                sumlev: k,
                name: v.name,
                count: v.count,
                geoIDs: v.geoIDs
            }
        }).sort(comparison.sortDataBy('-count'));

        return sumlevSets;
    }

    comparison.capitalize = function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }

    comparison.calcMedian = function(values) {
        values.sort( function(a, b) { return a - b; });
        var half = Math.floor(values.length / 2);

        if (values.length % 2) {
            return values[half];
        } else {
            return Math.round(((values[half-1] + values[half]) / 2.0) * 100) / 100;
        }
    }

    comparison.trackEvent = function(category, action, label) {
        // e.g. comparison.trackEvent('Comparisons', 'Add geographies', sumlev);
        // make sure we have Google Analytics function available
        if (typeof(ga) == 'function') {
            ga('send', 'event', category, action, label);
        }
    }

    // ready, set, go
    comparison.init(options);
    return comparison;
}
