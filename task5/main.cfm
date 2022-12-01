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
                <form action="components/components.cfc?method=textField" method="post" name="form">
                    <label>Enter your birthday</label>
                    <input type="date" name="text" class="text">
                    <label>Enter your mother birthday</label>
                    <input type="date" name="text2"  class="text">
                    <input type="submit" value="submit" class="text" id="submit" name="formsubmit">
                </form>
                <div></div>
            </div>
        </cfoutput>
    </body>
</html>