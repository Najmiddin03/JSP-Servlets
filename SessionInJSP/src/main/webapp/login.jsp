<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/SiteController"
		method="post">
		Username: <input type="text" name="username"><br>
		Password: <input type="password" name="password"><br> 
		<input type="submit" value="Login"><br>
		<input type="hidden" name="action" value="auth">
	</form>
</body>
</html>
