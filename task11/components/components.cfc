<cfcomponent>
    <cffunction name="Field"  access="remote">
        
        <cfset res = mulitiply(1,2)>
        <cfdump  var="#res#"><br>
        <cfset res = mulitiply(1,2,3)>
        <cfdump  var="#res#"><br>
        <cfset res = mulitiply(1,2,3,4)>
        <cfdump  var="#res#"><br>
    </cffunction>
    <cffunction name="mulitiply">
        <cfargument name="a" required="yes">
        <cfargument name="b" required="yes">
        <cfargument name="c" required="yes" default="1">
        <cfargument name="d" required="yes" default="1">
        <cfreturn a*b*c*d>
    </cffunction>
</cfcomponent>
