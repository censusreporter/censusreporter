window.onload=function(){ 
    var embed = document.getElementById('census-embed');
    // IE9 can only send strings via postmessage
    embed.contentWindow.postMessage(JSON.stringify(embedVars), 'http://censusreporter.org');
};
