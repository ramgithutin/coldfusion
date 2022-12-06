<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfif form.text gt "0">
                <cfset data = form.text>
                <cfloop from="1" to="#data#" index="i">
                    <cfif  (#i# % 2) eq 0>
                        <cfset i="<font color=Green>#i#</font>">
                    <cfelse>
                        <cfset i="<font color=Blue>#i#</font>">
                    </cfif>
                    <cfoutput>
                        <br>#i# <br>
                    </cfoutput>
                </cfloop>    
                <cfelse>
                  Invalid number!
            </cfif>
        </cfif>    
    </cffunction>
</cfcomponent>