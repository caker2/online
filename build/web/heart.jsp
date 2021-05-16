<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*" %>   
<%@ page import="com.example.model.Heart" %>
<%@ page import="com.controller.delete" %>
<%@ page import="com.example.service.factory.HeartFactory" %>
<%@ page import="javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 
  background-color: black;
  border: none;
  color: white;
  padding: 20px 20px;
  text-align: center;
  font-size: 20px;
  margin: 0px 0px;
  transition: 0.7s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  width:100%;
  border-radius: 0px;

}
.btn:hover {background-color: #aaecf0}
.image{
    display:block;
    float: bottom;
}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
  margin-top:500px ;
    margin-left:-100px;
}

#customers td, #customers th {
  border: 2px solid #ddd;
  padding: 15px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 25px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #CC8899;
  color: white;
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
  width:50%;
        }
        .sub:hover {background-color: #9433b5}
        .subl{
         background-color: black;
  border: none;
  color: white;
  padding: 20px 20px;
  text-align: center;
  font-size: 20px;
  margin: 4px 4px;
  transition: 0.7s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  width:100%;}
 .subl:hover {background-color: #B33939}
 .brand {
    position: absolute;
    left: 50%;
    margin-left: -50px !important;  /* 50% of your logo width */
    display: block;
}
    
</style>
</head>
<body style="margin:0;">
 <center>
     <tr>
         
     <nav class="navbar navbar-expand-sm bg-white navbar-dark py-1">
         
            <% HttpSession sess=request.getSession(true); %>
            <% String username=(String)sess.getAttribute("user"); %>
            <% Integer uid =(Integer)sess.getAttribute("id"); %>
             <% Integer pid =(Integer)sess.getAttribute("product_id"); %>
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
            <a class="brand" style="margin: 0; float: none; text-align:center" href="index.jsp">
  <img src="${pageContext.request.contextPath}/menu_assets/images/text.png" />
</a>
        </ul>
       </div>
            <%}%>
            
</nav> 
     </tr>
     <img STYLE="position:absolute; TOP:350px; LEFT:700px;" src="${pageContext.request.contextPath}/menu_assets/images/wishlist.png"/>
<%
	
	
	List<Heart> result = new ArrayList<Heart>();
	
	result = HeartFactory.create().getProducts(uid);
	
%>
<%                           
String sl_no=request.getParameter("product_id");
delete obj_Delete_values=new delete();
obj_Delete_values.delete_value(sl_no);
%>  
	<table id="customers" >
		<tr>            
				<th>ID produktu</th>
				<th>Nazwa</th>
				<th>Cena</th>
                                <th>Img</th>
                                <th>Usuń</th>
                                <th>Dodaj do koszyka</th>
                               
				
		</tr>
		<% for(Heart cart : result) { %>
		<%if(cart.getProductId()>=0&&cart.getProductId()<=12){%>
                <tr>
                                
				<td><%= cart.getProductId() %></td>
				<td><%="Koszulka " + cart.getProductName()%></td>
				<td><%= cart.getPrice() %></td>
                                <td style="width: 100px;"><img src="<%= cart.getImg() %>" height="100" width="150"</td>
                                <td>
                                    
                                    <a href="delete_heart.jsp?product_id=<%=cart.getProductId()%>"><submit class="subl"><i class="fas fa-times"></i></submit><br><br></a>
                                    
                                </td>
                                <td style="width: 100px">
                                    <form action="${pageContext.request.contextPath}/Cart" method="get">
                                    <input type="hidden" name="productId" value="<%=cart.getProductId()%>">
                                    <button style position type="submit" class="btn">
                                    <i class="fas fa-shopping-cart"></i>
                                    </button>
                                    </form>
                                </td>
		</tr>
                <%}%>
                <%if(cart.getProductId()>=13&&cart.getProductId()<=24){%>
                 <tr>
                                
				<td><%= cart.getProductId() %></td>
				<td><%="Bluza " + cart.getProductName()%></td>
				<td><%= cart.getPrice() %></td>
                                <td style="width: 100px;"><img src="<%= cart.getImg() %>" height="100" width="150"</td>
                                <td>
                                    
                                    <a href="delete_heart.jsp?product_id=<%=cart.getProductId()%>"><submit class="subl"><i class="fas fa-times"></i></submit><br><br></a>
                                    
                                </td>
                                <td>
                                    <form action="${pageContext.request.contextPath}/Cart" method="get">
                                    <input type="hidden" name="productId" value="<%=cart.getProductId()%>">
                                    <button type="submit" class="btn">
                                    <i class="fas fa-shopping-cart"></i>
                                    </button>
                                    </form>
                                </td>
		</tr>
                 <%}%>
                 <%if(cart.getProductId()>=25&&cart.getProductId()<=36){%>
                  <tr>
                                
				<td><%= cart.getProductId() %></td>
                                <td><%="Longsleeve " + cart.getProductName()%></td>
				<td><%= cart.getPrice() %></td>
                                <td style="width: 100px;"><img src="<%= cart.getImg() %>" height="100" width="150"</td>
                                <td>
                                    
                                    <a href="delete_heart.jsp?product_id=<%=cart.getProductId()%>"><submit class="subl"><i class="fas fa-times"></i></submit><br><br></a>
                                    
                                </td>
                                <td style="width: 200px">
                                    <form action="${pageContext.request.contextPath}/Cart" method="get">
                                    <input type="hidden" name="productId" value="<%=cart.getProductId()%>">
                                    <button type="submit" class="btn">
                                    <i class="fas fa-shopping-cart"></i>
                                    </button>
                                    </form>
                                </td>
		</tr>
                 <%}%>
                 <%if(cart.getProductId()>=37&&cart.getProductId()<=48){%>
                  <tr>
                                
				<td><%= cart.getProductId() %></td>
				<td><%="Czapka " + cart.getProductName()%></td>
				<td><%= cart.getPrice() %></td>
                                <td style="width: 100px;"><img src="<%= cart.getImg() %>" height="100" width="150"</td>
                                <td>
                                    
                                    <a href="delete_heart.jsp?product_id=<%=cart.getProductId()%>"><submit class="subl"><i class="fas fa-times"></i></submit><br><br></a>
                                    
                                </td>
                                <td>
                                    <form action="${pageContext.request.contextPath}/Cart" method="get">
                                    <input type="hidden" name="productId" value="<%=cart.getProductId()%>">
                                    <button type="submit" class="btn">
                                    <i class="fas fa-shopping-cart"></i>
                                    </button>
                                    </form>
                                </td>
		</tr>
                 <%}%>
                 <%if(cart.getProductId()>=49&&cart.getProductId()<=52){%>
                  <tr>
                                
				<td><%= cart.getProductId() %></td>
				<td><%="Opaska " + cart.getProductName()%></td>
				<td><%= cart.getPrice() %></td>
                                <td style="width: 100px;"><img src="<%= cart.getImg() %>" height="100" width="150"</td>
                                <td>
                                    
                                    <a href="delete_heart.jsp?product_id=<%=cart.getProductId()%>"><submit class="subl"><i class="fas fa-times"></i></submit><br><br></a>
                                    
                                </td>
                                <td>
                                    <form action="${pageContext.request.contextPath}/Cart" method="get">
                                    <input type="hidden" name="productId" value="<%=cart.getProductId()%>">
                                    <button type="submit" class="btn">
                                    <i class="fas fa-shopping-cart"></i> 
                                    </button>
                                    </form>
                                </td>
		</tr>
                 <%}%>
		
		<% } %>
				
	</table><br><br>
         <%

try{  //Registering the Driver
      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      //Getting the connection
      String mysqlUrl = "jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC";
      Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
      //Creating a Statement object
      Statement stmt = con.createStatement();
      
      //Retrieving the data
      ResultSet rs = stmt.executeQuery("SELECT SUM(price) FROM heart WHERE uid =" + session.getAttribute("id"));
		
    String Countrun="";
while(rs.next()){
Countrun = rs.getString(1);
out.println("Cały koszt :" +Countrun +" zł");
}
        }
    catch(Exception ex) {
        System.out.println("------------------Tablerize.getRowCount-----------------");
        System.out.println("Cannot get resultSet row count: " + ex);
        System.out.println("--------------------------------------------------------");
        
    }
%>
        
	<div class="right-buttons">
	<a  class="adjust" href="index.jsp">
		<submit class="sub">
			Kontynuuj Zakupy
		</submit>
	</a>
	
        </div>
        
</body>
</html>