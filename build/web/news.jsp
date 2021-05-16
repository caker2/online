
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
        
  
  String NAME=request.getParameter("name");
  String SURNAME=request.getParameter("surname");
  String EMAIL=request.getParameter("email");
  String TEMAT=request.getParameter("temat");
  String TRESC=request.getParameter("tresc");

  
        
  try
  {
   sqlInsertRecord="INSERT INTO news(name, surname, email, temat, tresc) VALUES (?,?,?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
  
   psInsertRecord.setString(1,NAME);
   psInsertRecord.setString(2,SURNAME);
   psInsertRecord.setString(3,EMAIL);
   psInsertRecord.setString(4,TEMAT);
   psInsertRecord.setString(5,TRESC);
   
            
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
Pomyślnie wysłano wiadomość! Skontaktujemy się z tobą jak najszybciej :)<br>
Przeniesiemy cię na główną stronę za 3.....
</body>
</html>