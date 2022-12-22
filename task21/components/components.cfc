<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfargument name="fieldmailId" type="any" default="#form.mailId#">
        <cfargument name="fieldname" type="any" default="#form.name#">
        <cfargument name="fieldwishes" type="any" default="#form.wishes#">
        <cfargument name="fieldfile" type="any" default="#form.file#">
        <cfif len(trim(arguments.fieldfile))>
            <cffile action="upload"
                fileField="file"
                result="thisResult"
                nameConflict="overwrite"
                destination="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task21\assets\">
            <cfset var = #thisResult.serverFile#>
        </cfif>
        <cfif structKeyExists(form,'submit')>    
            <cfmail to="#arguments.fieldmailId#" from="ramprakashtechtvm@gmail.com" subject="#arguments.fieldwishes#"  mimeattach="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task21\assets\#var#" >
                #arguments.fieldwishes# #arguments.fieldname# !!!
            </cfmail> 
        </cfif>
    </cffunction>
</cfcomponent>