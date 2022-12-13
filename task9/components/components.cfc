<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfset session.task=structNew()>
        <cfif structKeyExists(form,'submit')>
            <cfapplication name="GetLeadApp" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
            <cflock SCOPE="Session" TYPE="Exclusive" TIMEOUT="120">
                <cfset text = form.textBox1>
                <cfif structKeyExists(session.task,'#text#')>
                    <cfoutput>The key #text# is already present. Cannot add again!</cfoutput>
                <cfelse>
                    <cfset session.task[form.textBox1]=form.textBox2>
                    <cfdump  var="#session.task#">
                </cfif>
            </cflock>
        </cfif>    
    </cffunction>
</cfcomponent>