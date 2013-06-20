<div id="welcomeCarousel" class="carousel slide">
	<ol class="carousel-indicators">
		<cfoutput query="prc.artwork">
			<li data-target="##welcomeCarousel" data-slide-to="#prc.artwork.currentrow - 1#" <cfif prc.artwork.currentrow EQ 1>class="active"</cfif>></li>
		</cfoutput>
	</ol>
	<div class="carousel-inner">
		<cfoutput query="prc.artwork">
			<div class="item<cfif prc.artwork.currentrow EQ 1> active</cfif>">
				<a href="#event.buildLink(linkTo:'artwork.index', querystring:'artwork_id=#prc.artwork.artwork_id#')#"><img src="resources/images/gallery/artists/#prc.artwork.artist_id#/#prc.artwork.artwork_id#/#prc.artwork.slide#" /></a>
				<div class="carousel-caption">
					<h4>#prc.artwork.title#</h4>
					<p>&copy; <a href="#event.buildLink(linkto: 'artist.index', querystring: 'artist_id=#prc.artwork.artist_id#')#">#prc.artwork.first_name & " " & prc.artwork.last_name#</a> (<a href="#prc.artwork.source_url#" class="outbound">Source</a>)</p>
				</div>
			</div>
		</cfoutput>
	</div>
	<!--- Left / Right slide controls --->
	<a class="carousel-control left" href="#welcomeCarousel" data-slide="prev">&lsaquo;</a>
	<a class="carousel-control right" href="#welcomeCarousel" data-slide="next">&rsaquo;</a>
</div>