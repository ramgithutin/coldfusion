<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset yourBirthday = form.text>
            <cfset momBirthday = form.text2>
            <cfif yourBirthday eq momBirthday >
                The age should not be same
                <cfelse>
                    <cfset nowdate = dateFormat("#now()#","yyyy")>
                    <cfset yourdate = dateFormat("#yourBirthday#","yyyy")>
                    <cfset momdate = dateFormat("#momBirthday#","yyyy")>
                    <cfset yourAge = #nowdate#-#yourdate#>
                    <cfset momDeliveredAge= #yourdate#-#momdate#>
                    <cfset y= dateFormat("#now()#", "yyyy")>
                    <cfset y2 =dateFormat("#now()#", "yyyy")>
                    <cfset m = dateFormat("#yourBirthday#", "mm")>
                    <cfset nm = dateFormat("#now()#", "mm")>
                    <cfset d = dateFormat("#yourBirthday#", "dd")>
                    <cfset nd = dateFormat("#now()#", "dd")>
                    <cfif m neq nm || nd gte d && m lt nm>
                        <cfset y = #y# + 1>
                    </cfif>
                    <cfset day = createDate("#y#", "#m#" , "#d#")>
                    <cfset nextDay=dateDiff("d", now(), day)>
                    <cfset m2 = dateFormat("#momBirthday#", "mm")>
                    <cfset d2 = dateFormat("#momBirthday#", "dd")>
                    <cfif m2 neq nm || nd gte d2 && m2 lt nm>
                            <cfset y2 = #y2# + 1>
                    </cfif>
                    <cfset day2 = createDate("#y2#", "#m2#" , "#d2#")>
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