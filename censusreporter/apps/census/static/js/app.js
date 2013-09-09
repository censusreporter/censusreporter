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

// math utils
function roundNumber(n) {
    return (Math.round(n * 10) / 10);
}

function numberWithCommas(n) {
    var parts = roundNumber(n).toString().split(".");
    return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + (parts[1] ? "." + parts[1] : "");
}
