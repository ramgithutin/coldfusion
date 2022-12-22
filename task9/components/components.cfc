<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="formKey" type="string" default="#form.textBox1#">
        <cfargument name="formValue" type="string" default="#form.textBox2#">
        <cfif structKeyExists(form,'submit')>
            <cfif structKeyExists(session,'task')>
                <cfif structKeyExists(session.task,"#arguments.formKey#")>
                    <cfoutput>The key #arguments.formKey# is already present. Cannot add again!</cfoutput>
                <cfelse>
                    <cfset session.task[arguments.formKey]=arguments.formValue>
                    <cfset structAppend(session.task,session.task)>
                </cfif>
            <cfelse>
                <cfset session.task=structNew()>
                <cfset session.task[arguments.formKey]=arguments.formValue>
            </cfif>    
        </cfif>
    </cffunction>
</cfcomponent>