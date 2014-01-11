function SphinxGlossary() { 
  if (!(this instanceof SphinxGlossary)) { 
    return new SphinxGlossary(); }
  var instance =this;
  }

SphinxGlossary.popup=function(obj) { 
      slug='#term-'+obj.textContent.toLowerCase().replace(/[^a-z0-9-]/,'-')
      data=SphinxGlossary.data;
        $('body').append('<div id="glossarypopup"></div>');
        $('#glossarypopup').append($(slug,data));
        $('#glossarypopup').append($(slug,data).next());
        $('#glossarypopup').css('top',obj.offsetTop+20);
        $('#glossarypopup').css('left',obj.offsetLeft);
      }

SphinxGlossary.init = function (url, selector) {
  SphinxGlossary.url=url;
  $.get(url,function(data) {
    SphinxGlossary.data=data })
    
    $(selector).attr("onmouseover","SphinxGlossary.popup(this)")
    $(selector).attr("onmouseout","$('#glossarypopup').remove()")
    }
