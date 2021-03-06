<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.example.model.Product" %>
<%@ page import="com.controller.number" %>
<%@ page import="java.util.*" %>    
<%@ page import="com.example.model.Heart" %>
<%@ page import="com.example.service.factory.HeartFactory" %>
<%@ page import="javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
     <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="js/query.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<head>
<title>Online Shopping - HOME</title>
<style>
td
{
text-align:center
}
</style>
<style type="text/css">
html, body {
    max-width: 100%;
     overflow-y: auto;
   overflow-x: hidden; 
}
    .navbar {
    position: relative;
}
.brand {
    position: absolute;
    left: 50%;
    margin-left: -50px !important;
    display: block;
}
    
    
    .container {
position: relative;
width: 300px;
height: 280px;
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
     height: auto;
    
}
  .navbar-nav > li > a {padding-top:2px !important; padding-bottom:2px !important;}
.navbar {min-height:25px !important}  
ul li a:hover {
 background-color: purple;
}  

input {
  width: 100%;
}
 body {
 background: url(${pageContext.request.contextPath}/menu_assets/images/good3.png) no-repeat;
 margin-left: 0%;
position:absolute;
 
}


  .alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
}


  .alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
}
.image-margin {
		margin-left: 10px;
	}
        .sub{
         background-color: black;
  border: none;
  color: white;
  padding: 16px 90px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.7s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
        }
        .sub:hover {background-color: #9433b5}
        
        .badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}

.label-warning[href],
.badge-warning[href] {
  background-color: #c67605;
}
#lblCartCount {
    font-size: 12px;
    background: #ff0000;
    color: #fff;
    padding: 0 5px;
    vertical-align: top;
    margin-left: -10px; 
}
h1{
    font-family: AXIS Extra Bold;
    
    
}


body{
	position: relative;
}

.header-top{
	background: #d9e1e6;
	height: 30px;
    width: 100%;
}

.header-top p{
	text-align:center;
	color: #99a1a6;
	text-transform: uppercase;
	padding-top: 7px;
	font-size: 60%;
}


.header-bottom h1{
	position: relative;
	text-align: center;
	width: 100%;
	font-size: 2.5em;
	font-weight: 700;
	margin-top: 26px;
}

.header-bottom ul{
	display: inline-block;
	float: left;
	margin-top: 44px;
}

.header-bottom button{
    display: block;
	height: 44px;
	width: 126px;
    margin-top: 10px;
    margin: 0 auto;
	background: none;
	border-color: #ded3aa;
	border-style: solid;
	font-weight: bold;
    
}

.header-bottom{
	width: 80%;
	margin: 0 auto;	
	height: 100px;
}

.header-bottom ul li a{
	text-decoration: none;
	color: #000;
}

.header-bottom ul li a span{
	color: #7E7D7D;	
}

#usd{
	list-style-image: url(img/USAFLAG.png);
}

nav{
    background: #999;;
}

#menu{
    padding: 22px;
	width: 20px;
	float: left;
}

.nav ul{
	margin: 0;
    width: 100%;

}
.nav ul li {
	width: 100%;
	height: 64px;
	text-align:center;
    list-style: none;
    border-bottom: 1px solid #888;

}

.nav ul li a{
    display: block;
	text-decoration: none;
	font-size: 1.8em;	
	width: 100%;
	box-sizing: border-box;
    padding-top: 15px;
    height: 44px;
    
}

.nav ul li a:hover{
	background:	#e1e1e1;
}

.nav ul{
	text-align:center;
}

#magnify, #heart {
    display: none;
}

button, img{
    cursor: pointer;
}

.wrapper{
	width: 100%;
	display: table;
	content: "";
	clear: both;
        position:relative;
}

.content-left{
	width: 100%;
    content: "";
    display: table;
    clear: both;
}

.content-right{
    width: 100%;
    display: block;
    margin-top: 10px;
}

.top-left{
	width: 100%;
	margin-bottom: 2%;
}

.top-left img{
	width: 100%;	
}

.bottom-left{
    display: table;
	width: 100%;
}

.bottom-left img{
	display: inline-block;
	width: 47%;
	float: left;
	margin-right: 6%;
    margin-bottom: 6%;
}

.bottom-left img:nth-child(4){
	margin-right: 0;	
}

.bottom-left img:nth-child(2){
	margin-right: 0;	
}

.right-aboutProduct a:nth-child(1){
	display: none;	
}

.right-aboutProduct h2{
    text-align: center;
	font-size: 2em;
    margin-bottom: 10px;
}

.star-rating{
	display: none;
}

#reviews{
	color: #555;
    text-align: center;
}

#add-review{
	display:none;	
}

#price{
    text-align: center;
	display: block;
	margin: 2% 0 2% 0;
	font-size: 1.9em;	
	color: #68899a;
}
#product-info{
	margin-bottom: 3%;	
}
#product-info li{
	list-style: none;
	font-weight: bold;
}
#product-info span{
	color: #68899a;	
	font-weight: normal;
}
#description{
	color: #6F6F6F;
	margin-bottom: 3%;
	text-align:justify;
}

#product-info-2{
	margin-bottom: 8%;
    list-style: none;
}

form{
    display: table;
	width: 100%;
	margin-bottom: 5%;	
}

#product-info-2 li{
	color: 	#6F6F6F;
}

.colors, .sizes{
	display: block;
	width: 100%;	
}

label{
	display: block;	
}

.quantity{
	width: 100%;	
}

#colors, #sizes, #quantity{
	width: 100%;	
	height: 35px;
	margin-top: 10px;
}
.right-search{
	width: 100%;	
}

#quantity{
    width: 98.5%;
}

#clear-selection{
	display: inline-block;
	margin: 2% 0 5% 0;
	text-transform: uppercase;
	font-weight: bold;
	font-size: 0.8em;
}

.right-buttons{
	width: 100%;	
}

.right-buttons button{
	width: 100%;
    margin-bottom: 10px;
	height: 55px;
	float: left;
	font-weight: bold;
	font-size: 0.7em;
	border: 1px solid #e1e1e1;
}

.right-buttons button:first-child{
	margin-right: 10%;
	background: #000;
	color: #FFF;
	
}

.right-buttons button:nth-child(2){
	background: #FFF;
		
}

.right-social{
	width: 100%;
	display: inline-block;
	margin-top: 10%;
	border-top: 1px solid #e1e1e1;
	border-bottom: 1px solid #e1e1e1;
}

.right-social a{
	display: none;
}

.social-images{
    text-align: center;
	margin: 20px 0 20px 0;
}



@media screen and (min-width: 690px){
    .header-top p{
        font-size: 1.1em;
    }
    .header-bottom h1{
        position: absolute;
        left: 0;
    }
    
    .header-bottom button{
        position: absolute;
        margin-top: 28px;
        right: 5%;
    }
    
    
    nav{
    background: #FFF;
 	border-top: 1px solid #e1e1e1;
	border-bottom: 1px solid #e1e1e1;
	margin-bottom: 48px;
    width: 100%;
    display: table;
    }

    .nav ul, .nav ul li {
        display: inline-block;	
    }

    .nav ul li:first-child{
        display: none;
    }
    
    .nav ul{
        width: 67%;
        height: 69px;
        margin-left: 17.5%;
        float: left;
    }
    
    .nav ul li {
        width: 16%;
        height: 69px;
        float: left;
        border-bottom: none;
    }

    .nav ul li a{
        display: inline-block;
        font-size: 1.2em;	
        height: 69px;
        padding-top: 25px;
    }

    #heart, #magnify{
        display: inline-block;
        float: right;
        font-size: 1.6em;
        margin-top: 18px;
        text-decoration: none;
        white-space:nowrap;
    }

    #magnify{
        padding-right: 20px;
    }

    #heart{
        border-left: 1px dotted #212121;
        padding-left: 20px;
        margin-right: 3%;
    }

    .wrapper{
	width: 100%;
	margin-left: 750px;
	margin-top: 250px;
        background-color:#F3F0F0;
        position:relative;
    }

    .content-left{
        width: 100%;	
    }

    .content-right{
        width: 100%;	
    }

    .top-left{
        display: inline-block;
        width: 71%;
        margin-left: 5%;
        margin-right: 3%; 
        margin-bottom: 2%;
    }

    .top-left img{
        width: 100%;
        height: 508px;
    }

    .bottom-left{
        display: inline-block;
        width: 20%;
    }

    .bottom-left img{
        width: auto;
        height: 119.5px;
        float: left;
        margin-bottom: 10px;
    }

    .bottom-left img:nth-child(4){
        margin-bottom: 0;	
    }

    .colors, .sizes{
        display: inline-block;
        width: 50%;
        margin-right: 5%;
        float:top;
    }

    .quantity{
        width: 20%;	
        float: left;
    }

    .right-search{
        width: 100%;	
    }

    #clear-selection{
        display: inline-block;
        margin: 10% 0 10% 0;
        text-transform: uppercase;
        font-weight: bold;
        font-size: 0.8em;
    }

    .right-buttons button{
        width: 45%;

    }

    .right-buttons button:first-child{
        margin-right: 10%;

    }

    .right-social a{
        display: inline-block;	
        font-weight: bold;
        font-size: 0.9em;
        text-decoration: none;
        float: left;
        margin: 20px 0 20px 0;
    }

    .social-images{
        float: right;
    }
  

}

@media screen and (min-width: 900px){
       
    .top-left img{
        height: 578px;
    }
    
    .bottom-left img{
        height: 137px;
    }
}

@media screen and (min-width: 1060px){
    

    .content-left{
        margin-right: 3%;
        float: left;
        width: 60%;	
    }

    .content-right{
        width: 34%;
        margin-left: 3%;
        float: left;	
       
    }

    .top-left{
        margin-left: 0;
        width: 100%;
        margin-bottom: 2%;
    }

    .top-left img{
        width: 100%;
        height: auto;
        float: left;
    }

    .bottom-left{
        width: 100%;
    }

    .bottom-left img{
        display: inline-block;
        width: 23.5%;
        height: auto;
        float: left;
        margin-right: 2%;
        margin-bottom: 0;
    }

    .bottom-left img:nth-child(4){
        margin-right: 0;	
    }
    
    .right-aboutProduct a:nth-child(1){
        display: block;
        text-decoration: none;	
    }

    .right-aboutProduct a:nth-child(1) span{
        color: #68899a
    }

    .right-aboutProduct h2{
        font-size: 1.5em;
        text-align: left;
        margin-top: 45px;	
        margin-bottom: 3%;
    }

    .star-rating, #reviews{
        display: inline-block;	
    }

    #reviews{
        color: #555;
        margin: 0 10px 0 10px;	
    }

    #add-review{
        display: inline-block;
        font-size: 0.7em;
        font-weight: bold;
        text-transform: uppercase;
        border-left: 1px solid #555555;
        padding-left: 10px;	
    }

    #price{
        margin: 8% 0 8% 0;
    }
    
    #product-info{
        margin-bottom: 8%;	
    }
    
    #description{
        margin-bottom: 8%;
    }

    #product-info-2{
        list-style: disc;
        margin-left: 4%;
    }

    .right-social a{
        display: block;
        width: 100%;
        text-align: center;
    }

}

@media screen and (min-width: 1100px){
    .social-images img{
        display: block;
        margin: 0 auto;
    }   
    .social-images{
        display: block;
        margin-right: 30%;
    }
}

@media screen and (min-width: 1366px){
    
    .right-social a{
        font-size: 0.75em;
        display: inline-block;	
        text-align: left;
        width: auto;
        float: left;
        margin: 23px 0 20px 0;
    }
    
      .social-images img{
        display: inline-block;
    } 

    .social-images{
        display: inline-block;
        margin-right: 0;
        margin: 20px 0 20px 0;
    }
}

@media screen and (min-width: 1450px){
    .right-social a{
        margin-top: 20px;
        font-size: .9em;
    }   
}
*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    font-family: sans-serif;
}

footer{
    width: 100%;
    background: #202020;
    color: white;   
     margin-top:1080px ;
    margin-left:-1500px;
}

.container-footer-all{
    width: 100%;
    max-width: 1200px;
    margin: auto;
    padding: 40px;
}

.container-body{
    display: flex;
    justify-content: space-between;
}

.colum1{
    max-width: 400px;
}

.colum1 h1{
    font-size: 22px;
}

.colum1 p{
    font-size: 14px;
    color: #C7C7C7;
    margin-top: 20px;
}

.colum2{
    max-width: 400px;
    
}

.colum2 h1{
    font-size: 22px;
}

.row{
    margin-top: 20px;
    display: flex;
}

.row img{
    width: 36px;
    height: 36px;
}

.row label{
    margin-top: 10px;
    margin-left: 20px;
    color: #C7C7C7;
}

.colum3{
    max-width: 400px;
}

.colum3 h1{
    font-size: 22px;
}

.row2{
    margin-top: 20px;
    display: flex;
}

.row2 img{
    width: 36px;
    height: 36px;
}

.row2 label{
    margin-top: 10px;
    margin-left: 20px;
    max-width: 140px;
}

.container-footer{
    width: 100%;  
    background: #101010;
}

.footer{
    max-width: 1200px;
    margin: auto;
    display: flex;
    justify-content: space-between;  
    padding: 20px;
}

.copyright{
    color: #C7C7C7;
}

.copyright a{
    text-decoration: none;
    color: white;
    font-weight: bold;
}

.information a{
    text-decoration: none;
    color: #C7C7C7;
}


@media screen and (max-width: 1100px){
    
    .container-body{
        flex-wrap: wrap;
    }
    
    .colum1{
        max-width: 100%;
    }
    
    .colum2,
    .colum3{
        margin-top: 40px;
    }
}
#box{
width:18px;
height:18px;
background:#BA84AC;
position:absolute;
left:1290px;
top:0px;
z-index:9999; 
border-radius:10px;
color:white;
}
#box2{
width:18px;
height:18px;
background:#BA84AC;
position:absolute;
left:1323px;
top:0px;
z-index:9999; 
border-radius:10px;
color:white;
}
#number{
    text-align:center;
}
h1{
text-align:center;
 font-family: AXIS extra bold;
 font-size:30px;
}
</style>
</head>
<body style="margin:0;">
 <center>
     <tr>
        
      <nav class="navbar navbar-expand-sm bg-white navbar-dark py-1">
         
            <% HttpSession sess=request.getSession(true); %>
            <%String uid=request.getParameter("uid");%>
            <% String username=(String)sess.getAttribute("user"); %>
            <% if(sess.getAttribute("user")==null) {			%>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/logincust.jsp"><span style="color:black"><i class="fa fa-fw fa-user"></i></span></a>
            </li>
			<li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/Cart.jsp"><span style="color:black"><i class="fa fa-shopping-cart "></i></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="heart.jsp"><span style="color:black"><i class="fa fa-heart"></i></span></a>
            </li>  
		</ul>
		</div>
        
		<div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
        <ul class="navbar-nav mr-auto">
             <li class="nav-item dropdown">
                 <a class="nav-link dropdown-toggle"<span style="color:black" href="#" id="navbardrop" data-toggle="dropdown"></span><span style="color:black"><i class="fa fa-bars"></i></span>
                </a>
                    <div class="dropdown-menu">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/shirts.jsp">T-shirts</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/hoody.jsp">Bluzy</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/longslev.jsp">Longsleeve</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/hats.jsp">Czapki</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/access.jsp">Akcesoria</a>
                     <a class="dropdown-item" href="${pageContext.request.contextPath}/delete.jsp">test</a>
                    </div>
            </li>
            <a class="brand" style="margin: 0; float: none; text-align:center" href="${pageContext.request.contextPath}/index.jsp">
  <img src="${pageContext.request.contextPath}/menu_assets/images/text.png" />
</a>
        </ul>
       </div>
         <%} else {
				%>
                                 <%

try{  //Registering the Driver
      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      //Getting the connection
      String mysqlUrl = "jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC";
      Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
      //Creating a Statement object
      Statement stmt = con.createStatement();
      
      //Retrieving the data
      ResultSet rs = stmt.executeQuery("select count(*) from cart  WHERE uid=" + session.getAttribute("id"));
		
      if(rs.next()){
       }
      %>
    <div id="box"><p id="number"</p><%=rs.getInt("count(*)")%></div>
 
        
    <%
        }
    catch(Exception ex) {
        System.out.println("------------------Tablerize.getRowCount-----------------");
        System.out.println("Cannot get resultSet row count: " + ex);
        System.out.println("--------------------------------------------------------");
        
    }
%>
<%
try{  //Registering the Driver
      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      //Getting the connection
      String mysqlUrl = "jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC";
      Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
      //Creating a Statement object
      Statement stmt = con.createStatement();
      
      //Retrieving the data
      ResultSet rs = stmt.executeQuery("select count(*) from heart  WHERE uid=" + session.getAttribute("id"));
		
      if(rs.next()){
       }
      %>
    <div id="box2"><p id="number"</p><%=rs.getInt("count(*)")%></div>
 
        
    <%
        }
    catch(Exception ex) {
        System.out.println("------------------Tablerize.getRowCount-----------------");
        System.out.println("Cannot get resultSet row count: " + ex);
        System.out.println("--------------------------------------------------------");
        
    }
%>
				<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
			<ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/logout.jsp"><span style="color:black"><i class="fa fa-user-check"></i></span></a>  
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/Cart.jsp"><span style="color:black"><i class="fa fa-shopping-cart "></i></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/heart.jsp"><span style="color:black"><i class="fa fa-heart"></i></span></a>
            </li>  
            </ul>
        </div>
         <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
        <ul class="navbar-nav mr-auto">
             <li class="nav-item dropdown">
                 <a class="nav-link dropdown-toggle"<span style="color:black" href="#" id="navbardrop" data-toggle="dropdown"></span><span style="color:black"><i class="fa fa-bars"></i></span>
                </a>
                    <div class="dropdown-menu">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/shirts.jsp">T-shirts</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/hoody.jsp">Bluzy</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/longslev.jsp">Longsleeve</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/hats.jsp">Czapki</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/access.jsp">Akcesoria</a>
                    </div>
            </li>
            <a class="brand" style="margin: 0; float: none; text-align:center" href="${pageContext.request.contextPath}/index.jsp">
  <img src="${pageContext.request.contextPath}/menu_assets/images/text.png" />
</a>
        </ul>
       </div>
            <%}%>
            
</nav> 
  <img src="${pageContext.request.contextPath}/menu_assets/images/goodbye1.png" />
  <h1>
<% if(sess.getAttribute("user")!=null) {
	session.invalidate();
	out.println("Wylogowano. Je??li chcesz si?? zalogowa?? kliknij.");
	%>
     <a href="logincust.jsp
">tutaj</a>.</h1>
   
    
<%
}
else
{%>
Zosta??e?? ju?? wylogowany. 
Kliknij <a href="logincust.jsp">tutaj</a> aby si?? zalogowa??.
<%}%>
</body>
</html>