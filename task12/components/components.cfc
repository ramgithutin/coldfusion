<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="field" type="any" default="#form.text#">
        <cfif structKeyExists(form, "formSubmit")>
            <cfset local.text=arguments.field>
            <cfif arguments.field lte 10>
                    <cfquery datasource="employee" name="emp">
                        select * from employee; 
                    </cfquery>
                <cfloop query="emp" startRow="#local.text#" endRow="#local.text#">
                    <cfset local.varible=FirstName>
                </cfloop>
                    <cfreturn local.varible>
            <cfelse>
                <cflocation url="./main.cfm">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>