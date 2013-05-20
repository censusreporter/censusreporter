$(function() {
    var nav = $('nav');
    var navWrapper = $('.nav-wrapper');
    var waypointOffset = 30;
    navWrapper.waypoint({
        handler: function(direction) {
            if (direction == 'down') {
                navWrapper.css({ 'height': nav.outerHeight() });
                nav.addClass('sticky');
            } else {
                navWrapper.css({ 'height': 'auto' });
                nav.removeClass('sticky');
            }
        },
        offset: waypointOffset
    });

    var sections = $('article');
    var navLinks = $('nav a');
    sections.waypoint({
        handler: function(direction) {
            var activeSection = $(this);
            if (direction == 'up') {
                activeSection = activeSection.prev();
            }
            var activeLink = $('nav a[href="#' + activeSection.attr("id") + '"]');
            navLinks.removeClass('selected');
            activeLink.addClass('selected');
        },
        offset: waypointOffset
    });

    navLinks.on('click', function(event) {
        $.scrollTo(
            $(this).attr('href'),
            {
                duration: 300,
                offset: -waypointOffset+1
            }
        );
    });
});
