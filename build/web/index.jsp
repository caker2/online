
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>

<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../css/index.css" rel="stylesheet" type="text/css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

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
}html, body {
    max-width: 100%;
    overflow-x: hidden;
}
  .navbar-nav > li > a {padding-top:2px !important; padding-bottom:2px !important;}
.navbar {min-height:25px !important}  
ul li a:hover {
 background-color: purple;
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

div {border-bottom-color: coral;}


h2{
     font-family: AXIS extra bold;
     font-size: 50px;
     color:white;
    background-color:  #99278a;
  height: 80px;
   form {
  border: 3px solid #f1f1f1;
  font-family: Arial;
} 
}
.container {
  background-color: #f1f1f1;
  width: 500px;
}
input[type=image]{
  outline:none;  
    
}
input[type=text], input[type=submit] {
  padding: 5px;
  margin: 5px 0;
  display: inline-block;
  border: 2px solid #b87cc5;
  box-sizing: border-box;
  outline:none;
}

input[type=checkbox] {
  margin-top: 16px;
  outline:none;
}
.fa-arrow-circle-right{
    color:black;
}
button[type=submit] {
   background:black;
border:0;
width:40px;
height:40px;
border-radius:50%;
position:absolute;
right:10px;
top:10px;
outline:none;
cursor:pointer;
color:white;
transition:0.3s linear;
margin-left: 250px;
margin-top: 5857px;
margin-right: 500px;
}

input[type=submit]:hover {
  opacity: 0.8;
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
body1{
  margin: 0;
  padding: 0;
  background: url(bg.jfif);
  background-size: cover;
}

.image{
    display:block;
    float: bottom;
    outline:none;
}
.news{
   background: url('menu_assets/images/newsletter.png') no-repeat center; 
   background-size:cover;
   padding:100px 40px;
}

.txtb{
 width:50%;
 height:60px;
 background:#574b90;
 border-radius:40px;
 position:relative;
 margin-top:40px;
 top:30px;
 color:white;
}
.txtb input{
width:100%;
height:60px;
border-radius:40px;
border:0;
background:none;
padding:0 30px;
outline:none;
padding-right:80px;
color:white;
}


::-webkit-input-placeholder { /* Edge */
  color:#c6e2ff;
}
</style>
</head>
<body style="margin:0;">
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
        </ul>
       </div>
            <%}%>
            
</nav> 
     </tr>
  <div align="center">
 <div class='cssmenu'>
 <div class="strokeme">

 <div align="center" STYLE="font-size:0">
 <img STYLE="position:relative; TOP:100px; LEFT:50px; outline:none" src="menu_assets/images/logo.png" alt="logo">
 
   <form action="shirts.jsp" method="GET">
   <input style="width:100%" type="image" src=menu_assets/images/34.png alt="HTML5 Icon"/>
   </form>
   <form action="hoody.jsp" method="GET">
   <input style="width:100%"type="image" src=menu_assets/images/22.png alt="HTML5 Icon"/>
   </form>
   <form action="longslev.jsp" method="GET">
   <input style="width:100%"type="image" src=menu_assets/images/333.png alt="HTML5 Icon"/>
   </form>
   <form action="hats.jsp" method="GET">
   <input style="width:100%"type="image" src=menu_assets/images/4455.png alt="HTML5 Icon"/>
   </form>
   <form action="access.jsp" method="GET">
   <input style="width:100%"type="image" src=menu_assets/images/55.png alt="HTML5 Icon"/>
   </form>
  </table>
  </form>  
</div>  
     
     <form action="newsletter.jsp" method="get">
     <div class="news">
    <div class="txtb">
     <input type="text" name="email" value="" placeholder="Wpisz swój email">
    </div>
         <button type="submit">
    <i class="fas fa-arrow-right"></i>
</button>
       </div>
         </form>
          </div>
</div>
      </body>
     <footer>
       
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
                        <img src="menu_assets/images/facebook.png">
                        <label>Facebook</label>
                    </div>
                    <div class="row">
                        <img src="menu_assets/images/twitter.png">
                        <label>Twitter</label>
                    </div>
                    <div class="row">
                        <form action="http://www.google.com" method="GET">
                            <input type="image" width="37" height="37" src="menu_assets/images/instagram.png"></form>
                        <label>Instagram</label>
                    </div>
                    <div class="row">
                        <img src="menu_assets/images/google-plus.png">
                        <label>Google Plus</label>
                    </div>
                    <div class="row">
                        <img src="menu_assets/images/pinterest.png">
                        <label>Pinterest</label>
                    </div>


                </div>

                <div class="colum3">

                    <h1>Informacje kontaktowe</h1>

                    <div class="row2">
                        <img src="menu_assets/images/house.png">
                        <label>
                            ul. Kosmiczna 3/12
                            51-500, Warszawa
                        </label>
                    </div>

                    <div class="row2">
                        <img src="menu_assets/images/smartphone.png">
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
                        <a href="">Informacje</a> | <a href="SignUp.jsp">Polityka Prywatności i Regulamin</a> | <a href="">Zasady i Warunki</a> | <a href="contact.jsp">Kontakt</a> |  <a href="login.jsp">Admin</a>
                    </div>
                </div>

            </div>
        
    </footer>
    
</form>   
</body>
</html>
