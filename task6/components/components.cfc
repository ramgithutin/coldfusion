<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfscript>
                task=structNew();
                task[form.textBox1]=form.textBox2;
            </cfscript>
            <cfdump  var="#task#">
        </cfif>    
    </cffunction>
</cfcomponent>