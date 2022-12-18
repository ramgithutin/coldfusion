<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfargument name="string" default="#form.field#">

        <cfif structKeyExists(form,'submit')>
            <cfdump var = "#arguments.string#">
        </cfif>
    </cffunction>
</cfcomponent>