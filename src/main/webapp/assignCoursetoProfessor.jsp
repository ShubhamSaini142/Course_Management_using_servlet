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
        <style>
body {
font-family: Arial, sans-serif;
background-color: #f4f4f4;
margin: 0;
padding: 0;
}

.container {
width: 80%;
margin: auto;
overflow: hidden;
padding: 20px;
}



label {
font-weight: bold;
display: block;
margin-bottom: 10px;
}

input[type="text"] {
width: 100%;
padding: 10px;
margin-top: 5px;
border: 1px solid #ccc;
border-radius: 3px;
box-sizing: border-box;
}

input[type="submit"] {
background-color: #4CAF50;
color: white;
padding: 10px 20px;
border: none;
cursor: pointer;
border-radius: 3px;
font-size: 16px;
}

input[type="submit"]:hover {
background-color: #45a049;
}
</style>
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
         <h1>All Professor</h1>
        <table>
            <tr>
                <th>Professor ID</th>
                <th>Professor Name</th>
                <th>Professor Experience</th>
            </tr>
            <% 
            String url1 = "jdbc:mysql://localhost:3306/csr";
            String user2 = "root";
            String pwd3 = "root";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url1, user2, pwd3);
                Statement pstmt = con.createStatement();
                ResultSet resultSet = pstmt.executeQuery("SELECT * FROM professor");

                while (resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getInt(1) %></td>
                    <td><%= resultSet.getString(2) %></td>
                    <td><%= resultSet.getInt(3) %></td>
                </tr>
                <% }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
    
        
        
        <div class="container">
    <form action="assignCourseToProfessor" align = "center">
        <label>Enter CourseId to Select</label>
        <input type = "text" name="cid">
          <label>Enter ProfessorId to Select</label>
        <input type = "text" name="pid">
        <br>
       <br> <center><input type="submit"  class = "home-link"></center>
        </form>
</div>
        
        
        
        
        <br>
        <a href= "adminHome.jsp" class = "home-link" >Go To Home</a>
    </div>
</body>
</html>
