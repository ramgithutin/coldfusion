<cfcomponent>
    <cffunction name="SQLvalue" access="remote" returntype="query">
        <cfset queryData= queryNew("ID, Name, Email","Integer,Varchar,Varchar", [{ID=1, Name="Ashna F Raj", email="ashnafrajan@gmail.com"},{ID=2, Name="Narveen K A", email="narveenka@gmail.com"},{ID=3, Name="Ram Prakash", email="ramprakash@gmail.com"}])>
        <cfreturn queryData>
    </cffunction>
</cfcomponent>