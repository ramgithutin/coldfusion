<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfargument name="mytext" type="string">
        <cfset variables.mytext = arguments.mytext>
        <cfreturn this>
    </cffunction>
    <cffunction  name="getwords" access="remote" returntype="struct">
        <cfset myList = "#mytext#">
        <cfset local.key=0>
		<cfloop list="#myList#" index="item" delimiters=" .;">
			<cfset local.key=local.key+1>
			<cfset value="#item#">
 			<cfif not IsNumeric(#item#)>
   				<cfif not isDefined("myStructure")>
					<cfset myStructure = StructNew("ordered")>
					<cfset myVariable = StructInsert(myStructure,"#local.key#","#value#")>
				<cfelse>
					<cfset myVariable = StructInsert(myStructure,"#local.key#","#value#")>
				</cfif>
   			</cfif>
		</cfloop>   
       		<cfreturn myStructure>
    </cffunction>
</cfcomponent>