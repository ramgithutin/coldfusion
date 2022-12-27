<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfset jsonDeserialized = []>
        <cfset jsonTable= serializeJSON([{"Name":"saravanan","Age":27,"LOCATION":"dubai"},
                                         {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] )>
        <cfset jsonDeserialized=deserializeJSON(jsonTable)>
        <cfreturn jsonDeserialized>   
    </cffunction>
</cfcomponent>