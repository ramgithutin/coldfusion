<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>
            <cfinvoke  method="textField" component = "components/components">    
            <div class="mainBody">
                <form action="main.cfm" method="post" name="form" >
                    <label>Birthday Baby Name :</label><br>
                    <input type="text" name="name" placeholder="Enter birthday baby name!" class="field"><br>
                    <label>Enter Email Id :</label><br>
                    <input type="text" name="mailId" placeholder="Enter his Mail ID!" class="field"><br>
                    <label>Enter Birthday Wishes:</label><br>
                    <input type="text" name="wishes" placeholder="Enter birthday wishes!" class="field"><br>
                    <label>Enter Greeting image :</label><br>
                    <input type="file" placeholder="" class="text" name="fileUpload"><br>
                    <input type="submit" value="submit" class="text" name="submit">
                    <cfinvoke  method="textField" component = "components/components">    
                </form>
            </div>
        </cfoutput>
    </body>
</html>