<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfif len(trim(form.fileUpload))>
            <cffile action="upload"
                fileField="fileUpload"
                result="thisResult"
                nameConflict="overwrite"
                destination="D:\cfusion\wwwroot\coldfusion\task21\assets\">
            <p>Thankyou, your file has been uploaded.</p>
            <cfset var = #thisResult.serverFile#>
        </cfif>
        <cfif IsDefined("form.mailId")>    
            <cfmail to="#form.mailId#" from="ramprakashtechtvm@gmail.com" subject="#form.wishes#" type="text" mimeattach="D:\cfusion\wwwroot\coldfusion\task21\assets\#var#" >
                #form.wishes# #form.name# !!!
            </cfmail> 
        </cfif>
    </cffunction>
</cfcomponent>