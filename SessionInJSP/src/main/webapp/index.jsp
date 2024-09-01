<jsp:include page="include/header.jsp">
	<jsp:param value="Homepage" name="titlePage" />
</jsp:include>
<a href="<%=request.getContextPath()%>/SiteController?action=login"><h1>Login</h1>
</a>
<jsp:include page="include/footer.jsp" />