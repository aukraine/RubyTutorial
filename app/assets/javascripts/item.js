jQuery(function($) {

  $(".deleteAction").click( function() {
    var current_item_tr = $(this).parents('tr')[0];

    if(confirm("Are you sure?")) {
      $.ajax({
        url: '/items/' + $(current_item_tr).attr('data-item_id'),
        type: 'DELETE',
        data: { admin: 1 },
        success: function(result) {
          $(current_item_tr).fadeOut(200);
          console.log(result);
        }
      });
    };
  });

});