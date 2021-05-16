<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<% 
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/onlineshop","root","root");
      
         Statement st=conn.createStatement();
%> 
<% 
boolean flag = false; 

String LOGIN = request.getParameter ("LOGIN"); 
String PASSWORD = request.getParameter ("PASSWORD"); 
%>

<% 
 
String sql = "SELECT LOGIN from REGISTER where LOGIN=? And PASSWORD =?"; 

try {  
ps = conn.prepareStatement(sql); 
ps.setString (1,LOGIN); 
ps.setString (2,PASSWORD); 
rs = ps.executeQuery (); 
if (rs.next ()) { 
out.println (rs.getString ("LOGIN")); 
flag = true; 
session.setAttribute("ULOGIN", rs.getString ("LOGIN")); 
} else { 
request.setAttribute("err", "user name or password error!"); 
}

rs.close (); 
ps.close (); 
conn.close ();

} catch (Exception e) { 
out.println (e); 
} 
%>


<% 

if (flag) { 

%>

<jsp:forward page="logsucc.jsp" />

<%

} 
else { 
%>

<jsp:forward page="loginfail.jsp" /> 
<% 
} 
%>
</body>
</html>
