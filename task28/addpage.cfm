<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="backgroundImage">
                <cfif structKeyExists( session,'adminFlag')>
                    <div class="backgroundImage">
                        <div class="border">
                        <form name="form" method="post">
                            <div>
                                <label >Page Id:</label>
                                <input type="text" name="pageid">
                            </div>
                            <div>
                                <label >Page Name:</label>
                                <input type="text" name="pagename" >
                            </div>
                            <div>
                                <label>Page Description:</label>
                                <textarea name="description" rows="5"></textarea>
                            </div>
                            <div>
                                <input type="submit" name="addSumbit" id="edtsubmitid" value="Add page" class="addPage">
                            </div> 	
                        </form>
                        <cfif structKeyExists(form,'addSumbit')>
                            <cfinvoke  method="addpage" component="components/pageList">
                            <cflocation url="admin.cfm"> 
                        </cfif>
                    </div>
                    </div>
                <cfelse>
                    <cflocation url="login.cfm">
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>
