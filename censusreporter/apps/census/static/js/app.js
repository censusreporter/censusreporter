$('#menu-toggle').on('click', function() {
    $('#menu').slideToggle(150);
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
    "010": "nation",
    "020": "region",
    "030": "division",
    "040": "state",
    "050": "county",
    "060": "county subdivision",
    "140": "census tract",
    "150": "block group",
    "160": "place",
    "250": "native area",
    "310": "metro area",
    "500": "congressional district",
    "610": "state house (upper)",
    "620": "state house (lower)",
    "860": "ZIP code",
    "950": "school district (elementary)",
    "960": "school district (secondary)",
    "970": "school district (unified)"
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
