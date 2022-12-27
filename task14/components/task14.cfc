<cfcomponent>
    <cffunction  name="textField" access="remote" returntype="string">
    <cfif structKeyExists(form, 'submit')>
        <cfset session.name= form.name>
        <cfset session.description= form.description>
        <cfif len(trim(form.file))>
            <cftry>
                <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="thisResult" destination="#expandpath("./assets")#">
            <cfcatch type="any">
                <cfreturn "only jpg, jpeg, gif, png are allowed">
                <cflocation url="main.cfm">
            </cfcatch>
            </cftry>
                <cfset session.size = thisResult["filesize"]>
            <cfset session.location = thisResult.serverFile>
            <cfif session.size gte 1024000>
                <cftry>
                    <cfset fileDelete(thisResult["serverfile"])>
                    <cfcatch type="any">
                        <cfreturn "only less than 1MB files are allowed">
                        <cflocation url="main.cfm">
                    </cfcatch>
                </cftry>
            <cfelse>
                    <cfimage action="resize" source="#expandpath("./assets/#session.location#")#" width="20" height="20" destination="#expandpath("./assets/duplicate/#session.location#")#" overwrite="true">
                </cfif>    
            </cfif>    
            <cfset session.sizeKB = #session.size#/1000>
            <cfreturn "">
        </cfif>
    </cffunction>
</cfcomponent>