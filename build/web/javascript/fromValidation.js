/**
 SignUp From validation for user registration. 
 */


/* Function for allowing to enter only alphabet*/
       
function allowAlphabet()
{
	if (!SignUp.name.value.match(/^[a-zA-Z]+$/) && SignUp.name.value !="")
	{
		SignUp.name.value="";
		SignUp.name.focus();
		alert("Prosze uzywać tylko liter");
	}
}

/* Function for allowing to enter only number*/

function allowNumeric()
{
	if (!SignUp.mobilenumber.value.match(/^[0-9]+$/) && SignUp.mobilenumber.value !="")
	{
		SignUp.mobilenumber.value="";
		SignUp.mobilenumber.focus();
		alert("Proszę używać tylko liczb");
	}
}


function validateForm()
{
	var fname = document.forms["SignUp"]["name"].value.trim();
	var address = document.forms["SignUp"]["address"].value.trim();
	var mnumber=document.forms["SignUp"]["mobilenumber"].value.trim();
	var uname = document.forms["SignUp"]["username"].value.trim();
	var pwd=document.forms["SignUp"]["password"].value.trim();
	
	if(fname==null || fname=="")
	{
		alert("Imię oraz nazwisko musi być wypełnione!");
		return false;
		
	}
	
	else if(address==null || address=="")
	{
		alert("Adres musi być wypełniony!");
		return false;
		
	}
	else if(mnumber==null || mnumber=="")
	{
		alert("Numer telefonu musi być wypełniony!");
		return false;
		
	}
	else if(uname==null || uname=="")
	{
		alert("Login musi być wypełniony!");
		return false;
		
	}
	else if(pwd==null || pwd=="")
	{
		alert("Hasło musi być wypełnione!");
		return false;
		
	}
	

}


$(document).ready(function() {
	$('#username').blur(function() {
    	
		var username = $("#username").val();
		
		if(username != null || username!= ""){
	    $.ajax({
	             url: 'SignUpServlet',
	             type:'POST',
	             data: {reuqestType:"ajaxUserValidation", userName: username},
	             dataType: "text",
	             error: function(){
	            	  alert("Error!"); 
	             },
	             success: function(results){
	            	
	            	 if(results == "true"){
	            		
	            		 SignUp.username.value="";
	            		 SignUp.username.focus();
	            		 
	            		 alert("Nazwa użytkownika jest już zajęta!");
	            		
	            	 }
	             } 
	           }); 
		}
    });
}); 
