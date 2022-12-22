<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfargument name="yourBirthday" type="any" default="#form.text#">
        <cfargument name="momBirthday" type="any" default="#form.text2#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset nowdate = dateFormat("#now()#","yyyy")>
            <cfset yourdate = dateFormat("#arguments.yourBirthday#","yyyy")>
            <cfset momdate = dateFormat("#arguments.momBirthday#","yyyy")>
            <cfset yourAge = #nowdate#-#yourdate#>
            <cfset momDeliveredAge= #yourdate#-#momdate#>
            <cfset y= dateFormat("#now()#", "yyyy")>
            <cfset y2 =dateFormat("#now()#", "yyyy")>
            <cfset m = dateFormat("#arguments.yourBirthday#", "mm")>
            <cfset nm = dateFormat("#now()#", "mm")>
            <cfset d = dateFormat("#arguments.yourBirthday#", "dd")>
            <cfset nd = dateFormat("#now()#", "dd")>
            <cfif m neq nm || nd gte d && m lt nm>
                <cfset y = #y# + 1>
            </cfif>
            <cfset day = createDate("#y#", "#m#" , "#d#")>
            <cfset nextDay=dateDiff("d", now(), day)>
            <cfset m2 = dateFormat("#arguments.momBirthday#", "mm")>
            <cfset d2 = dateFormat("#arguments.momBirthday#", "dd")>
            <cfif m2 neq nm || nd gte d2 && m2 lt nm>
                <cfset y2 = #y2# + 1>
            </cfif>
            <cfset day2 = createDate("#y2#", "#m2#" , "#d2#")>
            <cfset nextDay2=dateDiff("d", now(), day2)>
            <cfset dateStruct=structNew()>
            <cfset dateStruct.yourAge = "#yourAge#">
            <cfset dateStruct.momDeliveredAge = "#momDeliveredAge#">
            <cfset dateStruct.nextDay = "#nextDay#">
            <cfset dateStruct.nextDay2 = "#nextDay2#">
            <cfreturn dateStruct>
       </cfif>
    </cffunction>
</cfcomponent>