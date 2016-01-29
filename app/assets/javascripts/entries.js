$(document).ready(function(){
  $('.parallax').parallax();

  $(".links").on('click', function(){
    console.log("LINK HAS BEEN CLICKED")
    $('.parallax').parallax();
  })

  $('.footer a').on('click', function(event){
    $('.parallax').parallax();
  })

  $('.home a').on('click', function(event){
    $('.parallax').parallax();
  })
})
