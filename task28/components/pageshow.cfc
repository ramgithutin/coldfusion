<cfcomponent>
    <cffunction  name="descripition" access="remote" returnformat="plain">
        <cfargument name="Email" type="string" required="yes">
        <cfquery name="show" datasource="employee">
            SELECT pagedescs FROM Pages
            WHERE pagename=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">
        </cfquery>
        <cfreturn show.pagedescs>
    </cffunction>
</cfcomponent>