<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC","root","root");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
     
    String query = "select news_id,name,surname,email,temat,tresc from news";
		try {
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs=pstmt.executeQuery();
					
					int id=(rs.getInt("news_id"));
					String name=(rs.getString("name"));
					String surname=(rs.getString("surname"));
                                        String email=(rs.getString("email"));
                                        String temat=(rs.getString("temat"));
                                        String tresc=(rs.getString("tresc"));
				
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
%>
<html>

</html>