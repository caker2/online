<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
     <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <title> Sign Up Form</title>

<script src="http://code.jquery.com/jquery-1.10.2.js"
    type="text/javascript"></script>
<script  src="javascript/fromValidation.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="style.css">
<head>
<title>Online Shopping - HOME</title>
<style>
td
{
text-align:center
}
</style>
<style type="text/css">
 #box{
width:18px;
height:18px;
background:#BA84AC;
position:absolute;
left:1844px;
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
left:1877px;
top:0px;
z-index:9999; 
border-radius:10px;
color:white;
}.HeartAnimation {
  padding-top: 2em;
  background-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/66955/web_heart_animation.png');
	background-repeat: no-repeat;
	background-size: 2900%;
  background-position: left;
	height: 70px;
	width: 70px;
  margin: 0 auto;
  cursor: pointer;
}

.animate {
  animation: heart-burst .2s steps(28) forwards;
}

@keyframes heart-burst {
	0% {
		background-position: left
	}
	100% {
		background-position: right
	}
} 
    
    
    .navbar {
    position: relative;
}
.brand {
    position: absolute;
    left: 50%;
    margin-left: -50px !important;  /* 50% of your logo width */
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
 background: url(menu_assets/images/good3.png) no-repeat;
 background-size: none;
 margin-left: 0%;
}


  .alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
}
input[type=submit]{
  background-color: white;
  border: none;
  color: white;
  padding: 2px 8px;
  text-decoration: none;
  margin: 2px 1px;
  cursor: pointer;
  outline:none;
}
*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    font-family: sans-serif;
}
.image-margin {
		margin-left: 10px;
	}
 *{
margin: 0;
padding: 0;
font-family:sans-serif;
}
.hero{
height: 800px;
background: url(${pageContext.request.contextPath}/menu_assets/images/tlo.png) no-repeat;

 margin-left: 0%;
}
.form-box{
width:380px;
height:600px;
position:relative;
margin:6% auto;
background:#fff;
padding:5px;
overflow:hidden;
outline:none;
}
.button-box{
width:280px;
margin:35px auto;
position:relative;
box-shadow: 0 0 20px 10px #bd83a9;
border-radius:30px;
outline:none;
}
.toggle-btn{
padding: 5px 30px;
cursor: pointer;
background:transparent;
border:0;
outline:none;
position:relative;
outline:none;
}
#btn{
top:0;
left:0;
right:0;
position:absolute;
width:170px;
height:100%;
background:linear-gradient(to right,#ff105f,#d106ff);
border-radius:30px;
transition:.5s;
outline:none;
}
.social-icons{
	margin: 30px auto;
	text-align:center;
}
.social-icons img{
	width: 30px;
	margin:0 12px;
	box-shadow:0 0 20px 0 #7f7f7f3d;
	cursor: pointer;
	border-radius:50%;
}
.input-group{
top:180px;
position:absolute;
width:280px;
transition:.5s;
outline:none;
}
.input-field{
width:100%;
padding:10px 0;
margin: 5px 0;
border-left:0;
border-top:0;
border-right:0;
border-bottom:1px solid #999;
outline:none;
background:transparent;
outline:none;
}
.submit-btn{
width:85%;
padding:10px 30px;
cursor:pointer;
display:block;
margin:auto;
background:linear-gradient(to right,#ff105f,#d106ff);
border:0;
outline:none;
border-radius:30px;
outline:none;
}
.check-box{
margin:30px 10px 30px 0;
}
spank{
color:#777;;
font-size:12px;
bottom:68px;
position:absolute;
outline:none;
}
#login{
left:50px;
outline:none;
}
#register{
left: 450px;
outline:none;
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

</style>
</head>
<body style="margin:0;">
    <div class="hero">
 <center>
     <tr>
         
      <nav class="navbar navbar-expand-sm bg-white navbar-dark py-1">
         
            <% HttpSession sess=request.getSession(true); %>
            <% String username=(String)sess.getAttribute("user"); %>
            <% if(sess.getAttribute("user")==null) {			%>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="logincust.jsp"><span style="color:black"><i class="fa fa-fw fa-user"></i></span></a>
            </li>
			<li class="nav-item">
                <a class="nav-link" href="Cart.jsp"><span style="color:black"><i class="fa fa-shopping-cart "></i></span></a>
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
                    <a class="dropdown-item" href="shirts.jsp">T-shirts</a>
                    <a class="dropdown-item" href="hoody.jsp">Bluzy</a>
                    <a class="dropdown-item" href="longslev.jsp">Longsleeve</a>
                    <a class="dropdown-item" href="hats.jsp">Czapki</a>
                    <a class="dropdown-item" href="access.jsp">Akcesoria</a>
                    </div>
            </li>
            <a class="brand" style="margin: 0; float: none; text-align:center" href="index.jsp">
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
                <a class="nav-link" href="logout.jsp"><span style="color:black"><i class="fa fa-user-check"></i></span></a>  
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Cart.jsp"><span style="color:black"><i class="fa fa-shopping-cart "></i></span></a>
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
                    <a class="dropdown-item" href="shirts.jsp">T-shirts</a>
                    <a class="dropdown-item" href="hoody.jsp">Bluzy</a>
                    <a class="dropdown-item" href="longslev.jsp">Longsleeve</a>
                    <a class="dropdown-item" href="hats.jsp">Czapki</a>
                    <a class="dropdown-item" href="access.jsp">Akcesoria</a>
                    </div>
            </li>
            <a class="brand" style="margin:0; float: none; text-align:center" href="index.jsp">
            <img src="${pageContext.request.contextPath}/menu_assets/images/text.png" />
            </a>
        </ul>
       </div>
            <%}%>
            
</nav> 
	<div class="form-box">
		<div class="button-box">
			<div id="btn"></div>
			<button type="button" class="toggle-btn" onclick="login()" style= "outline:none;float: left" >Logowanie</button>
			<button type="button" class="toggle-btn"onclick="register()" style="outline:none">Rejestracja</button>
		</div>
                <div class="social-icons">
			<img src="${pageContext.request.contextPath}/menu_assets/images/fb.png">
			<img src="${pageContext.request.contextPath}/menu_assets/images/tw.png">
			<img src="${pageContext.request.contextPath}/menu_assets/images/gp.png">
		</div>
                <form  id="login" class="input-group" action="LoginServlet" method="POST">
			<input type="text" class="input-field" placeholder="Login" id="user" name="user" required><br>
			<input type="password" class="input-field" placeholder="Hasło" name="password" required><br>
			<input type="checkbox" class="check-box"><spank>Zapamiętaj hasło</spank>
			<button type="submit" class="submit-btn" value="Login" id="login">Zaloguj</button>
		</form>	
		<form name="SignUp" id="register" class="input-group" action="SignUpServlet" onsubmit="return validateForm();" method="post">
                    <input type="text" class="input-field" placeholder="Imię i Nazwisko" id="name" name="name" onkeyup="allowAlphabet()" required><br>
			<input type="text" class="input-field" placeholder="Adres" name="address"><br>
			<input type="text" class="input-field" placeholder="Numer telefonu" id="mobilenumber" name="mobilenumber" onkeyup="allowNumeric()"required><br>
			<input type="text" class="input-field" placeholder="Login" id="username" name="username"required><br>
			<input type="password" class="input-field" placeholder="Hasło" name="password"required><br>
                        <input type="checkbox" class="check-box"required><spank>Akceptuję <a href="dupa.jsp">regulamin</a></spank>
			<button type="submit" class="submit-btn" value="SignUp" id="register">Zarejestruj</button>
		</form>	
        </div>
                </div>
   
<script>
var x=document.getElementById("login");
var y=document.getElementById("register");
var z=document.getElementById("btn");
function register(){
x.style.left="480px";
y.style.left="50px";
z.style.left="110px";
}
function login(){
x.style.left="50px";
y.style.left="450px";
z.style.left="0px";

}
</script>
<footer Style="position: absolute; top:800px;">
       
       <div class="container-footer-all">
        
            <div class="container-body">

                <div class="colum1">
                    <h1>Informacje o nas</h1>

                    <p>Nasza firma zajmuje się sprzedażą ubrań oraz akcesoriów 
                       na Rock Music Festival. 
                       Chcesz poczuć przynależność? Chcesz nosić ubrania
                       doskonałej jakości?
                       ZAPRASZAMY!
                     
                    </p>

                </div>

                <div class="colum2">

                    <h1>Obserwuj nas na</h1>

                    <div class="row">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/facebook.png">
                        <label>Facebook</label>
                    </div>
                    <div class="row">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/twitter.png">
                        <label>Twitter</label>
                    </div>
                    <div class="row">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/instagram.png">
                        <label>Instagram</label>
                    </div>
                    <div class="row">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/google-plus.png">
                        <label>Google Plus</label>
                    </div>
                    <div class="row">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/pinterest.png">
                        <label>Pinterest</label>
                    </div>


                </div>

                <div class="colum3">

                    <h1>Informacje kontaktowe</h1>

                    <div class="row2">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/house.png">
                        <label>
                            ul. Kosmiczna 3/12
                            51-500, Warszawa
                        </label>
                    </div>

                    <div class="row2">
                        <img src="${pageContext.request.contextPath}/menu_assets/images/smartphone.png">
                        <label>+1-829-395-2064</label>
                    </div>

                </div>

            </div>
        
        </div>
        
        <div class="container-footer">
               <div class="footer">
                    <div class="copyright">
                        © 2020 All rights reserved. | <a href="">RMF</a>
                    </div>

                    <div class="information">
                        <a href="">Informacje</a> | <a href="">Polityka Prywatności i Regulamin</a> | <a href="">Zasady i Warunki</a>
                    </div>
                </div>

            </div>
        
    </footer>


</body>
</html>  
  
   