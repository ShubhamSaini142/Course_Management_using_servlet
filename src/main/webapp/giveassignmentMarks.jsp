<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session = request.getSession();
int sid = (int) session.getAttribute("sid");
String sname = (String) session.getAttribute("sname");
out.println("<h5>" + "Student Id :" + sid + "<br>");
out.println("Student Name :" + sname + "</h5>");
%>
<form action = "getAssignmentMarks">
<label>Assignment-1 Marks</label><br>
<input type = " number" name = "assignment1"><br><br>
<label>Assignment-2 Marks</label><br>
<input type = " number" name = "assignment2"><br><br>
<input type="submit">
</form>
	<a href="viewAssignedStudent.jsp">Back</a><br><br>


</body>
</html>