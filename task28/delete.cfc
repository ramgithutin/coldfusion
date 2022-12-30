<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete" datasource="employee">
			DELETE FROM Pages
			WHERE pageid=<cfqueryparam cfsqltype="cf_sql_varchar" value="#url.id#">
		</cfquery>
		<cflocation url="admin.cfm">
	</cffunction>
</cfcomponent>