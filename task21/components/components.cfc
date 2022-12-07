<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfif IsDefined("form.mailId")>
            <cfmail to="#form.mailId#" from="ramprakashtechtvm@gmail.com" subject="#form.wishes#" type="text">
                #form.wishes# #form.name# !!!
                <!--- <cfmailparam file="#form.upload#"> --->
            </cfmail> 
            <cfparam name="form.fileUpload" default="">

    <cfif len(trim(form.fileUpload))>
      <cffile action="upload"
         fileField="fileUpload"
         destination="C:\docs">
      <p>Thankyou, your file has been uploaded.</p>
    </cfif>
            
        </cfif>
    </cffunction>
</cfcomponent>