KFG.artistMore = (function(){
	
	$(document).ready(function(){
		KFG.handlebars.setHandlebar('artist_more', 
				'artistMore', 
				'templates/artist_more.handlebars',
				'index.cfm/artist/moredata',
				{ artist_id: KFG.cfvars.art.artist_id }
				);
	});
	
})();