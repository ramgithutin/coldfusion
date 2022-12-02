<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfscript>
                task=structNew();
                task[form.textBox1]=form.textBox2;
                task[form.textBox1]="23geg";
                task[form.textBox1]="hsdh";
                writeDump(task);
            </cfscript>
        </cfif>    
    </cffunction>
</cfcomponent>