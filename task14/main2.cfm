<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>    
            <h3>The details</h3>
            <div>
                <cfimage source="assets\#url.location#" name="myImage" action="writeToBrowser"><br>
                The Image name = #url.name#<br>
                <cfdump  var="#url.location#">

                The Image stored name = #url.location#<br>
                The Image size = #url.size# KB <br>
                The description = #url.des# <br>
            </div>
        </cfoutput>
    </body>
</html>