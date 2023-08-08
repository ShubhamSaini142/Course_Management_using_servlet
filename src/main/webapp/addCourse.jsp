<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
font-family: Arial, sans-serif;
background-color: #f0f0f0;
margin: 0;
padding: 0;
}
.container {
text-align: center;
margin: 100px auto;
padding: 20px;
background-color: #fff;
border-radius: 5px;
box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
h3 {
color: #008CBA;
}
a {
display: inline-block;
margin-top: 10px;
padding: 8px 20px;
background-color: #008CBA;
color: #fff;
text-decoration: none;
border-radius: 3px;
}
a:hover {
background-color: #00678A;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h3>
		<%
		session = request.getSession();
		out.println("Course "+session.getAttribute("cname")+ " "+ "added successfully!!");
		%>
	</h3>
	<a href="adminHome.jsp">Redirect</a>
	</div>
</body>
</html>