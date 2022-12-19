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
                <form action="main.cfm" method="post" name="form" enctype="multipart/form-data">
                    <label>Birthday Baby Name :</label><br>
                    <input type="text" name="name" placeholder="Enter birthday baby name!" class="field"><br>
                    <label>Enter Email Id :</label><br>
                    <input type="text" name="mailId" placeholder="Enter his Mail ID!" class="field"><br>
                    <label>Enter Birthday Wishes:</label><br>
                    <input type="text" name="wishes" placeholder="Enter birthday wishes!" class="field"><br>
                    <label>Enter Greeting image :</label><br>
                    <input type="file" placeholder="" class="text" name="file"><br>
                    <input type="submit" value="submit" class="text" name="submit">    
                </form>
            </div>
            <cfif structKeyExists( form,'submit')>
                <cfinvoke  method="textField" component = "components/components">
                <cfset structClear(form)>
            </cfif>
        </cfoutput>
    </body>
</html>