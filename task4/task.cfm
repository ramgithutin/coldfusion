<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <boby>
        <cfoutput>
            <cfinvoke  method="textField" component = "components/components" returnVariable="dateStruct"> 
            #dateStruct.today#, month is #dateStruct.month# (#dateStruct.monthWords#)<br>
            The last friday is #dateStruct.friday#<br>
            the last day of the month #dateStruct.lastM#<br>
            <cfloop from="1" to="5" index="i" >
                #dateStruct[i]#<br>
            </cfloop>
        </cfoutput>
    <body>
<html>