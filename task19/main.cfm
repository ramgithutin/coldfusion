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
                    <input type="submit" value="submit" class="text" id="submit" name="submit">
                    <cfinvoke  method="textField" component = "components/components">    
                </form>
            </div>
        </cfoutput>
    </body>
</html>