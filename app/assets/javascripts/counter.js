$(document).ready(function() {
  $("#inputDescription").keyup(function() {
    $("#counter").text(500 - $(this).val().length);
  });
});