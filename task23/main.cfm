<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
    </head>
    <body>
        <cfoutput>
            <div class="Body">
                <div class="mainBody">
                    <div class="header">
                        <img src="assets/wflogo.png" alt="logo">
                    </div>
                    <div class="content">
                        <p>Employment Application</p>
                        <p>Infinity Box Inc</p>
                        <form>
                            <label>Which position are you applying for? </label> <br> 
                            <select name="field">
                                <option selected="" value="Default"></option>
                                <option value="Interface Designer">Interface Designer</option>
                                <option value="Software Engineer">Software Engineer</option>
                                <option value="System Administrator">System Administrator</option>
                                <option value="Office Manager">Office Manager</option>
                            </select><br>
                            <label>Are you willing to relocate?</label> <br>  
                            <label>When can you start?</label>  <br> 
                            <label>Portfolio Web Site </label>  <br> 
                            <label>Attach a Copy of Your Resume </label> <br> 
                            <label>Salary Requirements </label>  <br> 
                            <label>Your Contact Information</label>  <br> 
                            <label>Email Address  </label>  <br> 
                            <label>Phone  </label>  <br> 
                            <input type="submit" value="Submit" name="Submit">  
                        </form>
                    </div>
                    <div class="footer">
                        <img src="assets/wufoo2.png" alt="logo">
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>