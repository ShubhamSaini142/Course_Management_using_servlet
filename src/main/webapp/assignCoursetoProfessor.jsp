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
<style>


@charset "ISO-8859-1";
body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
    color: #333;
}

.container {
    max-width: 800px;
    margin: 30px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    background-color: #fff;
}

h1 {
    text-align: center;
    font-size: 24px;
    color: #333;
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
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.2s ease;
}

a:hover {
    background-color: #0056b3;
}

 .home-link {
            text-align: center;
            margin-top: 20px;
            display: block;
            color: #008080; /* Dark teal link color */
            text-decoration: none;
            
        }

.home-link:hover {
            color: #006666; /* Lighter teal link color on hover */
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
        <form action="assignCourseToProfessor" align = "center">
        <label>Enter CourseId to Select</label><br>
        <input type = "text" name="cid"><br><br>
          <label>Enter ProfessorId to Select</label><br>
        <input type = "text" name="pid"><br><br>
        <center><input type="submit"  class = "home-link"></center>
        </form>
        
        
        
        
        
        
        
        <br>
        <a href= "adminHome.jsp" class = "home-link" >Go To Home</a>
    </div>
</body>
</html>
