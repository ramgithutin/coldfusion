<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="field" type="any" default="#form.text#">
        <cfif structKeyExists(form, "formSubmit")>
            <cfset local.text=arguments.field>
            <cfif arguments.field lte 10>
                <cfquery datasource="employee" name="emp">
                    SELECT FirstName
                    FROM employee; 
                </cfquery>
                <cfloop query="emp" startRow="#local.text#" endRow="#local.text#">
                    <cfset local.variable=FirstName>
                </cfloop>
                    <cfreturn local.variable>
            <cfelse>
                <cflocation url="./main.cfm">
            </cfif>
        </cfif>
    </cffunction>
    <cffunction  name="getquery">
        <cfquery datasource="employee" name="emp">
            SELECT FirstName,LastName 
            FROM employee; 
        </cfquery>
        <cfreturn emp>
    </cffunction>
</cfcomponent>