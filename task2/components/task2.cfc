<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="field" type="any" default="#form.text#">
        <cfswitch expression="#arguments.field#">
            <cfcase value="1">
                <cfreturn "ok">
            </cfcase>
            <cfcase value="2">
                <cfreturn "ok">
            </cfcase>
            <cfcase value="3">
                <cfreturn "fair">
            </cfcase>
            <cfcase value="4">
                <cfreturn "good">
            </cfcase>
            <cfcase value="5">
                <cfreturn "very good">
            </cfcase>
            <cfdefaultcase>
                <cfreturn "INVALID">
            </cfdefaultcase>
        </cfswitch> 
    </cffunction>
</cfcomponent>