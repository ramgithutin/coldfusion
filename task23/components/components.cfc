<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="form" datasource="wufoo">
                insert into form values('#form.option#','#form.date#','#form.url#','#form.fname#','#form.lname#','#form.email#','#form.tel#');
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>