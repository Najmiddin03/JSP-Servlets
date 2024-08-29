<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get property</title>
</head>
<body>
	<jsp:useBean id="user" class="com.neotron.beans.User" scope="session"></jsp:useBean>
	Values updated:
	<jsp:setProperty property="firstName" name="user" value="Adham" />
	<jsp:setProperty property="lastName" name="user" value="Salaydinov" />
</body>
</html>