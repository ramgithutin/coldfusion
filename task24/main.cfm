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
                    <label>Name</label>
                    <input type="text" class="text" name="name" id="name">
                    <label>Email id</label>
                    <input type="email" class="text" name="email" id="email">
                    <input type="checkbox" class="text" id="check" name="check" onclick="checktest()"> 
                    <input type="submit" value="submit" class="text" id="submit" name="submit">
                    </form>
                </div>
            </cfoutput>
            <script src="assets/jquery.js"></script>
            <script src="js/script.js"></script>    
    </body>
</html>