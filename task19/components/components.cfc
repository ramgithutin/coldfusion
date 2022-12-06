<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfif isDefined("Cookie.visitsCounter") eq false>
                <cfcookie name="visitsCounter" value=1>
            </cfif>
            <cfset Cookie.visitsCounter = Cookie.visitsCounter+1>
            <cfoutput>
                You have visited this page #Cookie.visitsCounter# times!
            </cfoutput>
        </cfif>    
    </cffunction>
</cfcomponent>