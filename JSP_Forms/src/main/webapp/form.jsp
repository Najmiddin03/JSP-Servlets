<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>

	<form action=<%=request.getContextPath() %>/Controller method="post">
		Full name: 
			<input type="text" name="name" required /><br> 
		Gender: 
			<input type="radio" name="gender" value="male" checked="checked"> Male 
			<input type="radio" name="gender" value="female">Female
			<br>
		Languages: 
			<input type="checkbox" name="language" value="English">English
			<input type="checkbox" name="language" value="Uzbek">Uzbek 
			<input type="checkbox" name="language" value="Polish">Polish
			<br>
		Country: 
		<select name="country">
			<option value="Uzbekiztan">Uzbekistan</option>
			<option value="Kazakhstan">Kazakhstan</option>
			<option value="Poland">Poland</option>
		</select><br> <input type="submit" value="Submit">
	</form>
</body>
</html>