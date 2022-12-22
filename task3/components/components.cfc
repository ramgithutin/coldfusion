<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfargument name="field" default="#form.text#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset local.data = arguments.field>
            <cfset local.arr = rematch("[\d]+",data)>
            <cfset myarray=ArrayNew(1)>
            <cfloop array="#local.arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfset ArrayAppend(myarray,i)>
                </cfif>                
            </cfloop>
            <cfreturn myarray>
       </cfif>
    </cffunction>
</cfcomponent>