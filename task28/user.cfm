<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="backgroundImage">
                <cfif structKeyExists( session,'userFlag')>
                    <div class="mainBody ">
                        <div>
                            <h2>Welcome #session.userRole# </h2> <br>
                        </div>
                    </div>
                    <div class="logout">
                        <form method="post">
                            <input type="submit" name="LOGOUT" value="LOGOUT">
                        </form>
                        <cfif structKeyExists(form,'LOGOUT')>
                            <cfinvoke  method="logout" component="components/pageList">
                        </cfif>
                    </div>
                    <cfinvoke  method="pageList" component="components/pageList" returnvariable="dateStruct">
                    <em>Hi #session.name#<em>
                    <div>
                        <strong>Page List</strong>
                    </div>
                    <div class="flex">
                        <div>        
                            <table class="tableBorder">
                                <cfloop query="dateStruct">
                                    <tr class="tableBorder">
                                        <td class="tableBorder">
                                            <cfset page="#dateStruct.pagename#">
                                            <button type="submit" onclick="openPage('#page#')">#page#</button>
                                        </td>
                                    </tr>
                                </cfloop>
                            </table>
                        </div>
                        <div>
                            <span id="message"><span>
                        </div>
                    </div>
                    <script src="assets/jquery.js"></script>
                    <script src="js/script.js"></script>   
                <cfelse>
                    <cflocation url="login.cfm" addtoken="No">
                    <cfset  StructClear(Session)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>