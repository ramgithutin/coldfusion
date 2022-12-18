<cfcomponent>
    <cffunction name="getFile" access="remote">
        <cftry>
            <cffile action="upload" fileField="fileField" nameConflict="overwrite" result="thisResult" destination="D:\cfusion\wwwroot\coldfusion\task26\assets\">
            <cfset local.location = #thisResult.serverFile#>
            <cffile action="read" file="D:\cfusion\wwwroot\coldfusion\task26\assets\#local.location#" variable="shoppingList">
            <cfoutput>
                #shoppingList#
            </cfoutput>
            <cfcatch type = "any">
                
            </cfcatch>
        </cftry>
            
    </cffunction>
</cfcomponent>