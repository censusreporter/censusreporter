function makeCensusEmbed() {
    var embed = {};
    
    embed.init = function() {
        embed.container = document.getElementById('census-embed');
        embed.naturalWidth = embed.container.width;
        embed.naturalHeight = embed.frameHeight = embed.container.height;
        embed.setFrameSize();
        embed.addListeners();
        embed.sendDataToFrame(embedVars);
    }
    
    embed.addListeners = function() {
        var eventMethod = window.addEventListener ? 'addEventListener' : 'attachEvent';
        var eventListener = window[eventMethod];
        var messageEvent = (eventMethod == 'attachEvent') ? 'onmessage' : 'message';
        
        eventListener(messageEvent, embed.handleMessage, false);
        eventListener('resize', embed.resize);
    }
    
    embed.handleMessage = function(event) {
        var messageData = JSON.parse(event.data);
        if (messageData.chartHeight) {
            embed.frameHeight = messageData.chartHeight;
            embed.setFrameSize();
        }
    }
    
    embed.debounce = function(func, wait, immediate) {
        var timeout;
        return function() {
            var context = this, args = arguments;
            var later = function() {
                timeout = null;
                if (!immediate) func.apply(context, args);
            };
            var callNow = immediate && !timeout;
            clearTimeout(timeout);
            timeout = setTimeout(later, wait);
            if (callNow) func.apply(context, args);
        };
    };
    
    embed.resize = embed.debounce(function() {
        embed.setFrameSize();
        embed.sendDataToFrame({ resize: 'resize' });
    }, 200);
    
    embed.setFrameSize = function() {
        var parentWidth = embed.container.parentNode.offsetWidth;
        embed.container.width = (parentWidth <= embed.naturalWidth) ? parentWidth : embed.naturalWidth;
        embed.container.height = (embed.frameHeight >= embed.naturalHeight) ? embed.frameHeight+80 : embed.naturalHeight;
    }
    
    embed.sendDataToFrame = function(data) {
        // IE9 can only send strings
        embed.container.contentWindow.postMessage(JSON.stringify(data), 'https://s3.amazonaws.com');
    }
    
    embed.init();
}

window.onload = function() { 
    makeCensusEmbed();
};
