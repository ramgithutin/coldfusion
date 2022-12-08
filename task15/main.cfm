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
                <form action="main.cfm" method="post" name="form">
                    <cfobject component="components/components" name="multiplyValues" type="component" action="Create" >
                    <cfinvoke  method="getOutput" component="components/components"> 
                </form>
            </div>
            
        </cfoutput>
    </body>
</html>