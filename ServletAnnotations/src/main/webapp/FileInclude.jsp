<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
	<h2>Files</h2>
	<hr>
	<!-- Static -->
	<%@ include file="file.txt"%>
	<br>
	<!-- Dynamic -->
	<jsp:include page="file2.txt" />
</body>
</html>