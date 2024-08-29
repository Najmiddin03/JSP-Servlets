<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	It's home
	<br>
	<a href="<%=request.getContextPath()%>/Demo?page=login">Login</a>
	<br>
	<a href="<%=request.getContextPath()%>/Demo?page=signup">Sign Up</a>
	<br>
	<a href="<%=request.getContextPath()%>/Demo?page=about">About</a>
	<br>
</body>
</html>
