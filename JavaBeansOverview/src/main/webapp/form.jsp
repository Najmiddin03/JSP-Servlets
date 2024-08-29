<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	Submit form
	<br>
	<jsp:useBean id="user" class="com.neotron.beans.User" scope="session"></jsp:useBean>
	<form action="formValues.jsp">
		First name:<input type="text" name="firstName"
			value='<jsp:getProperty property="firstName" name="user"/>'>
		Last name:<input type="text" name="lastName"
			value='<jsp:getProperty property="lastName" name="user"/>'> <input
			type="submit" value="Submit">
	</form>

</body>
</html>