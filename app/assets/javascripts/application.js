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
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require_self


$(document).on('turbolinks:load', function(){
  $(".nav-links").css('color', 'ghostwhite');
  $(".nav-links").hover(function(){ // Mouse over
    $(this).css('color', '#428bca');
    $(this).stop().fadeTo(1000, 0.9);
    $(this).stop().fadeTo(1000, 0.6);
  }, function(){ // Mouse out
    $(this).css('color', 'ghostwhite');
    $(this).stop().fadeTo(1000, 1);
    $(this).stop().fadeTo(1000, 1);
  });
  $(".jumbotron").hover(function(){
    $(this).focus();
    $(this).css('border', 'solid 1px black');
  }, function(){
    $(this).focusout();
    $(this).css('border', '0px');
  });
});
