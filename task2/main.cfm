<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>
            <!---
                Form sumbitted 
            --->
            <!--- 
                Clear form 
            --->
            <div class="mainBody">
                <form action="main.cfm" method="post" name="form">
                    <input type="text" placeholder="enter a number between 1 and 5" class="text" name="text">
                    <input type="submit" value="submit" class="text" id="submit" name="submit">
                </form>
            </div>
            <cfinvoke  method="textField" component = "components/task2"> 
            
        </cfoutput>
    </body>
</html>