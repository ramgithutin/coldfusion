<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfscript>
                jsonTable= serializeJSON([{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] );
                jsonDeserialized=deserializeJSON(jsonTable);
            </cfscript>
            <cfreturn "#jsonDeserialized#">
        </cfif>    
    </cffunction>
</cfcomponent>