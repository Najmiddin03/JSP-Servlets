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
	<jsp:getProperty property="firstName" name="user" />
	<jsp:getProperty property="lastName" name="user" /><br>
</body>
</html>