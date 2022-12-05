<cfcomponent>
    <cfset session.task=structNew()>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfapplication name="GetLeadApp" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
            <cflock SCOPE="Session" TYPE="Exclusive" TIMEOUT="120">
                <cfset session.task[form.textBox1]=form.textBox2>
                <cfdump  var="#session.task#">
             </cflock>
        </cfif>    
    </cffunction>
</cfcomponent>