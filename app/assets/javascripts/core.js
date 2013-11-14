$(document).ready(function() {
  $("#wiki_body").keyup(function() {
    $("#editor").html(marked($("#wiki_body").val()));
  });
});