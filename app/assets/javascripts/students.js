// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

  $('.edit').on('click', function(e) {
    $(this).blur();
    $('.focus').focus();
    $('.submit-button').css('display', 'block');
    $('.update').css('background-color', 'grey').css('color', 'white');
    $('.branding').css('background-color', 'grey');
    $('.hide_on_edit').css('display', 'none');
    $('.show_on_edit').css('display', 'block');
  });

  $('.comment_brand').on('click', function(e) {
    e.preventDefault();
    $('.comment_form_brand').css('display', 'block');
  });

  $('.comment_resume').on('click', function(e) {
    e.preventDefault();
    $('.comment_form_resume').css('display', 'block');
  });

  $('.comment_portfilio').on('click', function(e) {
    e.preventDefault();
    $('.comment_form_portfilio').css('display', 'block');
  });

  $('.comment_linkedin').on('click', function(e) {
    e.preventDefault();
    $('.comment_form_linkedin').css('display', 'block');
  });

  $('.comment_jobtracker').on('click', function(e) {
    e.preventDefault();
    $('.comment_form_jobtracker').css('display', 'block');
  });
});