package com.digitTraining.Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CourseModel {
	
	int cid;
	String cname;
	int fees;
	int dur_months;
	int pid;
	private Connection connection;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	public int getDur_months() {
		return dur_months;
	}
	public void setDur_months(int dur_months) {
		this.dur_months = dur_months;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

	public CourseModel() throws ClassNotFoundException, SQLException {
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
