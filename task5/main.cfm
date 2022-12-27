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
                    <label>Enter your birthday</label>
                    <input type="date" name="text" class="text"  required>
                    <label>Enter your mother birthday</label>
                    <input type="date" name="text2"  class="text" required>
                    <input type="submit" value="submit" class="text" id="submit" name="formsubmit">
                </form>
            </div>
            <cfif structKeyExists( form,'formsubmit')>
                <cfinvoke  method="textField" component = "components/components" returnvariable="dateStruct"> 
                Users age = #dateStruct.yourAge# <br>
                At #dateStruct.momDeliveredAge# his mother delivered him.<br>
                #dateStruct.nextDay# days are remaining for his and #dateStruct.nextDay2# days are remaining his mother birthday.
                <cfset structClear(form)>
            </cfif>
        </cfoutput>
    </body>
</html>