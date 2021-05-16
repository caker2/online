<%@page import="com.controller.add"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sl_no=request.getParameter("product_id");
add obj_Add_values=new add();
obj_Add_values.add_value(sl_no);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/E-shopping/heart.jsp"
</script>
</body>
</html>