<div class="masthead">
	<h3 class="muted">Kung Foo Gallery</h3>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<ul class="nav">
					<li><a href="">Home</a></li>
					<cfoutput>
						<li><a href="#event.buildLink(linkTo:'artwork.search')#">Artwork</a></li>
						<li><a href="#event.buildLink(linkTo:'artist.search')#">Artists</a></li>
                    </cfoutput>
				</ul>
			</div>
		</div>
	</div>
</div>