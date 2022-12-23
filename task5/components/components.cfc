<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfargument name="yourBirthday" type="any" default="#form.text#">
        <cfargument name="momBirthday" type="any" default="#form.text2#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset local.nowdate = dateFormat("#now()#","yyyy")>
            <cfset local.yourdate = dateFormat(arguments.yourBirthday,"yyyy")>
            <cfset local.momdate = dateFormat(arguments.momBirthday,"yyyy")>
            <cfset local.yourAge = local.nowdate-local.yourdate>
            <cfset local.momDeliveredAge= local.yourdate-local.momdate>
            <cfset local.y= dateFormat(now(), "yyyy")>
            <cfset local.y2 =dateFormat(now(), "yyyy")>
            <cfset local.m = dateFormat(arguments.yourBirthday, "mm")>
            <cfset local.nm = dateFormat(now(), "mm")>
            <cfset local.d = dateFormat(arguments.yourBirthday, "dd")>
            <cfset local.nd = dateFormat(now(), "dd")>
            <cfif local.m eq local.nm && local.nd lte local.d || local.m gt local.nm>
                <cfset local.y = local.y>
            <cfelse>
                <cfset local.y=local.y+1>
            </cfif>
            <cfset local.day = createDate(local.y, local.m , local.d)>
            <cfset local.nextDay=dateDiff("d", now(), local.day)>
            <cfset local.m2 = dateFormat(arguments.momBirthday, "mm")>
            <cfset local.d2 = dateFormat(arguments.momBirthday, "dd")>
            <cfif local.m2 eq local.nm && local.nd lte local.d2 || local.m2 gt local.nM>
                <cfset local.y2 = local.y2>
            <cfelse>
                <cfset local.y2 = local.y2 + 1>
            </cfif>
            <cfset local.day2 = createDate(local.y2, local.m2 , local.d2)>
            <cfset local.nextDay2=dateDiff("d", now(), local.day2)>
            <cfset local.dateStruct=structNew()>
            <cfset local.dateStruct.yourAge = local.yourAge>
            <cfset local.dateStruct.momDeliveredAge = local.momDeliveredAge>
            <cfset local.dateStruct.nextDay = local.nextDay>
            <cfset local.dateStruct.nextDay2 = local.nextDay2>
            <cfreturn local.dateStruct>
       </cfif>
    </cffunction>
</cfcomponent>