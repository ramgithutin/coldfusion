<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif isDefined ("form.text")>
            <cfswitch expression=#text#>
                <cfcase value="1">
                    ok
                </cfcase>
                <cfcase value="2">
                    ok
                </cfcase>
                <cfcase value="3">
                    fair
                </cfcase>
                <cfcase value="4">
                    good
                </cfcase>
                <cfcase value="5">
                    very good
                </cfcase>
                <cfdefaultcase>
                    INVALID
                </cfdefaultcase>
            </cfswitch>
        </cfif>    
    </cffunction>
</cfcomponent>