$('#menu-toggle').on('click', function() {
    $('#menu').slideToggle(150);
})

// make table rows highlight-able. Not ideal to attach listener to `body`
// but we have some tables that are created by js after page load
$('body').on('click', 'tr', function(){
    $(this).toggleClass('highlight');
})

window.browserWidth = document.documentElement.clientWidth,

// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function(){
  log.history = log.history || [];   // store logs to an array for reference
  log.history.push(arguments);
  arguments.callee = arguments.callee.caller;
  if(this.console) console.log( Array.prototype.slice.call(arguments) );
};
// make it safe to use console.log always
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();)b[a]=b[a]||c})(window.console=window.console||{});

// standard mapping of summary level code to summary level name
var sumlevMap = {
    "010": {"name": "nation", "plural": "nations"},
    "020": {"name": "region", "plural": "regions"},
    "030": {"name": "division", "plural": "divisions"},
    "040": {"name": "state", "plural": "states"},
    "050": {"name": "county", "plural": "counties"},
    "060": {"name": "county subdivision", "plural": "county subdivisions"},
    "140": {"name": "census tract", "plural": "census tracts"},
    "150": {"name": "block group", "plural": "block groups"},
    "160": {"name": "place", "plural": "places"},
    "250": {"name": "native area", "plural": "native areas"},
    "310": {"name": "metro area", "plural": "metro areas"},
    "500": {"name": "congressional district", "plural": "congressional districts"},
    "610": {"name": "state house (upper)", "plural": "state houses (upper)"},
    "620": {"name": "state house (lower)", "plural": "state houses (lower)"},
    "700": {"name": "voting tabulation district", "plural": "voting tabulation districts"},
    "860": {"name": "ZIP code", "plural": "ZIP codes"},
    "950": {"name": "school district (elementary)", "plural": "school districts (elementary)"},
    "960": {"name": "school district (secondary)", "plural": "school districts (secondary)"},
    "970": {"name": "school district (unified)", "plural": "school districts (unified)"}
};

var sumlevChildren = {
    '010': ['020','030','040','050','060','140','150','160','250','310','500','610','620','700','860','950','960','970'],
    '020': ['030','040','050','060','140','150','160','250','310','500','610','620','700','860','950','960','970'],
    '030': ['040','050','060','140','150','160','250','310','500','610','620','700','860','950','960','970'],
    '040': ['050','060','140','150','160','250','310','500','610','620','700','860','950','960','970'],
    '050': ['060','140','150','160','250','310','500','610','620','700','860','950','960','970'],
    '060': ['140','150','160','250','310','500','610','620','700','860','950','960','970'],
    '140': ['150'],
    '150': [],
    '160': ['140','150','860'],
    '250': ['140','150','860'],
    '310': ['050','060','140','150','160','860'],
    '500': ['050','060','140','150','160','860'],
    '610': ['050','060','140','150','160','860'],
    '620': ['050','060','140','150','160','860'],
    '700': ['050','060','140','150','160','860'],
    '860': ['140','150'],
    '950': ['060','140','150','160','860'],
    '960': ['060','140','150','160','860'],
    '970': ['060','140','150','160','860'],
};


var releaseNames = {
    'acs2012_1yr': {'name': 'ACS 2012 1-year', 'years': '2012'},
    'acs2012_3yr': {'name': 'ACS 2012 3-year', 'years': '2010-2012'},
    'acs2012_5yr': {'name': 'ACS 2012 5-year', 'years': '2008-2012'}
};

// formatting utils
// format percentages and/or dollar signs
var valFmt = function(value, statType, disablePct) {
    if (value >= 0 && value !== null) {
        if (!disablePct && statType == 'percentage') {
            value += '%';
        } else if (statType == 'dollar') {
            value = '$' + commaFmt(value);
        } else {
            value = commaFmt(value);
        }
        return value;
    }
    return ''
}

// commas for human-friendly integers
var commaFmt = d3.format(",");

var calcPct = function(numerator, denominator) {
    if (numerator >= 0 && denominator >= 0) {
        return Math.round(((numerator / denominator) * 100) * 10) / 10
    }
    return null
}

var calcPctMOE = function(numerator, denominator, numerator_moe, denominator_moe) {
    // From http://www.census.gov/acs/www/Downloads/handbooks/ACSGeneralHandbook.pdf
    if (numerator >= 0 && denominator >= 0) {
        var estimated_ratio = (numerator / denominator),
            moe_ratio = Math.sqrt(Math.pow(numerator_moe, 2) + (Math.pow(estimated_ratio, 2) * Math.pow(denominator_moe, 2))) / denominator;
        return Math.round((moe_ratio * 100) * 10) / 10
    }
    return null
}

// math utils
function roundNumber(n) {
    return (Math.round(n * 10) / 10);
}

function numberWithCommas(n) {
    var parts = roundNumber(n).toString().split(".");
    return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + (parts[1] ? "." + parts[1] : "");
}
