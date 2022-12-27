<cfcomponent>
    <cffunction name="emailValidate"  access="remote" returnformat="plain">
        <cfargument name="Email" type="string" required="yes">
        <cfargument name="Name" type="string" required="yes">
        <cfquery name="validate" datasource="emailId">
            SELECT count(EmailId) records
            FROM EmailId
            WHERE EmailId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">
        </cfquery>
        <cfif validate.records eq 0>
            <cfquery name="Emailid" datasource="emailId"> 
                INSERT INTO EmailId 
                VALUES (<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Name#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">) 
            </cfquery> 
            <cfreturn "The mail is submit">
        <cfelse>
            <cfreturn "The mail is already there">
        </cfif>
    </cffunction>
</cfcomponent>