<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="main">
            <cfinvoke method="textField" component="components/components" returnVariable="Session.loggedIn">
                <cfif Session.loggedIn==1>
                    <h1>WELCOME </h1>
                    <form method="post" name="myform" class="">
                    </form>
                <cfelse>
                    <cflocation url="login.cfm" addtoken="No">
                    <cfset  StructClear(Session)>
                </cfif>
                </div>
        </cfoutput>
         <cfset  StructClear(Session)>
    </body>
</html>