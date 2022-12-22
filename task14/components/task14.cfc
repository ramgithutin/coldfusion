<cfcomponent>
    <cffunction  name="textField" access="remote">
    <cfif structKeyExists(form, 'submit')>
        <cfset session.name= form.name>
        <cfset session.description= form.description>
        <cfif len(trim(form.file))>
            <cftry>
                <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="thisResult" destination="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task14\assets\">
            <cfcatch type="any">
                <cflocation url="main.cfm">
            </cfcatch>
            </cftry>
                <cfset session.size = thisResult["filesize"]>
            <cfset session.location = #thisResult.serverFile#>
            <cfif session.size gte 1024000>
                <cftry>
                    <cfset fileDelete(thisResult["serverfile"])>
                    <cfcatch type="any">
                        <cfoutput>"File is greater than 1 MB! Please upload again"</cfoutput>
                    </cfcatch>
                </cftry>
            <cfelse>
                    <p>Thankyou, your file has been uploaded.</p>
                    <cfimage action="resize" source="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task14\assets\#session.location#" width="20" height="20" destination="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task14\assets\duplicate\#session.location#" overwrite="true">
                </cfif>    
            </cfif>    
            <cfset session.sizeKB = #session.size#/1000>
        </cfif>
    </cffunction>
</cfcomponent>