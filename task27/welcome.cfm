<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="backgroundImage">
                <cfif structKeyExists( session,'flag')>
                    <div class="mainBody ">
                        <div>
                            <h2>Welcome #session.name# </h2> <br>
                        </div>
                    </div>
                    <div class="log">
                        <form method="post">
                            <input type="submit" name="LOGOUT" value="LOGOUT" class="logout">
                        </form>
                        <cfif structKeyExists(form,'LOGOUT')>
                            <cfinvoke  method="logout" component="components/components">
                        </cfif>
                    </div>
                <cfelse>
                    <cflocation url="login.cfm" addtoken="No">
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>