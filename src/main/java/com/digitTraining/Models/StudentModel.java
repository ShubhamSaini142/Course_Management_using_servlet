package com.digitTraining.Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StudentModel {
	
	int sid;
	String sname;
	String semail;
	String  password;
	int cid;
	int Assignment1;
	int Assignment2;
	private Connection connection;
	
	
	public StudentModel() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/csr";
		String user = "root";
		String pwd = "root";
		connection = DriverManager.getConnection(url, user, pwd);
		if (connection != null) {
			System.out.println("Connection Established to Main");
		}
	}
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getAssignment1() {
		return Assignment1;
	}
	public void setAssignment1(int assignment1) {
		Assignment1 = assignment1;
	}
	public int getAssignment2() {
		return Assignment2;
	}
	public void setAssignment2(int assignment2) {
		Assignment2 = assignment2;
	}

	
	

}
