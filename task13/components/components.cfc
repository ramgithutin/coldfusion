<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfset Result = ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]> 
        <cfset text = form.text>
            <cfset count=0>
        <cfloop from="1" to="#arrayLen(Result)#" index="i">
            <cfif #text# eq #Result[i]#>
                <cfset count = #count# +1>
            </cfif>
        </cfloop>
        <cfoutput>Found the "#text#" word in #count# times</cfoutput>
    </cffunction>
</cfcomponent>