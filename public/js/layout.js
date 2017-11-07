
$(() => {



	$('#user-search').keyup(function(){
			let searchTerm = $(this).val();
			if (searchTerm.length > 1){
				$.post('/search_for_user', {search_term: searchTerm}, function(results){
					console.log(results)
					$('#results').html(results)
				})
			}
	})


})