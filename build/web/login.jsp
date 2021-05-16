

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}
</script>
<style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	background: #000000 url(menu_assets/images/bg-bubplastic.gif) top left repeat-x;
}
.cssmenu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
.cssmenu ul li {
	float: left;
	margin: 0;
	padding: 0;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top left no-repeat;
}

.cssmenu ul li a {
	display: block;
	height: 27px;
	padding-left: 35px;
	float: left;
	text-transform: uppercase;
	font-family: 'Helvetica Neue',helvetica,'microsoft sans serif',arial,sans-serif;
	font-size: 70%;
	color: #FFFFFF;
	text-decoration: none;
}

.cssmenu ul li a span {
	display: block;
	float: left;
	height: 22px;
	padding-top: 5px;
	padding-right: 35px;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top right no-repeat;
	cursor: pointer;
}


.cssmenu ul li a:hover,
.cssmenu ul li.active a {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top left no-repeat;
}
.cssmenu ul li a:hover span,
.cssmenu ul li.active a span {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top right no-repeat;
}

</style>
<div align="center">
 <div class='cssmenu'>

</div>
<form name="form" method="post" action="check.jsp" onsubmit="javascript:return validate();">
    
<div align="left">
<h1>ADMIN</h1>
<table>
<tr><td bgcolor="#FF9900">Login:</td><td bgcolor="#33CCCC"><input type="text" name="user"></td></tr>
<tr><td bgcolor="#FF9900">Hasło:</td><td bgcolor="#33CCCC"><input type="password" name="pass"></td></tr>
<tr><td></td><td><input type="submit" value="Submit"></td></tr>
</table>
</div>
</form>
</html>