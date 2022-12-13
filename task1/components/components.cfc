<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="text"
                    required="false"
                    restArgsource="form"
                    type="numeric"/>
        <cfif structKeyExists(form, 'submit')>
            <cfif argument.text eq '1'>
                <cfreturn "OK">
            <cfelseif argument.text eq '2'>
                <cfreturn "OK">
            <cfelseif argument.text eq '3'>
                <cfreturn "FAIR">
            <cfelseif argument.text eq '4'>
                <cfreturn "GOOD">
            <cfelseif argument.text eq '5'>
                <cfreturn "VERY GOOD">
            <cfelse>
                <cfreturn "INVALID">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>