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
                <form action="main.cfm" method="post" enctype="multipart/form-data">
                    
                    <label>Image name</label><br>
                    <input type="text" name="name" class="text"><br>
                    <label>description</label><br>
                    <textarea class="text"  rows="4" cols="50" name="description"></textarea><br>
                    <label>Select file</label><br>
                    <input type="file"  name="file"><br>
                    The image should not greater than 1 MB<br>
                    <cfinvoke  method="textField" component ="components/task14" returnVariable="session.location"> 
                    <input type="submit" value="submit" class="text" name="submit">
                    <a href="main2.cfm"> <cfimage source="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task14\assets\duplicate\#session.location#" name="myImage" action="writeToBrowser"></a>    
                    <cfdump  var="#session.location#">
                    <br> 
                </form>
            </div>
        </cfoutput>
    </body>
</html>