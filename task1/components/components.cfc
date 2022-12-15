<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="field" type="numeric" default="#form.text#">
        <cfif structKeyExists(form, 'submit')>
            <cfif arguments.field eq '1'>
                <cfreturn "OK">
            <cfelseif arguments.field eq '2'>
                <cfreturn "OK">
            <cfelseif arguments.field eq '3'>
                <cfreturn "FAIR">
            <cfelseif arguments.field eq '4'>
                <cfreturn "GOOD">
            <cfelseif arguments.field eq '5'>
                <cfreturn "VERY GOOD">
            <cfelse>
                <cfreturn "INVALID">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>