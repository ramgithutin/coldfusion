<html>
    <head>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                <form name="form"  method="post" class="formpage">
                    <div>
                        <label >Page Name:</label>
                        <input type="text" name="pagename" id="pagenameid" class="form-control edit" value="#url.name#">
                    </div>
                    <div>
                        <label>Page Description:</label>
                        <textarea name="description" id="descid" class="form-control edit" rows="5">#url.desc#</textarea>
                    </div>
                    <div>
                        <input type="submit" name="editSumbit" id="edtsubmitid" value="edit">
                    </div> 	
                </form>
                <cfif structKeyExists(form,'editSumbit')>
                    <cfset args = StructNew()> 
                    <cfset args.id="#url.id#">
                    <cfinvoke  method="editpage" component="components/pageList" argumentCollection="#args#">
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>