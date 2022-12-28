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
                        <a href="login.cfm" class="logout"><button>LOGOUT</button></a>
                    </div>
                    <cfinvoke  method="pageList" component="components/pageList" returnvariable="dateStruct">
                    <em>Hi #session.name#<em>
                    <div>
                        <strong>Page List</strong>
                    </div>
                    <table class="tableBorder">
                        <cfloop query="dateStruct">
                            <tr class="tableBorder">
                                <td class="tableBorder">
                                    <a href="showpage.cfm?name=#dateStruct.pagename#">#dateStruct.pagename#</a>
                                </td>
                            </tr>
                        </cfloop>
                    </table>
                <cfelse>
                    <cflocation url="login.cfm" addtoken="No">
                    <cfset  StructClear(Session)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>