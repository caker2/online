

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
   Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        
  PreparedStatement psDeleteRecord=null;
  String sqlDeleteRecord=null;
        
  int product_id=Integer.parseInt(request.getParameter("product_id"));
      
  try
  {
      
    sqlDeleteRecord="Delete from product where product_id=?";
    psDeleteRecord=conn.prepareStatement(sqlDeleteRecord);
    psDeleteRecord.setInt (1,product_id);
   
            
   psDeleteRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psDeleteRecord!=null)
      {
       psDeleteRecord.close();
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
