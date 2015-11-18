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

  function showInstructorPhotoDescription(){
    $(".col-md-6").mouseover(function(){
      $(this).find(".show-description").slideDown(250);
    });
    $(".col-md-6").mouseleave(function(){
      $(this).find(".show-description").slideUp(250);
    });
  }

  function showPhotoDescription (){
    $(".thumbnail").mouseover(function(){
        $(this).find('#photocaption').slideDown(250);
      });
    $(".thumbnail").mouseleave(function(){
          $(this).find('#photocaption').slideUp(250);
    });
  }

  showInstructorPhotoDescription();
  showPhotoDescription();

});
