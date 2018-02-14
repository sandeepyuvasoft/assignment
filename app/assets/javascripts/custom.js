$(function() {
  $('.multiselect-ui').multiselect({
    includeSelectAllOption: true
  });
});

$(document).on('turbolinks:load', function(){
  $(".alert" ).fadeOut(5000);
});