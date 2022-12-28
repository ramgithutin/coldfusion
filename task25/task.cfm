<html>
    <head>
    </head>
    <body>
        <cfinvoke method="countText" component="components/tagCloud" returnVariable="textCount"> 
        <cfset colstr = {1:'green',2:'blue',3:'yellow',4:'red',5:'violet'}>
        <cfset valueText="#textCount.numberOfTime#">
        <cfset x=randRange(0, 255)>
        <cfset y=randRange(0, 255)>
        <cfset z=randRange(0, 255)>
        <cfoutput query="textCount">
            <cfset size="#textCount.numberOfTime#"+20>
            <cfif valueText neq textCount.numberOfTime>
   				<cfset x=randRange(0,255)>
  			    <cfset y=randRange(0,255)>
  				<cfset z=randRange(0,255)>
   			</cfif>
            <a href="##" style="font-size: #size#px; text-decoration:none; color:rgb(#x#,#y#,#z#)">#textCount.Word# (#textCount.numberOfTime#)</a>
            <cfset valueText="#textCount.numberOfTime#">
        </cfoutput>
    </body>
</html>