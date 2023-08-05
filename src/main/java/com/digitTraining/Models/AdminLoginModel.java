package com.digitTraining.Models;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class AdminLoginModel {
	public static String username;
public static String password;
	private static Connection connection;
	private static ResultSet res;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AdminLoginModel()  {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 
		String url = "jdbc:mysql://localhost:3306/csr";
		String user = "root";
		String pwd = "root";
		connection = DriverManager.getConnection(url, user, pwd);
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
public static boolean AdminLogin()  {
		String sql = "select * from admin where username = ? and password = ?";
	PreparedStatement prepareStatement;
	try {
		prepareStatement = connection.prepareStatement(sql);
	
	prepareStatement.setString(1, username);
	prepareStatement.setString(2, password);
		res = prepareStatement.executeQuery();
		int flag = 0;
		while(res.next()==true) {
			if(res.getString(1).equals(username) && res.getString(2).equals(password)) {
				flag = 1;
			}
			else {
				flag = 0;
			}
	}
		if(flag==1) {
			return true;
		}
		else {
			return false;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
		
		
	}
	
	
	

}
