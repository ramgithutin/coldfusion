<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'formSubmit')>
            <cfif structKeyExists(Cookie,'visitsCounter') eq false>
                <cfcookie name="visitsCounter" value=0>
            </cfif>
            <cfset Cookie.visitsCounter = Cookie.visitsCounter+1>
               <cfreturn Cookie.visitsCounter>
        </cfif>    
    </cffunction>
</cfcomponent>