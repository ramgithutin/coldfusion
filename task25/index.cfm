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
                <form method="post" name="form" >
                    <textarea  name="field" id="field" rows="3" cols="25">
                    </textarea>
                    <input type="submit" value="submit" class="text" name="submit">
                    <cfinvoke  method="textField" component = "components/tagCloud">    
                </form>
            </div>
        </cfoutput>
    </body>
</html>