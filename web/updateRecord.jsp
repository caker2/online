

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        
  PreparedStatement psUpdateRecord=null;
  String sqlUpdateRecord=null;
        
  int product_id=Integer.parseInt(request.getParameter("product_id"));
  int cat_id=Integer.parseInt(request.getParameter("cat_id"));
  String product_name=request.getParameter("product_name");
  int price=Integer.parseInt(request.getParameter("price"));
  int stock=Integer.parseInt(request.getParameter("stock"));
  String img=request.getParameter("img");
  String action=request.getParameter("action");
  
        
  try
  {
      
   sqlUpdateRecord="update products set product_id = ?, cat_id = ?, product_name = ?, price = ?  where stock = ?, where img = ?, where img = ?";
   psUpdateRecord=conn.prepareStatement(sqlUpdateRecord);
   psUpdateRecord.setInt (1,product_id);
   psUpdateRecord.setInt(2,cat_id);
   psUpdateRecord.setString(3,product_name);
   psUpdateRecord.setInt(4,price);
   psUpdateRecord.setInt(5,stock);
   psUpdateRecord.setString(6,img);
   psUpdateRecord.setString(7,action);
   
            
   psUpdateRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psUpdateRecord!=null)
      {
       psUpdateRecord.close();
      }
      
      if(conn!=null)
      {
       conn.close();
      }
    }
    catch(Exception e)
    {
      e.printStackTrace(); 
    }
%>
<html>
    <head>
      <meta http-equiv="REFRESH" content="3;url=/E-shopping/login.jsp">
    </head>
<body>
Baza danych została zaktualizowana.<br>
Zostaniesz przeniesiony za 3.....

</body>
</html>
