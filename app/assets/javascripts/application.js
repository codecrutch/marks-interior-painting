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
//= require jquery-scrollto
//= require galleria-1.4.2
//= require galleria.classic
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
  $('#ftr-phone').hover(function(){
    $('#ftr-phone i').addClass('hover-phone');
  },
  function(){
    $('#ftr-phone i').removeClass('hover-phone');
  });
  $('#ftr-email').hover(function(){
    $('#ftr-email i').addClass('hover-email');
  },
  function(){
    $('#ftr-email i').removeClass('hover-email');
  });
  $('#ftr-facebook').hover(function(){
    $('#ftr-facebook i').addClass('hover-facebook');
  },
  function(){
    $('#ftr-facebook i').removeClass('hover-facebook');
  });
  $(document).on("mousemove",function(){
    if($('.navbar-collapse').attr('aria-expanded') == 'true') {
      $('.nav a').on('click', function(){
        $('.navbar-toggle').click();
      });
    }
  });
});

