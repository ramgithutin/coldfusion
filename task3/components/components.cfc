<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset data = form.text>
            <cfset arr = rematch("[\d]+",data)>
            <cfloop array="#arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfoutput>
                        #i#
                    </cfoutput>
                    <cfcontinue>
                </cfif>                
            </cfloop>
       </cfif>
    </cffunction>
</cfcomponent>