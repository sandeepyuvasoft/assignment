$(document).on('turbolinks:load', function(){
  $(".alert" ).fadeOut(5000);
  
  $('.multiselect-ui').multiselect({
    includeSelectAllOption: true
  });
  
});

$(document).on('click',".submit_comment", function(e){
	e.preventDefault();
 	var data = $("#comment").val()
 	var id = $(this).attr('assignment_id')
 	if (!data == ""){
 		$.ajax({
 			type: "POST",
 		  url: '/assignments/'+id+'/comments',
 	    data: {data: data},
 	    success: function(data) {
      	$('#comment').val("");
     	}
 		})
 	}  
});
