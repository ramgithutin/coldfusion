<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                <div class="backgroundImage">
                    <cfset args = StructNew()> 
                    <cfset args.name="#url.name#">
                    <cfinvoke  method="descripition" component="components/pageList" argumentCollection="#args#" returnvariable="des"> 
                    <div>
                        <span>Page Name:</span>
                        <span><cfoutput>#url.name#</cfoutput></span><br>
                        <span>Page Description:</span>
                        <span><cfoutput> #des.pagedescs# </cfoutput></span>
                    </div>
                </div>
            </cfif>    
        </cfoutput>
    </body>
</html>