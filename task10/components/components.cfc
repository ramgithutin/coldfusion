<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="formKey" type="string" default="#form.textBox1#">
        <cfargument name="formValue" type="string" default="#form.textBox2#">
        <cfif structKeyExists(form,'submit')>
            <cfif structKeyExists(session,'task')>
                <cfset session.task[arguments.formKey]=arguments.formValue>
                <cfset structAppend(session.task,session.task)>
            <cfelse>
                <cfset session.task=structNew()>
                <cfset session.task[arguments.formKey]=arguments.formValue>
            </cfif>    
        </cfif>
        <cfdump  var="#session.task#">
    </cffunction>
</cfcomponent>