<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Enroll</title>
<link rel="stylesheet" type="text/css" href="sty.css">
</head>
<body>
	<div class="container">
		<h1>Score Card</h1>
		<table>
			<tr>
				<th>Student ID</th>
				<th>Student Name</th>
				<th>Student Email</th>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Your Id</th>
				<th>Your Name</th>


			</tr>
			<%
			String url = "jdbc:mysql://localhost:3306/csr";
			String user = "root";
			String pwd = "root";

			try {
				session = request.getSession();
				int pid = (int) session.getAttribute("pid");
			

				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pwd);
				PreparedStatement pstmt = con.prepareStatement(
				"select * from professor inner join course on course.pid=professor.pid  inner join student on student.cid=course.cid where professor.pid = ?;");
				pstmt.setInt(1, pid);
				ResultSet resultSet = pstmt.executeQuery();

				while (resultSet.next()) {
			%>
			<tr>
				<td><%=resultSet.getInt("sid")%></td>
				<td><%=resultSet.getString("sname")%></td>
				<td><%=resultSet.getString("semail")%></td>
				<td><%=resultSet.getInt("cid")%></td>
				<td><%=resultSet.getString("cname")%></td>
				<td><%=resultSet.getInt("pid")%></td>
				<td><%=resultSet.getString("pname")%></td>



			</tr>
			<%
			}
			con.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>

		</table>
		<form action="giveMarks">
		<label>Enter StudentId to give marks</label>
		<input type="number" name="sid">
		<input type = "submit">
		</form>
		<br> <br> <a href="profHome.jsp">Go To Home</a>
	</div>
</body>
</html>
