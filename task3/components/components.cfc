<cfcomponent>
    <cffunction name="textField" access="remote" >
        <cfargument name="field" default="#form.text#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset local.data = arguments.field>
            <cfset local.arr = rematch("[\d]+",local.data)>
            <cfset local.myarray=ArrayNew(1)>
            <cfloop array="#local.arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfset ArrayAppend(local.myarray,i)>
                </cfif>                
            </cfloop>
            <cfreturn local.myarray>  
       </cfif>
    </cffunction>
</cfcomponent>