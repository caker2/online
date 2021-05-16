<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.strokeme {
  color: white;
  text-shadow: -1.4px -1.4px 0 #000, 1.4px -1.4px 0 #000, -1.4px 1.4px 0 #000, 1.4px 1.4px 0 #000;
}
    
 .right {	text-align: right;
}
.container {
position: relative;
width: 300px;
height: 300px;
display: inline-block;
}
.image {
display: block;
width: 300px;
height: 300px;
}
.overlay {
position: absolute;
transition: all .3s ease;
opacity: 0;
background-color: #eee;
pointer-events: none;
}
.container:hover .overlay {
opacity: 1;
}
.text {
color: white;
font-family: sans-serif;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
font-size: 20px;
}
.overlayFade {
height: 100%;
width: 100%;
top: 0;
left: 0;
background-color: #00b1bab3;
}
.container:hover .overlayLeft {
width: 100%;
}
    
    
html, body {
    max-width: 100%;
    overflow-x: hidden;
}

 h1 { 
  display: block;
  font-size: 2em;
  margin-top: 4.67em;
  margin-bottom: 0.67em;
  margin-left: 0;
  margin-right: 0;
  font-weight: bold;
}
  
 body {
 background: url(menu_assets/images/good2.png) no-repeat;
 background-size: none;
 margin-left: 0%;
}

ul {
 margin: 0px;
 padding: 0px;
 list-style: none;
 font-family: AXIS Extra Bold;
}

ul li {
 float: left;
 width: 190px;
 height: 40px;
 background-color: white;
 opacity: .9;
 line-height: 40px;
 text-align: center;
 font-size: 30px;
}

ul li a {
 text-decoration: none;
 color: white;
 display: block;
}

ul li a:hover {
 background-color: pink;
}

ul li ul li{
 display: none;
}

ul li:hover ul li {
 display: block;
}
</style>
</head>

<body>
<table width="1300" height="102" border="0">
     <tr>
       <td width="10" height="2"><img src="menu_assets/images/home.png" width="100" height="88" alt="Logo" /></td>
       <td width="2200" class="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="index.jsp">Home</a> |
<% if(session.getAttribute("ULOGIN")==null) {
			%>
         <a href="logincustt.jsp">Login</a>
         <%} else {
				%>
         <a href="logout.jsp">Logout</a>
         <%}%></td>
    </tr>
  </table>
   <body>
  <div align="center">
 <div class='cssmenu'>
 <div class="strokeme">
<ul>
    
   <li class='active strokeme'>
   <li><a>Menu</a>
       <ul>
           <li><a href='shirts.jsp'><span>T-shirt</span></a></li>
           <li><a href='longslev.jsp'><span>Longsleeve</span></a></li>
           <li><a href='hoody.jsp'><span>Bluzy</span></a></li>
           <li><a href='hats.jsp'><span>Czapki</span></a></li>
           <li><a href='access.jsp'><span>Akcesoria</span></a></li>
       </ul>
   </li>
   
   <li><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='login.jsp'><span>Admin</span></a></li>
   <li><a href='index.jsp'><span>About</span></a></li>
   <li><a href='register.jsp'><span>Register</span></a></li>
   <li><a href='#'><span>Contact</span></a></li>
</ul>
</div> 
 </div>
     </div>
<hr />
<p><strong>Username or Password Incorrect!</strong> Click <a href="register.jsp"><strong>here</strong></a> to register.</p>
<center> 
<form action="logincustt.jsp" method="post">
  <p>&nbsp;</p>
  <table width="1"> 
  <tr> 
<td colspan="2" class="italics"> User Login </td> 
</Tr> 
<tr> 
<td> Username: </td> 
<td> <input type="text" name="id"> </td> 
</Tr> 
<tr> 
<td> Password: </td> 
<td> <input type="password" name="password"> </td> 
</Tr> 
<tr> 
<td> <input type="submit" value="Log In"> </td> 
<td><input type="reset" value="Clear"> </td> 
</Tr> 
</Table>
  <p>&nbsp;</p>
  <p>&nbsp;</p> 
</Form> 

</Center></p>
</body>
</html>
