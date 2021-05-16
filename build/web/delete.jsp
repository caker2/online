<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
 Connection conn = null;    
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;    
try{  //Registering the Driver
      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      //Getting the connection
      String mysqlUrl = "jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC";
      Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
      //Creating a Statement object
      Statement stmt = con.createStatement();
      //Retrieving the data
      ResultSet rs = stmt.executeQuery("select count(*) from cart");
      rs.next();
      //Moving the cursor to the last row
      System.out.println("Table contains "+rs.getInt("count(*)")+" rows");
      %>
   
        <%=rs.getInt("count(*)")%>
    <%
        }
    catch(Exception ex) {
        System.out.println("------------------Tablerize.getRowCount-----------------");
        System.out.println("Cannot get resultSet row count: " + ex);
        System.out.println("--------------------------------------------------------");
        
    }
%>
<script type="text/javascript">

</script>