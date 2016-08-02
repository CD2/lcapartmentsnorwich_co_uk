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
//= require jquery-ui
//= reasdquire turbolinks
//= require_tree .
//= require ckeditor/init
//= require jquery-unslider
//= require lightbox

$(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 1) {
        $("html").addClass("header_scrolled");
    } else {
        $("html").removeClass("header_scrolled");
    }
}); //missing );

$(window).on('load', function() {
  $('.datepicker').datepicker({dateFormat: "dd-mm-yy"})

  $('.unslide').unslider({
    autoplay: true,
    arrows: false,
    speed: 500
  })

});

lightbox.option({
  'fadeDuration': 100,
  'resizeDuration': 100,
  'wrapAround': true
})

