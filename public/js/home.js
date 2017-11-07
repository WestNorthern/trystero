






$(function() {
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

	$('.edit-post').click(function(){
		$('.edit-post-box').show();
	});

	$('#edit-nevermind').click(function(){
		$('.edit-post-box').hide();
	});

});