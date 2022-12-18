<cfsilent>
	<!--- check if mail is valid  --->
<cfif isValid('email','#form.subMail#')>
<cfquery  datasource="edu" blockfactor="3" maxrows="3" name="isthere" result="mailval">
	select * from subscribers 
	where sub_mail =<cfqueryparam value="#form.subMail#"
	 cfsqltype="cf_sql_varchar" maxlength="30">
</cfquery>
</cfif>
</cfsilent>
<cfif mailval.RecordCount gte 1>
<cfthrow errorcode="4040" message="found mail" >
<cfelse> Not found 
</cfif>
 

