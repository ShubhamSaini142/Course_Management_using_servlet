<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Welcome to the Course Management System</h1>
	<%
	session = request.getSession();
	String s1 = (String) session.getAttribute("username");
	out.println(s1 +" "+ "Welcome to your account. Please select an operation to perform.");
	%>
	<br>
	<br>
	<a href="CreateStudent.html">1. Add student</a><br><br>
	<a href="createProfessor.html">2. add prof</a><br><br>
	<a href="createCourse.html">3. add course</a><br><br>
	<a href="Removestudent.jsp">4. remove student</a><br><br>
	<a href="removeProfessor.jsp">5. remove professor</a><br><br>
	<a href="removeCourse.jsp">6. remove course</a><br><br>
	<a href="viewProfessor.jsp">7. view all professors</a><br><br>
	<a href="viewStudent.jsp">8. view all students</a><br><br>
	<a href="viewCourse.jsp">9. view all courses</a><br><br>
	<a href="assignCoursetoProfessor.jsp">10. enroll professor in a course</a><br><br>
	<a href="LogoutController">6. Logout</a>
</body>
</html>