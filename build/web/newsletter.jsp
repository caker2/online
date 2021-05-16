
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;

  String EMAIL=request.getParameter("email");
    
  try
  {
   sqlInsertRecord="INSERT INTO newsletter(email) VALUES (?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);

   psInsertRecord.setString(1,EMAIL);
            
   psInsertRecord.executeUpdate();
  }
   catch(Exception e)
  {
      response.sendRedirect("index.jsp");//// On error it will send back to addRecord.jsp page
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
      <meta http-equiv="REFRESH" content="3;url=/online/index.jsp">
    </head>
<body>
Dziękujemy za dołączenie do naszego newslettera :) :)<br>
Przeniesiemy cię na główną stronę za 3.....
</body>
</html>