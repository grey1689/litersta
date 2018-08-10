$(function(){
	$('#btndatastor').click(function(){
		
		$.ajax({
			url: '/application',
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

