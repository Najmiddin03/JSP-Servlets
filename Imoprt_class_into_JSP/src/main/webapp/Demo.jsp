<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo</title>
</head>
<body>
	Original page
	<%
//request.getRequestDispatcher("forward.jsp").forward(request, response);
response.sendRedirect("redirect2.jsp");
%>
</body>
</html>