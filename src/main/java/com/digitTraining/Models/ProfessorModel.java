package com.digitTraining.Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ProfessorModel {
	int pid;
	String pname;
	int exp;
	String password;
	private Connection connection;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public ProfessorModel() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/csr";
		String user = "root";
		String pwd = "root";
		connection = DriverManager.getConnection(url, user, pwd);
		if (connection != null) {
			System.out.println("Connection Established to Main");
		}
	}
	
	

}
