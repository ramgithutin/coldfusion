<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <cfinvoke  method="Field" component = "components/components" returnvariable="dateStruct">  
                mulitiply(1,2) = #dateStruct.mulitiply1#<br>
                mulitiply(1,2,3) = #dateStruct.mulitiply2#<br>
                mulitiply(1,2,3,4) = #dateStruct.mulitiply3#<br> 
            </div>
        </cfoutput>
    </body>
</html>