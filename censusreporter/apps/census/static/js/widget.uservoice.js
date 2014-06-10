// UserVoice
if (browserWidth > 480) {
    UserVoice=window.UserVoice||[];(function(){var uv=document.createElement('script');uv.type='text/javascript';uv.async=true;uv.src='//widget.uservoice.com/geixSwRIfj9BPIlJiPWJwQ.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(uv,s)})();

    UserVoice.push(['set', {
        accent_color: '#1a9d95',
        trigger_color: 'white',
        trigger_background_color: '#67b3a3'
    }]);

    UserVoice.push(['addTrigger', {
        mode: 'contact',
        trigger_style: 'tab',
        trigger_position: 'right'
    }]);
}
