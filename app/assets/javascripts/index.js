$(document).ready(function(){
  $(".button-collapse").sideNav();
  $(".parallax").parallax();

  $(".contact_link").on('click', function(event){
    event.preventDefault();
    $(".contact").show();
    $('#textarea1').val('New Text');
    $('#textarea1').trigger('autoresize');

  })

  $(".contact a").on('click', function(event){
    event.preventDefault();
    $(".contact").hide();
    $(".link").show();
  })


  $('.footer a').on('click', function(){
    $(".button-collapse").sideNav();
    $(".parallax").parallax();
  })
});
