<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="backgroundImage">
                <cfif structKeyExists( session,'adminFlag')>
                    <div class="mainBody ">
                        <div>
                            <h2>Welcome #session.userRole# </h2> <br>
                        </div>
                        <cfquery name="pageList" datasource="employee">
                            SELECT pagename,pagedescs,pageid
                            FROM pages
                        </cfquery>
                    </div>
                    <div class="logout">
                        <a href="login.cfm" class="logout"><button>LOGOUT</button></a>
                    </div>
                    <em>Hi #session.name#<em>
                    <div>
                        <strong>Page List</strong>
                    </div>
                    <table class="tableBorder">
                        <cfloop query="pageList">
                            <cfquery name="descList" datasource="employee">
                                SELECT pagedescs,pageid FROM pages
                                WHERE pageid = '#pageList.pageid#'
                            </cfquery>
                            <tr class="tableBorder">
                                <td class="tableBorder">#pageList.pagename#</td>
                                <td class="tableBorder"><a href="edit.cfm?name=#pageList.pagename#&id=#descList.pageid#&desc=#descList.pagedescs#">EDIT</a></td>
                                <td class="tableBorder"><a href="delete.cfc?method=deletepage&id=#descList.pageid#">DELETE</a></td></td>
                            </tr>
                        </cfloop>
                    </table>
                    <a href="addpage.cfm"?>
                        <button class="addPage">ADD A NEW PAGE </button>
                    </a>
                <cfelse>
                    <cflocation url="login.cfm" addtoken="No">
                    <cfset  StructClear(Session)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>