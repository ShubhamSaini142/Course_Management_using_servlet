<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Assignment Marks</title>
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
margin-bottom: 20px;
}
h5 {
font-size: 18px;
margin-bottom: 15px;
}
form {
font-size: 16px;
}
label {
display: block;
margin-bottom: 5px;
}
input[type="number"] {
width: 100%;
padding: 8px;
margin-bottom: 15px;
border: 1px solid #ccc;
border-radius: 4px;
}
input[type="submit"] {
background-color: #007bff;
color: #fff;
padding: 10px 20px;
border: none;
border-radius: 4px;
cursor: pointer;
}
a {
color: #007bff;
text-decoration: none;
}
</style>
</head>
<body>
<div class="container">
<h1>Enter Assignment Marks</h1>
<%int sid = (int) session.getAttribute("sid");
String sname = (String) session.getAttribute("sname"); %>
<h5>
Student Id: <%= sid %><br>
Student Name: <%= sname %>
</h5>
<form action="getAssignmentMarks">
<label for="assignment1">Assignment-1 Marks</label>
<input type="number" id="assignment1" name="assignment1">
<label for="assignment2">Assignment-2 Marks</label>
<input type="number" id="assignment2" name="assignment2">
<input type="submit" value="Submit">
</form>

</div>
</body>
</html>