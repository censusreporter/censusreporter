/*
  Adapted from Michael Bauer's https://github.com/mihi-tr/sphinx-glossary-js
*/
function Glossary() {
    if (!(this instanceof Glossary)) {
        return new Glossary();
    }
    var instance = this;
}

Glossary.init = function (url, selector, container_selector) {
    Glossary.terms = {};

    // only scan for links inside proper page scope
    if (!container_selector) {
        container_selector = document.body;
    }

    // get data from glossary page and tuck it into a dictionary,
    // then validate links inside the container
    $.get(url, function(data) {
        Glossary.addTerms(data)
        Glossary.validateTerms(selector, container_selector);
    });
    
    // create the popup listener
    $(container_selector).off('mouseover.glossary', selector);
    $(container_selector).on('mouseover.glossary', selector, function() {
        Glossary.popup(this);
    });

    // handle alternate dismissals of glossary card
    $(document.body).keydown(function(e){ // keydown instead of keypress for Chrome...
        if(e.which == 27){
            $('#glossary-card').remove();
        }
    });
    $(document.body).click(function(e){ 
        $('#glossary-card').remove();
    });
    
    // listen for new glossary terms on page and validate them
    $('body').on('glossaryUpdate', function(e, selection){
        // if the event itself gets passed a container,
        // only scan that container for glossary terms
        if (!!selection) {
            Glossary.validateTerms(selector, selection);
        } else {
            Glossary.validateTerms(selector, container_selector);
        }
    });
}

// takes html from glossary page and builds term dictionary
Glossary.addTerms = function(data, selector) {
    $(data).find('dt').each(function(){
        var term = $(this);
        Glossary.terms[this.id.replace('term-','')] = {
            name: term.text(),
            definition: term.next().html()
        };
    });
}

// remove selector class from elements with no corresponding glossary term
Glossary.validateTerms = function(selector, container_selector) {
    $(container_selector).find(selector).each(function() {
        var term = Glossary.getTermForObject(this);
        if (!term) {
            $(this).removeClass(selector.replace(/^[\.#]/,''));
        }
    });
}

// creates popup glossary card when term is hovered
Glossary.popup = function(obj) {
    $('#glossary-card').remove(); // just in case
    $('body').append('<div id="glossary-card" class="hovercard"><small>&times; Close</small></div>');

    var term = Glossary.getTermForObject(obj),
        offset = $(obj).offset();
        
    if (!!term) {
        $('#glossary-card')
            .append('<dt>' + term.name + '</dt><dd>' + term.definition + '</dd>')
            .css('top', offset.top + 25)
            .css('left', offset.left - 25);
    }
}

// gets keyword from HTML element, returns glossary term/definition or null
Glossary.getTermForObject = function(obj) {
    var keyword = $(obj).data('keyword') || obj.textContent,
        slug = keyword.toLowerCase().replace(/[^a-z0-9-]/,'-');
        
    return Glossary.terms[slug]
}

// alternate init method for links that open to anchor on glossary page
Glossary.initLinks = function (url, selector, container_selector) {
    Glossary.url = url;
    Glossary.terms = {};

    // only scan for links inside proper page scope
    if (!container_selector) {
        container_selector = document.body;
    }

    // get data from glossary page and tuck it into a dictionary,
    // then validate links inside the container
    $.get(url, function(data) {
        Glossary.addTerms(data)
        Glossary.validateTerms(selector, container_selector);
    });
    
    // create the popup listener
    $(container_selector).off('click.glossary', selector);
    $(container_selector).on('click.glossary', selector, function() {
        Glossary.openLink(this);
    });
}

Glossary.openLink = function(obj) {
    var keyword = $(obj).data('keyword') || obj.textContent,
        slug = '#term-'+keyword.toLowerCase().replace(/[^a-z0-9-]/,'-');

    window.open(Glossary.url + slug, "_blank");
}
