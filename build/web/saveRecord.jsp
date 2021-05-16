

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
     
  int product_id=Integer.parseInt(request.getParameter("product_id"));
  int cat_id=Integer.parseInt(request.getParameter("cat_id"));
  String product_name=request.getParameter("product_name");
  int price=Integer.parseInt(request.getParameter("price"));
  int stock=Integer.parseInt(request.getParameter("stock"));
  String img=request.getParameter("img");
  String action=request.getParameter("action");
  
        
  try
  {
   sqlInsertRecord="insert into product (product_id, cat_id, product_name, price, stock, img, action) values(?,?,?,?,?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
   psInsertRecord.setInt(1,product_id);
   psInsertRecord.setInt(2,cat_id);
   psInsertRecord.setString(3,product_name);
   psInsertRecord.setInt(4,price);
   psInsertRecord.setInt(5,stock);
   psInsertRecord.setString(6,img);
   psInsertRecord.setString(7,action);
   
            
   psInsertRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psInsertRecord!=null)
      {
       psInsertRecord.close();
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
<body>
Baza danych została zaktualizowana.<br>
Zostaniesz przeniesiony za 3.....
</body>
</html>