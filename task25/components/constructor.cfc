<cfcomponent>
    <cffunction  name="count" access="remote">
        <cfset myObj = createObject("component", "tagCloud").textField(mytext="#field#")>
        <cfset myword="#myObj.getwords()#">
        <cfloop collection="#myword#" item="words">
                <cfquery name="check" datasource="employee">
					SELECT count(word) records FROM wordCount
					WHERE words =<cfqueryparam cfsqltype="cf_sql_varchar" value="#StructFind(myword,words)#">
				</cfquery>

            <cfdump var="#check.records#">
        </cfloop>
    </cffunction>
</cfcomponent>