<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfset jsonDeserialized = []>
            <cfscript>
                jsonTable= serializeJSON([{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] );
                jsonDeserialized=deserializeJSON(jsonTable);
            </cfscript>
            <cfreturn "#jsonDeserialized#">   
    </cffunction>
</cfcomponent>