<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <cfobject component="components/components" name="multiplyValues" type="component" action="Create" >
                <cfset multiplyValues = createObject("component","components/components")>
                <cfset mulitiply=multiplyValues.mulitiply(1,2)>
                #mulitiply#
                <cfset mulitiply="#multiplyValues.mulitiply(1,2,3)#">
                #mulitiply#
                <cfset mulitiply="#multiplyValues.mulitiply(1,2,3,4)#">
                #mulitiply#
            </div>
        </cfoutput>
    </body>
</html>