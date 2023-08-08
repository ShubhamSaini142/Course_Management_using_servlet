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
        <h1>All Students</h1>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Student Email</th>
            </tr>
            <% 
            String url = "jdbc:mysql://localhost:3306/csr";
            String user = "root";
            String pwd = "root";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, user, pwd);
                Statement pstmt = con.createStatement();
                ResultSet resultSet = pstmt.executeQuery("SELECT * FROM student");

                while (resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getInt(1) %></td>
                    <td><%= resultSet.getString(2) %></td>
                    <td><%= resultSet.getString(3) %></td>
                </tr>
                <% }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
        <br>
        <a href="adminHome.jsp">Go To Home</a>
    </div>
</body>
</html>
