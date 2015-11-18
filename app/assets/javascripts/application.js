// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  function showDescription (div1, div2) {
    $(div1).mouseover(function(){
      var self = this;
      $(self).find(div2).slideDown(250);
    });
    $(div1).mouseleave(function(){
      var self = this;
      $(self).find(div2).slideUp(250);
    });
  }

showDescription(".col-md-6", ".show-description");
showDescription(".thumbnail", "#photocaption")

});
