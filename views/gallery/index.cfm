<cfoutput>
	<h2>#rc.welcomeMessage#</h2>

	#runEvent(event:'gallery.carousel')#

	#renderView('gallery/homepage')#
</cfoutput>