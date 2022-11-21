<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif isDefined ("form.text")>
            <cfif form.text eq '1'>
                <cfreturn "OK">
                <cfelseif form.text eq '2'>
                    <cfreturn "OK">
                <cfelseif form.text eq '3'>
                    <cfreturn "FAIR">
                <cfelseif form.text eq '4'>
                    <cfreturn "GOOD">
                <cfelseif form.text eq '5'>
                   <cfreturn "VERY GOOD">
                <cfelse>
                    <cfreturn "INVALID">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>