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
                <form method="post" name="form">
                    <input type="hidden">
                    <input type="submit" value="submit" class="text" id="formSubmit" name="formSubmit">
                </form>
            </div>
            <cfif structKeyExists( form,'formSubmit')>
                <cfinvoke  method="textField" component = "components/components" returnvariable="var">
                You have visited this page #var# times!
                <cfset structClear(form)>
            </cfif>
        </cfoutput>
    </body>
</html>