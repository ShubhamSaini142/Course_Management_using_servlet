<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Welcome to the Bank</h1>
	<%
	session = request.getSession();
	String s1 = (String) session.getAttribute("pname");
	out.println(s1 +" "+ "Welcome to your account. Please select an operation to perform.");
	%>
	<br>
	<br>
	<a href="#">1. Give marks to student</a><br><br>
	<a href="LogoutController">6. Logout</a>
</body>
</html>