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
                <cfinvoke  method="textField" component = "components/components" returnVariable="number">
                <cfloop from="1" to="3" index="i">
                    <cfloop from="1" to="3" index="j">
                        <cfoutput>#number[i][j]#</cfoutput>
                    </cfloop><br>
                </cfloop>    
            </div>
        </cfoutput>
    </body>
</html>