$(function(){
	$('#btnnewcat').click(function(){
		
		$.ajax({
			url: '/newcategory',
			data: $('form').serialize(),
			type: 'POST',
			success: function(response){
				console.log(response);
			},
			error: function(error){
				console.log(error);
			}
		});
	});
});

