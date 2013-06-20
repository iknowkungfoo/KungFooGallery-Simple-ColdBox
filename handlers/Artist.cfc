component {

	public function index(event,rc,prc) void {
		event.paramValue("artist_id", 0);
		prc.artist = getModel("Artist").read(artist_id: rc.artist_id);
		event.setView("artist/index");
	}

	public function moreData(event,rc,prc) {
		var ac = getModel("ArrayCollection");

		event.paramValue("artist_id", 0);
		ac.setData( getModel("Artist").more( rc.artist_id ) );
		event.renderData(data: ac, contentType: ac.getContentType());
	}

}