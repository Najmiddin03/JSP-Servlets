<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
	<strong> Examples</strong>
	<br />
	<%-- This is comment section 
		<%
			response.sendRedirect("http://google.com");
		%>
	--%>
	<%!int x = 10;%>
	<%=x%>
	<%=new Integer(50)%>
</body>
</html>