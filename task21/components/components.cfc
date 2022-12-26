<cfcomponent>
    <cffunction  name="textField" access="remote" returntype="string">
        <cfargument name="fieldmailId" type="any" default="#form.mailId#">
        <cfargument name="fieldname" type="any" default="#form.name#">
        <cfargument name="fieldwishes" type="any" default="#form.wishes#">
        <cfargument name="fieldfile" type="any" default="#form.file#">
        <cfif len(trim(arguments.fieldfile))>
            <cffile action="upload"
                fileField="file"
                result="thisResult"
                nameConflict="overwrite"
                 destination="#expandpath("./assets")#">
            <cfset local.var = #thisResult.serverFile#>
        </cfif>
        <cfif structKeyExists(form,'formSubmit')>    
            <cfmail to="#arguments.fieldmailId#" from="ramprakashtechtvm@gmail.com" subject="#arguments.fieldwishes#"  mimeattach="#expandpath("./assets/#local.var#")#">
                #arguments.fieldwishes# #arguments.fieldname# !!!
            </cfmail> 
            <cfreturn "mail is successully send">
        </cfif>
    </cffunction>
</cfcomponent>