<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfset text=form.text>
            <cfif form.text lte 10>
                <cfquery datasource="employee" name="emp">
                    select * from employee; 
                </cfquery>
            </cfif>
            <cfloop query="emp" startRow="#text#" endRow="#text#">
                <cfoutput>
                    The no #text# name is #FirstName#<br>
                </cfoutput>
            </cfloop>
                TABLE IS<br>
            <cfoutput query="emp">
                    #FirstName# #LastName# <br>
            </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>