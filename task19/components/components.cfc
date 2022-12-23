<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfif structKeyExists(Cookie,'visitsCounter') eq false>
                <cfcookie name="visitsCounter" value=0>
            </cfif>
            <cfset Cookie.visitsCounter = Cookie.visitsCounter+1>
            <cfoutput>
               <cfreturn Cookie.visitsCounter>
            </cfoutput>
        </cfif>    
    </cffunction>
</cfcomponent>