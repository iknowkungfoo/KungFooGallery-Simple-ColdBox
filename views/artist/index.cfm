<cfif prc.artist.recordcount EQ 1>

	<div class="row-fluid">

		<div class="span9">

			<h2>Artist Information</h2>
			<cfoutput>

					<script type="text/javascript">
						KFG.cfvars.art = (function(){
							return { artist_id: #prc.artist.artist_id# };
						})();
					</script>

				<p>#prc.artist.first_name# #prc.artist.last_name#</p>

				<p><a href="#prc.artist.flickr#" class="outbound">Flickr Profile Page</a></p>

				<cfif len(trim(prc.artist.twitter)) GT 0>

					<p>Follow this artist on Twitter: <a href="https://twitter.com/#prc.artist.twitter#" class="outbound">#prc.artist.twitter#</a></p>

				</cfif>

			</cfoutput>

		</div>

		<cfoutput>#renderView('artist/more')#</cfoutput>

	</div>

<cfelse>

	<div class="alert">No artist matches your query.</div>

</cfif>