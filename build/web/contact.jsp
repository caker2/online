
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

input {
  width: 100%;
}
 body {
 background: url(menu_assets/images/contact_1.png) no-repeat;
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

input[type=text], input[type=submit] {
  padding: 5px;
  margin: 5px 0;
  display: inline-block;
  border: 2px solid #b87cc5;
  box-sizing: border-box;
}

input[type=checkbox] {
  margin-top: 16px;
}

input[type=submit] {
   display: inline-block;
  background: #9b59b6;
  padding: 14px 0;
  color: white;
  text-transform: uppercase;
  cursor: pointer;
  margin-top: 8px;
  width: 100%;
}

input[type=submit]:hover {
  opacity: 0.8;
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
.contact-form{
    margin-top: 40px;
    margin-bottom: 40px;
  width: 85%;
  max-width: 600px;
  background: #f1f1f1;
  
  padding: 30px 40px;
  box-sizing: border-box;
  border-radius: 8px;
  text-align: center;
  box-shadow: 0 0 20px #000000b3;
  font-family: "Montserrat",sans-serif;
}
.contact-form h1{
  margin-top: 0;
  font-weight: 200;
}
.txtb{
  border:1px solid gray;
  margin: 8px 0;
  padding: 12px 18px;
  border-radius: 8px;
}
.txtb label{
  display: block;
  text-align: left;
  color: #333;
  text-transform: uppercase;
  font-size: 14px;
}
.txtb input,.txtb textarea{
  width: 100%;
  border: none;
  background: none;
  outline: none;
  font-size: 18px;
  margin-top: 6px;
}
.btn{
  display: inline-block;
  background: #9b59b6;
  padding: 14px 0;
  color: white;
  text-transform: uppercase;
  cursor: pointer;
  margin-top: 8px;
  width: 100%;
}
.image{
    display:block;
    float: bottom;
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
            <a class="brand" style="margin: 0; float: none; text-align:center" href="${pageContext.request.contextPath}/index.jsp">
  <img src="${pageContext.request.contextPath}/menu_assets/images/text.png" />
</a>
        </ul>
       </div>
            <%}%>
            
</nav> 
     </tr>
  <div align="center">
 <div class='cssmenu'>
 <div class="strokeme">


   
  <form action="news.jsp">
    <div class="contact-form">
    <h1>SKONTAKTUJ SIĘ Z NAMI</h1>
    <div class="txtb">
      <label>Imię :</label>
      <input type="text" name="name" value="" placeholder="Wpisz imię">
    </div>
    <div class="txtb">
      <label>Nazwisko :</label>
      <input type="text" name="surname" value="" placeholder="Wpisz nazwisko">
    </div>
    <div class="txtb">
      <label>Email :</label>
      <input type="email" name="email" value="" placeholder="Wpisz Email">
    </div>
    <div class="txtb">
      <label>Temat :</label>
      <input type="text" name="temat" value="" placeholder="Wpisz temat">
    </div>
    <div class="txtb">
      <label>Treść :</label>
      <textarea name="tresc"></textarea>
    </div>
    <input type="submit"</a>
  </div>      
  </form>    
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
                        <img src="menu_assets/images/instagram.png">
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
                        <a href="">Informacje</a> | <a href="">Polityka Prywatności i Regulamin</a> | <a href="">Zasady i Warunki</a> | <a href="">Kontakt</a>
                    </div>
                </div>

            </div>
        
    </footer>
    
</form>   
</body>
</html>
