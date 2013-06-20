var KFG = (function() {
	
	var init = function() {
		// $('.carousel').carousel(); // Triggers the slide show to start.
		$('a.outbound').attr('target', '_blank'); //.after(' <i class="icon-share"></i>');
		$('.switchImage').on('click', function() {
			$('#artwork').attr('src', KFG.cfvars.art[$(this).data('size')]);
		});
		/* Stop modal from caching remote content. */
		$('body').on('hidden', '.modal', function() {
			$(this).removeData('modal');
		});
		log('KFG core JS library was initialized.');
	}
	
	var log = function(v){
		if ("console" in window) {
			console.log(v);
		}
	};
	
	$(document).ready(function() {
		init();
	});

	return {
		cfvars : {},
		log : log
	};

})();