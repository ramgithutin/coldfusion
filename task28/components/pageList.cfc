<cfcomponent>
    <cffunction  name="pagelist" access="remote" returnType="query">
        <cfquery name="pageList" datasource="employee">
            SELECT pagename,pagedescs
            fROM pages
        </cfquery>
        <cfreturn pageList>
    </cffunction>
    <cffunction  name="descripition" access="remote" returnType="query">
        <cfquery name="show" datasource="employee">
            SELECT pagedescs FROM Pages
            WHERE pagename=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.name#">
        </cfquery>
        <cfreturn show>
    </cffunction>
    <cffunction  name="addpage" access="remote">
        <cfargument name="pageid" type="any" default="#form.pageid#">
        <cfargument name="pagename" type="any" default="#form.pagename#">
        <cfargument name="description" type="any" default="#form.description#">
        <cfquery name="edit" datasource="employee">
            INSERT INTO Pages VALUES(
             <cfqueryparam value="#argumentS.pageid#" cfsqltype="cf_sql_varchar">,
             <cfqueryparam value="#argumentS.pagename#" cfsqltype="cf_sql_varchar">,
             <cfqueryparam value="#argumentS.description#" cfsqltype="cf_sql_varchar">)
        </cfquery>
    </cffunction>
    <cffunction  name="editpage" access="remote">
        <cfquery name="edit" datasource="employee">
            UPDATE Pages
            SET pagename=<cfqueryparam value="#form.pagename#" cfsqltype="cf_sql_varchar">, pagedescs=<cfqueryparam value="#form.description#" cfsqltype="cf_sql_varchar">
            WHERE pageid=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.id#">
        </cfquery>
    </cffunction>
    <cffunction  name="list" access="remote" returnType="query">
        <cfquery name="pageList" datasource="employee">
            SELECT pagename,pagedescs,pageid
            FROM pages
        </cfquery>
        <cfreturn pageList>
    </cffunction>
    <cffunction  name="descLists" access="remote" returnType="query">
        <cfquery name="descList" datasource="employee">
            SELECT pagedescs,pageid FROM pages
            WHERE pageid = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.pageid#">
        </cfquery>
        <cfreturn descList>
    </cffunction>
</cfcomponent>