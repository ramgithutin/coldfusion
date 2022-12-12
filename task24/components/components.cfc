<cfcomponent>
    <cffunction name="emailValidate"  access="remote" returntype="string">
<!---         <cfif structKeyExists(form,'submit')>
            <cfquery name="Emailid" datasource="emailId"> 
                INSERT INTO EmailId 
                VALUES ('#form.name#', '#form.email#') 
            </cfquery> 
        </cfif> 
        <cfargument name="Email" type="string" required="yes">
        <cfquery name="validate" datasource="email">
            select count(Email) records
            from emailId
            where Email='#Email#'
        </cfquery>--->
        <cfreturn "Hello, Nameless" />
    </cffunction>
</cfcomponent>