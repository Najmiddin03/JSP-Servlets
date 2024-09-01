<jsp:include page="include/header.jsp" />
<%@ page import="java.util.List"%>
<%@ page import="org.neotron.entity.User"%>
<h1>List users</h1>
<table border="1">
	<thead>
		<th>User id</th>
		<th>Username</th>
		<th>Email</th>
		<th>Operations</th>
	</thead>


	<%
	List<User> listusers = (List) request.getAttribute("listusers");
	for (User u : listusers) {
		out.print("<tr>");
		out.print("<td>" + u.getUser_id() + "</td>");
		out.print("<td>" + u.getUsername() + "</td>");
		out.print("<td>" + u.getEmail() + "</td>");
		out.print("<td> <a href=" + request.getContextPath() + "/site?page=updateuser&user_id=" + u.getUser_id()
		+ "&username=" + u.getUsername() + "&email=" + u.getEmail() + ">UPDATE</a>");
		out.print(" | <a href=" + request.getContextPath() + "/site?page=deleteuser&user_id=" + u.getUser_id()
		+ ">DELETE</a></td>");
		out.print("</tr>");
	}
	%>
</table>
<jsp:include page="include/footer.jsp" />