<html>
    <head>
    </head>
    <body>        
        <cfquery datasource="employee" name="emp">
            select * from employee; 
        </cfquery>
        TABLE IS<br>
        <cfoutput query="emp">
            #FirstName# #LastName# <br>
        </cfoutput>    
    </body>
</html>