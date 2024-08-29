<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get property</title>
</head>
<body>
	Values submitted to forms
	<br>
	<jsp:useBean id="user" class="com.neotron.beans.User" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	First name:
	<jsp:getProperty property="firstName" name="user" /><br> Last
	name:
	<jsp:getProperty property="lastName" name="user" />

</body>
</html>