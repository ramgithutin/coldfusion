<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="password" default="#form.password#">
        <cfargument name="userName" default="#form.userId#">
        <cfif structKeyExists(form,'submit')>
            <cfset session.name = arguments.userName >
            <cfquery name="userInfo" datasource="employee">
                select count(role) records
                from cmsLoginId
                where userid = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                and passId = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
                select role
                from cmsLoginId
                where userid = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                and passId = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfset local.userRole=userInfo.role>
            <cfdump  var="#local.userRole#">
            <cfif userInfo.records == 1>
                <cfset Session.flag = 1>
                <cflocation url="welcome.cfm" addtoken="No">
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>