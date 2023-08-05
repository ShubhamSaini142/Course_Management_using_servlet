<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>
<h3>
		<%
		session = request.getSession();
		out.println("Student "+session.getAttribute("sname")+ " "+ "added successfully!!");
		%>
	</h3>
	<a href="adminHome.jsp">Redirect</a>
</body>
</html>