<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfif structKeyExists(form, 'formsubmit')>
        <cfset yourBirthday = form.text>
        <cfset momBirthday = form.text2>
            <cfif #yourBirthday# eq #momBirthday# >
                <cfoutput>
                The age should not be same
                </cfoutput>
            
            <cfelse>
                <cfset nowdate = dateFormat("#now()#","yyyy")>
                <cfset yourdate = dateFormat("#yourBirthday#","yyyy")>
                <cfset momdate = dateFormat("#momBirthday#","yyyy")>
                <cfset yourAge = #nowdate#-#yourdate#>
                <cfset momDeliveredAge= #yourdate#-#momdate#>
                <cfset y= dateFormat("#now()#", "yyyy") + 1>
                <cfset m = dateFormat("#yourBirthday#", "mm")>
                <cfset d = dateFormat("#yourBirthday#", "dd")>
                <cfset day = createDate("#y#", "#m#" , "#d#")>
                <cfset nextDay=dateDiff("d", now(), day)>
                <cfset m2 = dateFormat("#momBirthday#", "mm")>
                <cfset d2 = dateFormat("#momBirthday#", "dd")>
                <cfset day2 = createDate("#y#", "#m2#" , "#d2#")>
                <cfset nextDay2=dateDiff("d", now(), day2)>
                <cfoutput>
                    users age = #yourAge# <br>
                    At #momDeliveredAge# his mother delivered him.<br>
                    #nextDay# days are remaining for his and #nextDay2# days are remaining his mother birthday.
                </cfoutput>
            </cfif>
       </cfif>
    </cffunction>
</cfcomponent>