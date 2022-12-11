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
                    <input type="submit" value="submit" class="text" id="submit" name="submit">
                </form>
            </div>
            <cfinvoke  method="textField" component = "components/components" returnVariable="jsonDeserialized">    
            <div class="mainBody">
                <table>
                    
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Location</th>
                    </tr>
                    <cfloop array = "#jsonDeserialized#" index="i">
                        <tr>
                            <td>#i["Name"]#</td>
                            <td>#i["Age"]#</td>
                            <td>#i["LOCATION"]#</td>
                        </tr>
                    </cfloop>
                
                </table>
            </div>    
        </cfoutput>
    </body>
</html>