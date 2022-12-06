<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfset SQLData= queryNew("FirstName, LastName", "CF_SQL_VARCHAR, CF_SQL_VARCHAR")>
            <cfquery dbtype="query" name="Getdata" datasource="empcom">
                select *from SQLData
            </cfquery>
            <cfquery datasource="empcom" name="Getvalue" dbtype="query">
                insert into SQLData values  ("Ashna","F Raj")
                                             ("Ram","Prakash"),
                                            ("Narveen","K A"),
                                            ("Fahad","Nizar"),
                                            ("Athulya","S"),
                                            ("Blessy","B Biju"),
                                            ("Ajaye","Gireesh"),
                                            ("Arjun","Krishna"),
                                            ("Aiswarya","Vijayan"),
                                            ("Chithra","S");
            </cfquery>

            <cfif form.text1 lte 10>
                hi
                <!--- <cfquery dbtype="query" name="Getdata">
                    select *from SQLData
                </cfquery> --->
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>