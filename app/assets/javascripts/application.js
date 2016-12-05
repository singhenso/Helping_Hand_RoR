// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require 'rest_in_place'
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require_self


$(document).on('turbolinks:load', function(){
  $(".nav-links").css('color', '#428bca');
  $(".nav-links").hover(function(){ // Mouse over
    $(this).css('color', 'black');
    $(this).stop().fadeTo(300, 0.6);
    $(this).stop().fadeTo(300, 0.3);
  }, function(){ // Mouse out
    $(this).css('color', '#428bca');
    $(this).stop().fadeTo(300, 1);
    $(this).stop().fadeTo(300, 1);
  });
  $(".jumbotron").hover(function(){
    $(this).focus();
    $(this).css('border', 'solid 1px black');
  }, function(){
    $(this).focusout();
    $(this).css('border', '0px');
  });
  $(".rest-in-place").rest_in_place();
  $(".rest-in-place").bind('update.rest-in-place', function(e){
    // figure out ajax put
    // with update.rest-in-place method
    // inside class rest-in-place-comment try
    // to add manually the paramters
    // and then use ajax put to update upon
    // user pressing enter
  });
});
