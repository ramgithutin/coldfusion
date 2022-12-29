<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfargument name="mytext" type="string">
        <cfset variables.mytext = arguments.mytext>
        <cfreturn this>
    </cffunction>
    <cffunction  name="getwords" access="remote" returntype="struct">
        <cfset myList = "#mytext#">
        <cfset key=0>
		<cfloop list="#myList#" index="item" delimiters=" .;">
			<cfset key=key+1>
			<cfset value="#item#">
 			<cfif not IsNumeric(item)>
   				<cfif structKeyExists(local,"myStructure")>
					<cfset myVariable = StructInsert(local.myStructure,"#key#","#value#")>
				<cfelse>
					<cfset local.myStructure = StructNew("ordered")>
					<cfset myVariable = StructInsert(myStructure,"#key#","#value#")>
				</cfif>
   			</cfif>
		</cfloop>   
       	<cfreturn myStructure>
    </cffunction>
	<cffunction  name="countText" access="remote" returnType="query">
		<cfquery name="textCount" datasource="employee">
            SELECT Word, numberOfTime
            FROM wordCount
            WHERE not len(Word)<3
            ORDER BY numberOfTime DESC,len(Word) DESC, Word ASC
        </cfquery>
		<cfreturn textCount>
	</cffunction>
</cfcomponent>