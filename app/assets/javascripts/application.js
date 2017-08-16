// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

var scrollHandler;

$(document).on("turbolinks:load", function() {
  $('body').scrollspy({ target: '#navbar' });

  var $root = $('html, body');
  $('.navbar a').click(function() {
      $root.animate({
          scrollTop: $( $.attr(this, 'href') ).offset().top
      }, 500);
      return false;
  });

  if (scrollHandler == null) {
    scrollHandler = function(){
      if($(document).scrollTop() > 100) {
        $('.navbar-brand').addClass('navbar-brand-scroll');
        $('.navbar-default').addClass('navbar-default-scroll');
      } else {
        $('.navbar-brand').removeClass('navbar-brand-scroll');
        $('.navbar-default').removeClass('navbar-default-scroll');
      }
    };
  }

  if($('.hero-section').length) {
    $(document).on('scroll',scrollHandler);
  } else {
    $(document).off('scroll',scrollHandler);
    $('.navbar-brand').addClass('navbar-brand-scroll');
    $('.navbar-default').addClass('navbar-default-scroll');
    var navHeight = $('.navbar').height();
    $(".row").css("margin-top", navHeight);
  }
});