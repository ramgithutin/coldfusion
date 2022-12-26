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
                    <input type="number" placeholder="enter a number" class="text" name="text">
                    <input type="submit" value="submit" class="text" id="formsubmit" name="formsubmit">
                </form>
            </div>
            <cfif structKeyExists( form,'formsubmit')>
                <cfinvoke  method="textField" component = "components/components" returnVariable="dateStruct">
                <cfloop item="currentKey" collection="#dateStruct#"> 
                    #dateStruct[currentKey]#
                </cfloop>
                <cfset structClear(form)>
                <cfset structClear(dateStruct)>
            </cfif>
        </cfoutput>
    </body>
</html>