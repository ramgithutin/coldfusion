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
                <form action="main.cfm" method="post" name="form" autocomplete="off">
                    <input type="text"  class="text" name="textBox1">
                    <input type="text"  class="text" name="textBox2">
                    <input type="submit" value="submit" class="text" id="submit" name="submit">
                </form>
            </div>
            <cfif structKeyExists( form,'submit')>
                <cfinvoke  method="textField" component = "components/components">
                <cfdump  var="#session.task#">
                <cfset structClear(form)>
            </cfif>
        </cfoutput>
    </body>
</html>