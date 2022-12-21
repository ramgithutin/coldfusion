<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>   
            <h1 class="mainBody">String word count<h1>
            <h1 class="mainBody">Enter the text below we will count it for you<h1>
            <div class="mainBody">
                <form action="getvalue.cfc?method=count" method="post" name="form" >
                    <textarea  name="field" id="field" rows="25" cols="100"></textarea>
                    <input type="submit" value="submit" class="text" name="submit">
                </form>
            </div>
           <cfif structKeyExists(session, "getString")>
				<cfinclude template="task.cfm">
				<cfset structClear(Session)>
			</cfif>
        </cfoutput>
    </body>
</html>