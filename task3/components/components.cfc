<cfcomponent>
    <cffunction name="textField" access="remote" >
        <cfargument name="field" default="#form.text#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset local.data = arguments.field>
            <cfset local.myarray=ArrayNew(1)>
            <cfloop list="#local.data#" index="item" delimiters=",">
                <cfif IsNumeric(item)>
                    <cfif (item % 3) eq 0>
                        <cfset ArrayAppend(local.myarray,item)>
                    </cfif>  
                </cfif>              
            </cfloop>
            <cfreturn local.myarray>  
       </cfif>
    </cffunction>
</cfcomponent>