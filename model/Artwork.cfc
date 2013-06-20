<cfcomponent>

	<cffunction name="carousel" access="public" output="false" returntype="query">
		<cfargument name="counter" type="numeric" required="true" />
		<cfset var randomart = randomArtwork() />
		<cfset var artwork = "" />
		<cfquery name="artwork" dbtype="query">
			SELECT * FROM randomart WHERE row <= <cfqueryparam value="#arguments.counter#" cfsqltype="cf_sql_integer" />
		</cfquery>
		<cfreturn artwork />
	</cffunction>

	<cffunction name="randomArtwork" access="private" output="false" returntype="query" hint="Dealing with CF's legacy Apache Derby driver.">
		<cfset var artwork = "" />
		<cfquery name="artwork" datasource="#dsGallery.getName()#">
			SELECT
				a.artist_id,
				a.first_name,
				a.last_name,
				b.artwork_id,
				b.title,
				b.slide,
				b.source_url,
				ROW_NUMBER() OVER () AS row
			FROM
				ARTISTS a
			INNER JOIN
				ARTWORK b ON b.artist_id = a.artist_id
			ORDER BY RANDOM()
		</cfquery>
		<cfreturn artwork />
	</cffunction>

	<cffunction name="read" access="public" output="false" returntype="query">
		<cfargument name="artwork_id" type="numeric" required="true" />
		<cfset var artwork = "" />
		<cfquery name="artwork" datasource="#dsGallery.getName()#">
			SELECT
				a.artist_id,
				a.first_name,
				a.last_name,
				a.twitter,
				a.flickr,
				b.artwork_id,
				b.title,
				b.description,
				b.slide,
				b.img_thumb,
				b.img_medium,
				b.img_large,
				b.source_url
			FROM
				ARTISTS a
			INNER JOIN
				ARTWORK b ON b.artist_id = a.artist_id
			WHERE
				b.artwork_id = <cfqueryparam value="#arguments.artwork_id#" cfsqltype="cf_sql_numeric" />
		</cfquery>
		<cfreturn artwork />
	</cffunction>

	<cffunction name="grid" access="remote" output="false" returntype="query">
		<cfargument name="artist_id" type="numeric" required="false" defualt="0" />
		<cfset var artwork = "" />
		<cfquery name="artwork" datasource="#dsGallery.getName()#">
			SELECT
				a.artist_id,
				a.first_name,
				a.last_name,
				b.artwork_id,
				b.title,
				b.img_thumb
			FROM
				ARTISTS a
			INNER JOIN
				ARTWORK b ON b.artist_id = a.artist_id
			<cfif arguments.artist_id GT 0>
				WHERE a.artist_id = <cfqueryparam value="#arguments.artist_id#" cfsqltype="cf_sql_integer" />
			</cfif>
		</cfquery>
		<cfreturn artwork />
	</cffunction>

	<cffunction name="quick" access="public" output="false" returntype="query">
		<cfargument name="artwork_id" type="numeric" required="true" />
		<cfset var artwork = "" />
		<cfquery name="artwork" datasource="#dsGallery.getName()#">
			SELECT
				a.artist_id,
				b.artwork_id,
				b.img_medium
			FROM
				ARTISTS a
			INNER JOIN
				ARTWORK b ON b.artist_id = a.artist_id
			WHERE
				b.artwork_id = <cfqueryparam value="#arguments.artwork_id#" cfsqltype="cf_sql_numeric" />
		</cfquery>
		<cfreturn artwork />
	</cffunction>

</cfcomponent>