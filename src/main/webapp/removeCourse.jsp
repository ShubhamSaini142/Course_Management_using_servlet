<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transaction History</title>
    <link rel="stylesheet" type="text/css" href="sty.css">
</head>
<body>
    <div class="container">
        <h1>All Courses</h1>
        <table>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Course Fees</th>
                 <th>Course Duration</th>
            </tr>
            <% 
            String url = "jdbc:mysql://localhost:3306/csr";
            String user = "root";
            String pwd = "root";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, user, pwd);
                Statement pstmt = con.createStatement();
                ResultSet resultSet = pstmt.executeQuery("SELECT * FROM course");

                while (resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getInt(1) %></td>
                    <td><%= resultSet.getString(2) %></td>
                    <td><%= resultSet.getInt(3) %></td>
                       <td><%= resultSet.getInt(4) %></td>
                </tr>
                <% }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
        <br>
      <form action = "removeCourse">
	<label>Enter the Course Id</label>
	<input type="text" name="removecid">
	<input type = "submit">
</form>
    </div>
</body>
</html>
