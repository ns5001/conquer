$(document).on('turbolinks:load', function() {
  $("a.load_comments").on('click', function(e) {
  e.preventDefault();
  var id = $(this).data("id");
  $.get("/plans/" + id + ".json", function(data) {
      data.forEach(function(comment) {
        $("#comment-" + id).append('<p>' + comment + '</p>');
      });
    });
  });
});
