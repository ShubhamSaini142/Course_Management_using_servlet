<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>studentAssignment1</title>
</head>
<body>
<%
session = request.getSession();
int value = (int) session.getAttribute("assignment2");
out.println("Assignment-2 Scores" + "<br>" + value);
%>






</body>
</html>