<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                    <cfif structKeyExists( session,'flag')>
                        <div>
                            <h1>WELCOME </h1> <br>
                            <h2>hai #session.name#<h2>
                        </div>
                        <form method="post" name="form">
                            <input type="submit" value="logout" name="logout" class="text">
                        </form>
                        <cfif structKeyExists( form,'logout')>
                            <cfinvoke method="logoutField" component="components/task27">
                                <cfset structClear(form)>
                            </cfif>
                        <cfelse>
                            <cflocation url="login.cfm" addtoken="No">
                            <cfset  StructClear(Session)>
                        </cfif>
                        <cfset  StructClear(session)>
                </div>
        </cfoutput>
    </body>
</html>