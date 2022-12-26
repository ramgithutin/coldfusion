<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset var chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ">
	    <cfset var length = randRange(6,6)>
	    <cfset var result = "">
	    <cfset var i = "">
        <cfset var char = "">
	    <cfloop index="i" from="1" to="#length#">
		    <cfset char = mid(chars, randRange(1, len(chars)),1)>
		    <cfset result&=char>
	    </cfloop>	
	    <cfreturn result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote" returnType="string">
        <cfargument name="fieldCaptcha" type="any" default="#form.captcha#">
        <cfargument name="fieldHidden" type="any" default="#form.captchatext#">
        <cfif structKeyExists(form, 'formSubmit')>
            <cfset variable = arguments.fieldCaptcha>
            <cfset captch = makeRandomString()>
            <cfset hidvar = arguments.fieldHidden>
            <cfif hidvar eq variable>
                <cfreturn "Email Address successfully subscribe our newsletter!">
            <cfelse>
                <cfreturn "Invalid captcha!">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>