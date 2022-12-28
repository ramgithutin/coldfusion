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
                <cfset multiply=multiplyValues.multiply(1,2)>
                #multiply#
                <cfset multiply="#multiplyValues.multiply(1,2,3)#">
                #multiply#
                <cfset multiply="#multiplyValues.multiply(1,2,3,4)#">
                #multiply#
            </div>
        </cfoutput>
    </body>
</html>