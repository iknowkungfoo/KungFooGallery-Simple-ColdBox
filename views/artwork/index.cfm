<script type="text/javascript">
	KFG.cfvars.art = (function(){
		return {
		<cfoutput>
			thumb: "resources/images/gallery/artists/#prc.artwork.artist_id#/#prc.artwork.artwork_id#/#prc.artwork.img_thumb#",
			medium: "resources/images/gallery/artists/#prc.artwork.artist_id#/#prc.artwork.artwork_id#/#prc.artwork.img_medium#",
			large: "resources/images/gallery/artists/#prc.artwork.artist_id#/#prc.artwork.artwork_id#/#prc.artwork.img_large#",
			slide: "resources/images/gallery/artists/#prc.artwork.artist_id#/#prc.artwork.artwork_id#/#prc.artwork.slide#",
			artist_id: #prc.artwork.artist_id#
        </cfoutput>
		};
	})();
</script>

<h2>Artwork Information</h2>

<div class="row-fluid">

	<div class="span9">

		<cfoutput>
			<h3>#prc.artwork.title#</h3>
			<p>More sizes: <a class="switchImage" data-size="thumb">Thumbnail</a> | <a class="switchImage" data-size="medium">Medium</a> | <a class="switchImage" data-size="large">Large</a> | <a class="switchImage" data-size="slide">Slide</a></p>
			<figure id="featured_art">
				<img id="artwork" src="resources/images/gallery/artists/#prc.artwork.artist_id#/#prc.artwork.artwork_id#/#prc.artwork.img_medium#" />
				<figcaption>
					<br />
					<p>#prc.artwork.description#</p>
					<p>&copy; <a href="#event.buildLink(linkTo:'artist.index', querystring:'artist_id=#prc.artwork.artist_id#')#">#prc.artwork.first_name# #prc.artwork.last_name#</a> (<a href="#prc.artwork.source_url#" class="outbound">Source</a>)</p>
				</figcaption>
			</figure>
        </cfoutput>

	</div>

	<cfoutput>#renderView('artist/more')#</cfoutput>

</div>