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
  var target_index = $(".children_rating")[0].id - 1;
  print_stars(target_index);
}

function remove_toy(event) {
  $(event.target).parent().parent().remove();
}

function add_toy(event) {
  var toy = $(event.target).parent().parent().find("input").val().trim();
  $(event.target).parent().parent().find("input").val("");

  if(toy == "") {
    return;
  }

  $("#toys-list").append(
    '<ul class="list-group">'
    +'  <li class="list-group-item">'+toy
    +'    <i class="fa fa-fw fa-lg fa-trash-o pull-right text-danger remove-toy"></i>'
    +'    <input name="children_playroom[toys][]" id="children_playroom__toys" type="hidden" value='+toy+' >'
    +'  </li>'
    +'</ul>'
  );
}


var ready;

ready = function() {
  $(".rate-star").hover(on_rate_star_hover);
  $(".rate-star").mouseleave(on_rate_star_leave);

  $(".remove-toy").click(remove_toy);
  $("#add-new-toy").click(add_toy);
};

$(document).ready(ready);
$(document).on('page:load', ready);
