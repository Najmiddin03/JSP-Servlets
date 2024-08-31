<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member</title>
</head>
<body>
	<%
	String username = null, sessionId = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie c : cookies) {
			if (c.getName().equals("username")) {
		username = c.getValue();
			}
			if (c.getName().equals("JSESSIONID")) {
		sessionId = c.getValue();
			}
		}
	}
	if (sessionId == null || username == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	Username:
	<%=username%><br> Session Id:
	<%=sessionId%><br>
	<h2>Welcome to site</h2>

	<form action="<%=request.getContextPath()%>/MemberAreaController"
		method="get">
		<input type="hidden" , name="action" value="destroy"> <input
			type="submit" value="logout">
	</form>
</body>
</html>