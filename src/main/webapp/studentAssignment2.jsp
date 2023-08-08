<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>studentAssignment1</title>
<style>
body {
font-family: Arial, sans-serif;
background-color: #f2f2f2;
margin: 0;
padding: 0;
}
.container {
max-width: 600px;
margin: 0 auto;
padding: 20px;
background-color: #fff;
border-radius: 8px;
box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
h1 {
text-align: center;
color: #333;
}
.scores {
font-size: 18px;
line-height: 1.6;
margin-top: 20px;
padding: 10px;
border: 1px solid #ccc;
border-radius: 4px;
background-color: #f9f9f9;
}
</style>
</head>
<body>
<div class="container">
<h1>Assignment 2 Scores</h1>
<div class="scores">
<%
session = request.getSession();
int value = (int) session.getAttribute("assignment2");
out.println("Assignment-2 Scores" + "<br>" + value);
%>


</div>



</body>
</html>