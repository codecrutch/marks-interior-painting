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
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require galleria-1.4.2.min
//= require galleria.classic
//= require jquery-scrollto
//= require_tree .


$(window).load(function() {
  resizeGalleria();
});
$(window).resize(function() {
  resizeGalleria();
});

resizeGalleria = function() {
  var g = $('.galleria');
  var offset = 30;

  var screenWidth = $(window).width();

  if(screenWidth <= 760) {
    g.height(screenWidth * 0.65);
  } else {
    g.height(532);
  }
}

$(document).ready(function() {
  $('#test').on("click",function(e){
    e.preventDefault();
    $('#testimonials').ScrollTo();
  })
  $('#serv').on("click",function(e){
    e.preventDefault();
    $('#services').ScrollTo();
  })
  $('#gall').on("click",function(e){
    e.preventDefault();
    $('#gallery').ScrollTo();
  })
  $('#cont').on("click",function(e){
    e.preventDefault();
    $('#contact').ScrollTo();
  })
  $('#estimate').on("click",function(e){
    e.preventDefault();
    $('#contact').ScrollTo();
  })
  $('.nav a').on('click', function(){
        $('.btn-navbar').click(); //bootstrap 2.x
            $('.navbar-toggle').click() //bootstrap 3.x by Richard
  });
});

