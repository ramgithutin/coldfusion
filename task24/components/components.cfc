<cfcomponent>
    <cffunction name="emailValidate"  access="remote" returntype="string">
<!---         <cfif structKeyExists(form,'submit')>
            <cfquery name="Emailid" datasource="emailId"> 
                INSERT INTO EmailId 
                VALUES ('#form.name#', '#form.email#') 
            </cfquery> 
        </cfif> --->
        <cfargument name="Email" type="string" required="yes">
        <cfdump var="#email#">

        <cfreturn "Hello, Nameless" />
    </cffunction>
</cfcomponent>