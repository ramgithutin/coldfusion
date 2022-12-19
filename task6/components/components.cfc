<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="formKey" type="string" default="#form.textBox1#">
        <cfargument name="formValue" type="string" default="#form.textBox2#">
        <cfif structKeyExists(form,'submit')>
            <cfscript>
                task=structNew();
                task[arguments.formKey]=arguments.formValue;
            </cfscript>
            <cfdump  var="#task#">
        </cfif>    
    </cffunction>
</cfcomponent>