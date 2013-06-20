<cfcomponent>

	<cffunction name="read" access="public" output="false" returntype="query">
		<cfargument name="artist_id" type="numeric" required="true" />
		<cfset var artist = "" />
		<cfquery name="artist" datasource="#dsGallery.getName()#">
			SELECT
				artist_id,
				first_name,
				last_name,
				twitter,
				flickr
			FROM
				ARTISTS
			WHERE
				artist_id = <cfqueryparam value="#arguments.artist_id#" cfsqltype="cf_sql_integer" />
		</cfquery>
		<cfreturn artist />
	</cffunction>

	<cffunction name="more" access="remote" output="false" returntype="query">
		<cfargument name="artist_id" type="numeric" required="true" />
		<cfset var artwork = "" />
		<cfquery name="artwork" datasource="#dsGallery.getName()#">
			SELECT * FROM (
				SELECT
					a.artist_id,
					b.artwork_id,
					b.title,
					b.img_thumb,
					ROW_NUMBER() OVER () AS row
				FROM
					ARTISTS a
				INNER JOIN
					ARTWORK b ON b.artist_id = a.artist_id
				WHERE
					b.artist_id = <cfqueryparam value="#arguments.artist_id#" cfsqltype="cf_sql_numeric" />
			) AS CTE
			WHERE CTE.row <= 5
		</cfquery>
		<cfreturn artwork />
	</cffunction>

</cfcomponent>