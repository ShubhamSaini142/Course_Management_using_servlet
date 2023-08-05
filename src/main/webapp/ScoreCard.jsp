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
				<th>Assignment-1</th>
				<th>Assignment-2</th>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Professor Id</th>
				<th>Professor Name</th>


			</tr>
			<%
			String url = "jdbc:mysql://localhost:3306/csr";
			String user = "root";
			String pwd = "root";

			try {
				session = request.getSession();
			int sid  = (int)	session.getAttribute("sid");
	
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pwd);
				PreparedStatement pstmt = con.prepareStatement("select * from student inner join course on course.cid=student.cid  inner join professor on professor.pid=course.pid where sid = ?;");
				pstmt.setInt(1,sid);
				ResultSet resultSet = pstmt.executeQuery();
           
				while (resultSet.next()) {
			%>
			<tr>
				<td><%=resultSet.getInt(1)%></td>
				<td><%=resultSet.getString(2)%></td>
				<td><%=resultSet.getString(3)%></td>
				<td><%=resultSet.getInt(6)%></td>
				<td><%=resultSet.getInt(7)%></td>
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
		<br> <br> <a href="studentHome.jsp">Go To Home</a>
	</div>
</body>
</html>
