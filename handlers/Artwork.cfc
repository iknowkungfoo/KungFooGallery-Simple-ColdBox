component {

	public function index(event,rc,prc) void {
		event.paramValue("artwork_id", 0);
		prc.artwork = getModel("Artwork").read(artwork_id: rc.artwork_id);
		event.setView("artwork/index");
	}

	public function searchResults(event,rc,prc) string {
		var dt = getModel("DataTables");

		event.paramValue("artist_id",0);
		dt.setData( getModel("Artwork").grid(artist_id: rc.artist_id) );
		event.renderData(data: dt, contentType: dt.getContentType());
	}

	public function quick(event,rc,prc) void {
		event.paramValue("artwork_id", 0);
		prc.artwork = getModel("Artwork").quick(artwork_id: rc.artwork_id);
		event.setView("artwork/quickViewImage");
	// 	event.setView(view: "artwork/quickViewImage", noLayout: true);
	}

}