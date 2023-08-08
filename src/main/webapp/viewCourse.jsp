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
    <style>@charset "ISO-8859-1";

body {
font-family: Arial, sans-serif;
background-color: #f7f7f7;
margin: 0;
padding: 0;
color: #333; /* Darker text color */
}

.container {
max-width: 800px;
margin: 30px auto;
padding: 20px;
border: 1px solid #ccc;
border-radius: 5px;
background-color: #fff;
}

h1 {
text-align: center;
font-size: 28px;
color: #444; /* Slightly darker heading color */
margin-bottom: 20px;
}

table {
width: 100%;
border-collapse: collapse;
margin-bottom: 20px;
}

th, td {
padding: 10px;
text-align: left;
border-bottom: 1px solid #ccc;
}

th {
background-color: #f2f2f2;
}

a {
display: block;
width: 100px;
margin: 0 auto;
padding: 10px;
text-align: center;
color: #fff;
text-decoration: none;
background-color: #3498db; /* Classic blue link color */
border-radius: 5px;
font-size: 16px;
transition: background-color 0.2s ease;
}

a:hover {
background-color: #2980b9; /* Darker blue link color on hover */
}

.home-link {
text-align: center;
margin-top: 20px;
display: block;
color: #444; /* Slightly darker text color for links */
text-decoration: none;
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
        <br>
        <a href="adminHome.jsp">Go To Home</a>
    </div>
</body>
</html>
