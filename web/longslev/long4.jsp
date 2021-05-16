<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.example.model.Product" %>
<%@ page import="java.util.*" %>    
<%@ page import="com.example.model.Heart" %>
<%@ page import="com.example.service.factory.HeartFactory" %>
<%@ page import="javax.servlet.http.*" %>
<link href="../css/products.css" rel="stylesheet" type="text/css">
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
                    </div>
            </li>
            <a class="brand" style="margin: 0; float: none; text-align:center" href="${pageContext.request.contextPath}/index.jsp">
  <img src="${pageContext.request.contextPath}/menu_assets/images/text.png" />
</a>
        </ul>
       </div>
         <%} else {
				%>
                               <%  try{  //Registering the Driver
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
    
<img STYLE="position:absolute; TOP:300px; LEFT:170px; WIDTH:350px; HEIGHT:350px" src="${pageContext.request.contextPath}/menu_assets/images/long/4longpng.png"/>
<div class="wrapper">
            
            <div class="content-right">
                    <div class="right-aboutProduct">
                    
                        
                        <h2 Style="font-size: 2.2em; font-weight: bolder;"><%
  Connection conn = null;    
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;    
 try {
           Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
            Statement stmt = conn.createStatement();
            ResultSet rs;
 
            rs = stmt.executeQuery("SELECT * FROM product WHERE product_id = 28");
            String lastName;
            while ( rs.next() ) {%>
            <h2 Style="font-size: 2.2em; font-weight: bolder;">
                <%= "Longsleeve " + rs.getString("product_name")%>
                </h2>
               <span id="price"> <%=rs.getString("price")+"zł"%></span>
               <ul id="product-info">
                            <li>Dostępność: <span><%=rs.getString("stock")%></span></li>
                            <li>ID produktu: <span><%=rs.getString("product_id")%></span></li>
                            <li>Tagi: <span>Fashion, Hood, Classic</span></li>
                </ul>
                            <p id="description">Bezkompromisowo klasyczna. Nasza ulubiona część garderoby w najprostszej możliwej wersji. Po prostu musisz ją mieć!Każdy Twój zakup pomaga niezależnym projektantom.</p>
                   
                        <ul id="product-info-2">
                            <li>
Czas oczekiwania na przesyłkę może trochę
 
wydłużyć się w związku obecną sytuacją</li>
                            <li>Regular fit</li>
                            <li>100% bawełna</li>
                            <li>Darmowa dostawa od 150zł</li>
                        </ul>
                      </div> <!-- right-aboutProduct --> 
                     <div>
                        <form>
                            <span>
                          
                            <div class="sizes">
                                
                                <label for="sizes" id="price">ROZMIAR</label>
                                <select name="size" id="sizes" onchange="this.form.submit()">
                                    <option>S</option>
                                    <option>M</option>
                                    <option>L</option>
                                    <option>XL</option>
                                    <option>XXL</option>
                                </select> 
                            </div> <!-- sizes -->
                            
                        </form>
                <br>
                <% 
            }
            conn.close();
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
 %>
        
                     <div class="right-buttons">
                         <form action="${pageContext.request.contextPath}/Cart" method="get">
                       <td><input type="hidden" name="productId" value="28"></td>
				<td> <input class="sub"  type="submit" value="DODAJ DO KOSZYKA" name="4long"></td>
                                </form>
                       <form action="${pageContext.request.contextPath}/Heart" method="get">
                           <td><input type="hidden" name="productId" value="28"></td>
				<td><input class="sub"  type="submit" value="&#9825; &nbsp;DODAJ DO WISHLIST" name="4long"></td>
                       </form>
                    </div> <!-- right-3 -->
                
                     <div class="right-social">
                        <a href="">UDOSTĘPNIJ</a>
                        <div class="social-images">
                             <img style="height: 30px;"src="${pageContext.request.contextPath}/menu_assets/images/facebook.png">
                            <img style="height: 30px;"src="${pageContext.request.contextPath}/menu_assets/images/instagram.png">
                            <img style="height: 30px;"src="${pageContext.request.contextPath}/menu_assets/images/pinterest.png">
                        </div> <!-- social-images -->
                    </div> <!-- right-4 -->
                
            </div> <!-- content-right -->
    </div> <!-- wrapper -->
 
 <%
        
  Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        

  try
  {
   int id= (int) request.getSession().getAttribute("id");
   int prod=1;
   String size=request.getParameter("size");
   sqlInsertRecord="INSERT INTO size(uid, product_id, size) VALUES (?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
  
   psInsertRecord.setInt(1,id);
   psInsertRecord.setInt(2,prod);
   psInsertRecord.setString(3,size); 
   psInsertRecord.executeUpdate();
  }
   catch(Exception e){
       System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
   }

        %>
 </h1>               
                
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
              
					
                