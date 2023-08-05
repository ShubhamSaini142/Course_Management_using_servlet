package com.digitTraining.Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;




public class CourseModel {

	int cid;
	String cname;
	int fees;
	int dur_months;
	int pid;
	private static Connection con;
	private static Statement st;
	private static PreparedStatement psmt;

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

	public CourseModel() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/csr";
			String user = "root";
			String pwd = "root";
			con = DriverManager.getConnection(url, user, pwd);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void ForeignKeyCheckOff() throws Exception {
		String sql = "SET FOREIGN_KEY_CHECKS=0";
		st = con.createStatement();
		st.executeUpdate(sql);
	}

	public static void ForeignKeyCheckOn() throws Exception {
		String sql = "SET FOREIGN_KEY_CHECKS=1";
		st = con.createStatement();
		st.executeUpdate(sql);
	}

	public boolean addCourse()  {
		try {
			ForeignKeyCheckOff();
		
		String sql = "insert into course values(?,?,?,?,?)";
		psmt = con.prepareStatement(sql);
		psmt.setInt(1, cid);
		psmt.setString(2, cname);
		psmt.setInt(3, fees);
		psmt.setInt(4, dur_months);
		psmt.setInt(5, 0);
		int x = psmt.executeUpdate();
		ForeignKeyCheckOn();
		if (x > 0) {
			return true;

		}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;

	}
	
	
	public static boolean removeProfessor(int cid) {
		try {
			ForeignKeyCheckOff();
		
		String sql = "delete from course where cid = ? ";
		psmt = con.prepareStatement(sql);
		psmt.setInt(1, cid);
		int x = psmt.executeUpdate();
		ForeignKeyCheckOn();
		if (x > 0) {
			return true;
//			System.out.println("---Professor Details Deleted Sucessfully---");
		}
		ForeignKeyCheckOn();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
	
	public static boolean assignCourseToProfessor(int pid , int cid) {

	String sql = "update course set pid = ? where cid = ?";
	try {
		psmt = con.prepareStatement(sql);
	
	psmt.setInt(1, pid);
	psmt.setInt(2, cid);
	int x = psmt.executeUpdate();
	if(x>0) {
		return true;
	}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
	}

}
