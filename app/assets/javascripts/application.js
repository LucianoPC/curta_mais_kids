// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


function print_stars(target_index) {
  $(".rate-star").each(function(index, value) {
    $(value).removeClass("fa-star fa-star-o");

    if(index <= target_index) {
      $(value).addClass("fa-star");
    } else {
      $(value).addClass("fa-star-o");
    }
  });
}

function on_rate_star_hover(event) {
  var target_index = $(".rate-star").index(event.target);
  print_stars(target_index);
}

function on_rate_star_leave(event) {
  var target_index = $(".children_event_rating")[0].id;
  print_stars(target_index);
}


var ready;

ready = function() {
  $(".rate-star").hover(on_rate_star_hover);
  $(".rate-star").mouseleave(on_rate_star_leave);
};

$(document).ready(ready);
$(document).on('page:load', ready);
