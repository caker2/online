

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select AdminName,AdminPass from admin where AdminName='"+user+"' and AdminPass='"+pass+"'");
          int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
            out.println("welcome "+user);
            response.sendRedirect("admin.jsp?msg=welcome "+user);
            session.removeAttribute("user");
          }
          else
          {
                       response.sendRedirect("login.jsp?msg=Nieprawidłowy login lub hasło");
          }
%>
