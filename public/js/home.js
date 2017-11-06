
	$('#new-post').click(function(){
		$('.new-post-box').show();
		$('#nevermind').show();
		$('#new-post').hide();
	});

	$('#nevermind').click(function(){
		$('.new-post-box').hide();
		$('#new-post').show();
		$('#nevermind').hide();
	});

	$('.this_user').click(function(){
		params[:this_user] = $(this).text();

	});





$(function() {




});