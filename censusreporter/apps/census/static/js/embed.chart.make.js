window.onload=function(){ 
    var embed = document.getElementById('census-embed');
    embed.contentWindow.postMessage(embedVars, 'http://censusreporter.org');
};
