<cfcomponent>
    <cffunction name="textField"  access="remote">
<!---            <cfargument name="password" default="#form.password#">
            <cfargument name="userName" default="#form.userId#">--->
        <cfif structKeyExists(form,'submit')>
            <cfquery name="userInfo" datasource="employee">
            select count(*) records
            from userInfo
            where userid = '#form.userId#'
            and passId = '#form.password#'
            </cfquery>
            <cfif userInfo.records == 1>
                <cfset Session.LoggedIn = 1>
                <cflocation url="welcome.cfm" addtoken="No">
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfif>
                <cfreturn Session.LoggedIn>
    </cffunction>
</cfcomponent>