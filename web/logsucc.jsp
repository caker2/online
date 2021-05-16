<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>

<%
        
        
        Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        PreparedStatement psSelectRecord=null;
        ResultSet rsSelectRecord=null;
        String sqlSelectRecord=null;
   
        sqlSelectRecord ="SELECT * FROM product";
        psSelectRecord=conn.prepareStatement(sqlSelectRecord);
        rsSelectRecord=psSelectRecord.executeQuery();
%>
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
.brand {
    position: absolute;
    left: 50%;
    margin-left: -50px !important;
    display: block;
}
h3{
  color:#B55DB6;  
  font-family: AXIS extra bold;
}
h1{
  font-family: AXIS extra bold;
}
h1{ 
  font-family: AXIS extra bold;
}
</style>
</head>
<body style="margin:0">
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
                <a class="nav-link" href="  "><span style="color:black"><i class="fa fa-heart"></i></span></a>
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
				%>  <%

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
                <a class="nav-link" href="  "><span style="color:black"><i class="fa fa-shopping-cart "></i></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="  "><span style="color:black"><i class="fa fa-heart"></i></span></a>
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
 <img src="${pageContext.request.contextPath}/menu_assets/images/welcome.png" />
<h1>Zalogowano pomyślnie!</h1><h2>Witaj,</h2><h3><strong><%=session.getAttribute("user")%></strong></h3>
 <p>Kliknij <a href="index.jsp
">tutaj</a> aby przejść na stronę główną.
   </p> 

</body>
</html>
