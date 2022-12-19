<cfcomponent>
    <cfset session.task=structNew()>
    <cffunction name="textField"  access="remote">
        <cfargument name="formKey" type="string" default="#form.textBox1#">
        <cfargument name="formValue" type="string" default="#form.textBox2#">
        <cfif structKeyExists(form,'submit')>
            <cflock SCOPE="Session" TYPE="Exclusive" TIMEOUT="120">
                <cfset session.task[form.textBox1]=form.textBox2>
                <cfdump  var="#session.task#">
             </cflock>
        </cfif>    
    </cffunction>
</cfcomponent>