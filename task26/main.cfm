<html>
    <head>
        <link rel="stylesheet" href="css/task20.css">
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="components/components.cfc?method=getFile" method="post" name="myform" class="forminput" enctype="multipart/form-data">
                    <input type="file" name="fileField" >
                    <input type="submit" value="Submit" class="button" id="submit" name="submit">
                </form>
            </div>
        </cfoutput>
    </body>
</html>