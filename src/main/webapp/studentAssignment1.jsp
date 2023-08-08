<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Assignment 1</title>
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
<h1>Assignment 1 Scores</h1>
<div class="scores">
<%
session = request.getSession();
int value = (int) session.getAttribute("assignment1");
out.println("Your score for Assignment 1: " + value);
%>
</div>
</div>
</body>
</html>