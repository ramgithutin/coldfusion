<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfargument name="field" default="#form.text#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset local.data = arguments.field>
            <cfset local.arr = rematch("[\d]+",data)>
            <cfloop array="#local.arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfoutput>#i#</cfoutput>
                    <cfcontinue>
                </cfif>                
            </cfloop>
       </cfif>
    </cffunction>
</cfcomponent>