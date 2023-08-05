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
	String s1 = (String) session.getAttribute("sname");
	out.println(s1 +" "+ "Welcome to your account. Please select an operation to perform.");
	%>
	<br>
	<br>
	<a href="EnrollCourse.jsp">1. Enroll in a course</a><br><br>
	<a href="Assignment1">2. view score of assignment1</a><br><br>
	<a href="Assignment2">3. view score of assignment2</a><br><br>
	<a href="ScoreCard.jsp">4. score card</a><br><br>
	<a href="LogoutController">6. Logout</a>
</body>
</html>