function validateform(){
	var uname=document.forms['form']['fname'];
	var email=document.forms['form']['email'];
	var number=document.forms['form']['tel'];
	var datetime=document.forms['form']['date'];
	var uploadfile=document.forms['form']['uploadfile'];
 
	nameValidate(fname);
	emailValidate(email);
	telephoneValidate(tel);
	datetimeValidate(date);
	fileValidate(uploadfile);
	return false;
 }
 
 function errorValidate(id){
 
   document.getElementById(id).style.display="block";
 }
 
 function successValidate(id){
   document.getElementById(id).innerHTML="";
 }
 
 function nameValidate(fname){
	
	if(fname.value==""){
	  errorValidate('name_div');
	  fname.style.border="1px solid red";  
	  return false;
	}
	else if(fname.value.length<3){
	   errorValidate('name_div');
	   fname.style.border="1px solid red"; 
	   return false;
	}
	else{
	   successValidate('name_div');
	   fname.style.border="1px solid green";
	   return true;
	}
 }
 
 
 function emailValidate(email){
	if(email.value==""){
	  errorValidate('email_div');
	  email.style.border="1px solid red";  
	  return false;
	}else{
	   successValidate('email_div');
	   email.style.border="1px solid green";
	   return true;
	}
 }
 
 function telephoneValidate(tel){
	if(tel.value==""){
	  errorValidate('tel_div');
	  tel.style.border="1px solid red";  
	  return false;
	}
	else{
	   successValidate('tel_div');
	   tel.style.border="1px solid green";
	   return true;
	}
 }
 
 function datetimeValidate(date){
	if(date.value==""){
	  errorValidate('date_div');
	  date.style.border="1px solid red";  
	  return false;
	}else{
	   successValidate('date_div');
	   datetime.style.border="1px solid green";
	   return true;
	}
 }
 
 
 function fileValidate(uploadfile){     
	if(uploadfile.value==""){
	  errorValidate('uploadfile_div');
	  uploadfile.style.border="1px solid red";  
	  return false;
	}else{
	   successValidate('uploadfile_div');
	   uploadfile.style.border="1px solid green";
	   return true;
	}
 }