<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css.css">      
            <script defer src="js/script.js"></script>
    </head>
    <body>
        <cfoutput>
            <div class="Body">
                <div class="mainBody">
                    <div class="header">
                        <img src="assets/wflogo.png" alt="logo">
                    </div>
                    <div class="content">
                        <form id="form" >
                            <p class="larger employment">Employment Application</p>
                            <p class="small border">Infinity Box Inc</p>
                            <ul>
                                <li>
                                    <label class="medium">Which position are you applying for? <span class="red">*</span> </label> <br> 
                                    <select name="field" id="field">
                                        <option selected="" value="Default"></option>
                                        <option value="Interface Designer">Interface Designer</option>
                                        <option value="Software Engineer">Software Engineer</option>
                                        <option value="System Administrator">System Administrator</option>
                                        <option value="Office Manager">Office Manager</option>
                                    </select>
                                     <div class="error"></div>
                                </li>
                                <li>
                                    <label class="medium">Are you willing to relocate? <span class="red">*</span> </label>  <br>
                                    <input type="radio" value="yes" name="yes" id="yes"><span class="space"></span>Yes<br>
                                    <input type="radio" value="yes" name="yes" id="no"><span class="space"></span>No
                                     <div class="error"></div>
                                </li>
                                <li>
                                    <label class="medium">When can you start? <span class="red">*</span> </label><br>
                                    <input type="date" id="date" name="date">
                                    <!--<div class="flex alignBaseline">
                                        <div>
                                            <input type="text" tabindex="0" size="2" maxlength="2"> <br>
                                            <span class="smaller">MM</span> 
                                        </div> 
                                            <span class="space1"></span>/
                                            <span class="space1"></span>
                                        <div>    
                                            <input type="text" size="2" maxlength="2"> <br>
                                            <span class="smaller">DD</span>
                                        </div>
                                            <span class="space1"></span>/
                                            <span class="space1"></span>
                                        <div>    
                                            <input type="text" size="4" maxlength="4"> <br>
                                            <span class="smaller">YYYY</span>
                                        </div>
                                            <span class="space1"></span>
                                            <img src="assets/calender.png" alt="calender" data-date-format="yyyy-mm-dd" >
                                    </div>-->  
                                    <div class="control">
                                </li>
                                <li>
                                    <label class="medium">Portfolio Web Site </label> <br>
                                    
                                    <div class="control">
                                </li>
                                <li>
                                    <label class="medium">Attach a Copy of Your Resume </label> <br> 
                                    <input type="file"><br>
                                    <span class="smaller">Word or PDF Documents Only</span>
                                </li>
                                <li>
                                    <label class="medium">Salary Requirements </label>  <br> 
                                    <div class="flex alignBaseline">
                                        $<span class="space"></span>
                                        <div>
                                            <input type="text" tabindex="0" size="10" id="salary"> <br>
                                            <span class="smaller">Dollars</span>
                                        </div><span class="space"></span> . <span class="space"></span>
                                        <div>    
                                            <input type="text" maxlength="2"size="2"> <br>
                                            <span class="smaller">Cents</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <label class="large">Your Contact Information</label>  <br> 
                                </li>
                                <li>
                                    <div class="control">
                                    <label class="medium">Name <span class="red">*</span> </label>  <br> 
                                    <div class="flex alignBaseline">
                                        <div>
                                            <input type="text" size="10" id="fname"> <br>
                                            <span class="smaller">First</span>
                                        </div>
                                            <span class="space"></span>
                                        <div>    
                                            <input type="text" size="20" id="lname" name="fname"> <br>
                                            <span class="smaller">Last</span>
                                        </div>
                                    </div>
                                     <div class="error"></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="control">
                                    <label class="medium">Email Address <span class="red">*</span> </label>  <br> 
                                     <input type="email" tabindex="0" size="50" id="email" name="email">
                                     <div class="control">
                                      <div class="error"></div>
                                      </div>
                                </li>
                                <li>
                                    <div class="control">
                                    <label class="medium">Phone <span class="red">*</span> </label>  <br> 
                                    <!--<div class="flex alignBaseline">
                                        <div>
                                            <input type="tel" tabindex="0" size="3" maxlength="3"> <br>
                                            <span class="smaller">######</span> 
                                        </div> 
                                            <span class="space1"></span>-
                                            <span class="space1"></span>
                                        <div>    
                                            <input type="tel" size="3" maxlength="3"> <br>
                                            <span class="smaller">######</span>
                                        </div>
                                            <span class="space1"></span>-
                                            <span class="space1"></span>
                                        <div>    
                                            <input type="tel" size="4" maxlength="4"> <br>
                                            <span class="smaller">########</span>
                                        </div>
                                    </div> -->
                                    <input type="tel" name="tel" id="tel">
                                    <div class="error"></div>
                                    </div>
                                </li>
                                <div class="submit">
                                    <button type="submit">Submit form</button>
                                </div>
                        </form>
                    </div>
                    <div class="footer flex alignCenter justifyCenter">
                        <span class="smaller">Powered By</span><br>
                    </div>
                    <div class="footer flex alignCenter justifyCenter">
                        <img src="assets/wufoo2.png" alt="logo" class="image2"><br>
                    </div>
                       <div class="smaller flex justifyCenter">See how easy it is to <a>create a form</a>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>