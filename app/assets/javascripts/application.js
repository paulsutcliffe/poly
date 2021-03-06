// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require imsky-holder/holder.js

Holder.add_theme("dark", {background:"#000", foreground:"#aaa", size:11, font: "Monaco"});


$(document).ready(function() {
   document.getElementsByClassName('back-js')[0].removeAttribute('href');
   $('.back-js').click(function(){
      window.history.back(-1);
      return false;
   })

  $('.tricky-destroy').each(function() {
    my_href = $(this).attr('href');
    $(this).prev().find('.link-destroy').find('a').attr('href', my_href);
  
  });


  if (window.history.length == 1) {
    document.getElementsByClassName('back-js')[0].style.display = 'none'
  } 

});


