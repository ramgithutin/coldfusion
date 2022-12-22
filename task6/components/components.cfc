<cfcomponent>
    <cffunction name="textField"  access="remote" returntype="struct">
        <cfargument name="formKey" type="string" default="#form.textBox1#">
        <cfargument name="formValue" type="string" default="#form.textBox2#">
        <cfif structKeyExists(form,'submit')>
            <cfset task=structNew()>
            <cfset task[arguments.formKey]=arguments.formValue>
            <cfreturn task>
        </cfif>    
    </cffunction>
</cfcomponent>