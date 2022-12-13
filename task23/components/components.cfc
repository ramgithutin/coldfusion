<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="works" datasource="employee">
                insert into works values('#form.option#','#form.fname#','#form.lname#','#form.email#','#form.tel#','#form.date#','#form.url#');
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>

