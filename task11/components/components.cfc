<cfcomponent>
    <cffunction name="Field"  access="remote" returntype="struct">
        <cfset local.dateStruct=structNew()>
        <cfset local.dateStruct.mulitiply1= multiply(1,2)>
        <cfset local.dateStruct.mulitiply2 = multiply(1,2,3)>
        <cfset local.dateStruct.mulitiply3 = multiply(1,2,3,4)>
        <cfreturn local.dateStruct>
    </cffunction>
    <cffunction name="multiply">
        <cfargument name="a" required="yes">
        <cfargument name="b" required="yes">
        <cfargument name="c" required="yes" default="1">
        <cfargument name="d" required="yes" default="1">
        <cfreturn arguments.a*arguments.b*arguments.c*arguments.d>
    </cffunction>
</cfcomponent>