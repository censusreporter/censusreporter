function makeCensusEmbeds() {
    var embed = {
        embeds: {}
    };
    
    embed.init = function() {
        embed.containers = document.querySelectorAll('.census-reporter-embed');
        embed.numContainers = embed.containers.length;
        for (var i = 0; i < embed.numContainers; i++) {
            embed.embeds[embed.containers[i].id] = {
                naturalWidth: embed.containers[i].width,
                naturalHeight: embed.containers[i].height,
                frameHeight: embed.containers[i].height
            }
        }
        embed.addListeners();
        embed.sendDataToFrames({ resize: 'resize' });
    }
    
    embed.addListeners = function() {
        var eventMethod = window.addEventListener ? 'addEventListener' : 'attachEvent',
            eventListener = window[eventMethod],
            messageEvent = (eventMethod == 'attachEvent') ? 'onmessage' : 'message',
            resizeEvent = (eventMethod == 'attachEvent') ? 'onresize' : 'resize';
        
        eventListener(messageEvent, embed.handleMessage, false);
        eventListener(resizeEvent, embed.resize);
    }
    
    embed.handleMessage = function(event) {
        var messageData = JSON.parse(event.data);
        if (messageData.chartHeight && messageData.containerID) {
            embed.embeds[messageData.containerID].frameHeight = messageData.chartHeight;
            embed.setFrameSizes();
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
        embed.setFrameSizes();
        embed.sendDataToFrames({ resize: 'resize' });
    }, 100);
    
    embed.setFrameSizes = function() {
        for (var i = 0; i < embed.numContainers; i++) {
            var thisContainer = embed.containers[i],
                thisEmbed = embed.embeds[embed.containers[i].id],
                parentWidth = thisContainer.offsetWidth;
            thisContainer.width = (parentWidth <= thisEmbed.naturalWidth) ? parentWidth : thisEmbed.naturalWidth;
            thisContainer.height = ((thisEmbed.frameHeight + 80) >= thisEmbed.naturalHeight) ? +thisEmbed.frameHeight+80 : thisEmbed.naturalHeight;
        }
    }
    
    embed.sendDataToFrames = function(data) {
        // IE9 can only send strings
        for (var i = 0; i < embed.numContainers; i++) {
            embed.containers[i].contentWindow.postMessage(JSON.stringify(data), 'http://wazimap.co.za');
        }
    }
    
    embed.init();
}

window.onload = function() { 
    makeCensusEmbeds();
};
