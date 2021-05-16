
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
        conn = DriverManager.getConnection("jdbc:derby://localhost:1527/onlineshop","root","root");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
        
  
  String NAME=request.getParameter("NAME");
  String SURNAME=request.getParameter("SURNAME");
  String ADDRESS=request.getParameter("ADDRESS");
  int DATE=Integer.parseInt(request.getParameter("DATE"));
  int PHONE=Integer.parseInt(request.getParameter("PHONE"));
  String LOGIN=request.getParameter("LOGIN");
  String PASSWORD=request.getParameter("PASSWORD");

  
        
  try
  {
   sqlInsertRecord="INSERT INTO REGISTER(NAME, SURNAME, ADDRESS, DATE, PHONE, LOGIN, PASSWORD) VALUES (?,?,?,?,?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
  
   psInsertRecord.setString(1,NAME);
   psInsertRecord.setString(2,SURNAME);
   psInsertRecord.setString(3,ADDRESS);
   psInsertRecord.setInt(4,DATE);
   psInsertRecord.setInt(5,PHONE);
   psInsertRecord.setString(6,LOGIN);
   psInsertRecord.setString(7,PASSWORD);
   
            
   psInsertRecord.executeUpdate();
  }
   catch(Exception e)
  {
      response.sendRedirect("logincust.jsp");//// On error it will send back to addRecord.jsp page
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
      <meta http-equiv="REFRESH" content="3;url=/E-shopping/logincust.jsp">
    </head>
<body>
Data is saved successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>