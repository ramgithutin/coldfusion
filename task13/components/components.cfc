<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="formText" default="#form.textFind#">
        <cfset local.textarea=arguments.formText>
        <cfif structKeyExists( form,'formSubmit')>
            <cfset local.Result = ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]> 
            <cfset local.inputText = arguments.formText>
            <cfset local.count=0>
            <cfloop from="1" to="#arrayLen(local.Result)#" index="i">
                <cfif local.inputText eq local.Result[i]>
                    <cfset local.count = local.count +1>
                </cfif>
            </cfloop>
            <cfreturn local.count>
        </cfif>
    </cffunction>
</cfcomponent>