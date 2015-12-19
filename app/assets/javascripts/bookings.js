$(document).ready(function(){

	$(document).on('click', '.booking_view', function(e) {
		e.preventDefault();
		$.ajax($(this).attr('href'), { 
			type: 'GET',
			dataType: 'html',
			success: function(data) { 
				$('.show_info').removeClass('hide');
				$('.show_info').html(data);
			},
			error: function(data) {

			}	
			}); 
	});

	$(document).on('click', '#hide_button', function(){
		$('.show_info').addClass('hide'); 
	});
});
	
