<cfcomponent>
    <cffunction name="textField"  access="remote" returntype="query">
        <cfargument name="field" type="numeric" default="#form.text#">
        <cfif structKeyExists(form, "submit")>
            <cfset local.text=arguments.field>
            <cfif arguments.field lte 10>
                    <cfquery datasource="employee" name="emp">
                        select * from employee; 
                    </cfquery>
                <cfloop query="emp" startRow="#local.text#" endRow="# local.text#">
                    <cfoutput>
                        The no # local.text# name is #FirstName#<br>
                    </cfoutput>
                </cfloop>
                TABLE IS<br>

                <cfreturn emp>
            <cfelse>
                <cflocation url="..\main.cfm">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>