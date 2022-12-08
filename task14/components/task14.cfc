<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cffile action="upload"
            fileField="file"
            nameConflict="makeunique"
            result="fileResult"
            destination="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task14\assets\">
            <p>Thankyou, your file has been uploaded.</p>
        </cfif>
        
<cfimage source="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task14\assets\" name="myImage" action="read">
<!--- Turn on antialiasing. --->
<cfset ImageSetAntialiasing(myImage)>
<cfset ImageScaleToFit(myImage,100,100,"mediumQuality")>
<!--- Display the modified image in a browser. --->
<cfimage source="#myImage#" action="writeToBrowser">
        <cfset v = fileResult["filesize"]>
        <cfif v gte 1024000>
            <cfscript>
                try{
                fileDelete(fileresult["serverfile"]);
                }
                catch(any e){
                  writeOutput("file is greater than 1 MB! please upload again ");
                }
            </cfscript>
        </cfif>    
    </cffunction>
</cfcomponent>