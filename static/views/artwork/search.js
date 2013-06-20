KFG.artSearch = (function() {

	var init = function() {
		$('#art_search').dataTable({
			"sAjaxSource" : "index.cfm/artwork/searchresults",
			"aoColumns" : [ {
					"mData" : "img_thumb", 
					"sTitle": "Thumbnail",
					"fnRender": function(obj){
						var img = '<img src="resources/images/gallery/artists/' + obj.aData.artist_id + '/' + obj.aData.artwork_id + '/' + obj.aData.img_thumb + '"/>';
						var icon = '<a data-toggle="modal" href="index.cfm/artwork/quick/artwork_id/' + obj.aData.artwork_id + '" data-target="#quickView"><i title="QUick View" class="icon-search"></i></a>';
						return img + ' ' + icon; }
				}, {
					"mData" : "title", "sTitle": "Title",
					"fnRender": function(obj){
						return '<a href="index.cfm/artwork/index/artwork_id/' + obj.aData.artwork_id + '">' + obj.aData.title + '</a>';
					}
				}, {
					"mData" : "last_name", 
					"sTitle": "Artist",
	            	"fnRender": function(obj){
	            		return obj.aData.first_name + ' ' + obj.aData.last_name;
	            	}
				}],
			"aLengthMenu" : [[ 5, 10, -1 ], [ 5, 10, " All" ]],
			"iDisplayLength" : 5,
			"bDeferRender": true
		});
	}
	
	$(document).ready(function() {
		init();
	});

})();