<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfparam name="form.file" default="">
        <cfif len(trim(form.file))>
            <cffile action="upload"
                fileField="file"
                result="thisResult"
                nameConflict="overwrite"
                destination="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task21\assets\">
            <cfset var = #thisResult.serverFile#>
        </cfif>
        <cfif IsDefined("form.mailId")>    
            <cfmail to="#form.mailId#" from="ramprakashtechtvm@gmail.com" subject="#form.wishes#"  mimeattach="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task21\assets\#var#" >
                #form.wishes# #form.name# !!!
            </cfmail> 
        </cfif>
    </cffunction>
</cfcomponent>