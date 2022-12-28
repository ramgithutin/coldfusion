<html>
    <head>
    </head>
    <body>        
        <cfinvoke method="getquery" component = "components/components" returnvariable="emp">
        TABLE IS<br>
        <cfoutput query="emp">
            #FirstName# #LastName# <br>
        </cfoutput>    
    </body>
</html>