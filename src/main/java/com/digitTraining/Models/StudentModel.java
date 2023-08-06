package com.digitTraining.Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;



//import com.digit.MaincCrsApp.MainCrsApp;

public class StudentModel {

	static int sid;
	static String sname;
	static String semail;
	static String password;
	String username;
	String password1;
	int cid;
	int Assignment1;
	int Assignment2;
	private static Connection con;
	private static PreparedStatement psmt;
	private static Statement st;
	private static ResultSet res;

	public StudentModel() {
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
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

	public boolean studentLogin() {
		try {
			psmt = con.prepareStatement("select * from student where sname = ? and password = ?");
			psmt.setString(1, username);
			psmt.setString(2, password1);
			res = psmt.executeQuery();
			int flag = 0;
			while (res.next() == true) {
				setSid(res.getInt(1));
				if (res.getString(2).equals(username) && res.getString(4).equals(password1)) {
//					this.setSname(res.getString("sname"));
					flag = 1;
				} else {
					flag = 0;
				}
			}
			if (flag == 1) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean addStudent() {

		try {
			ForeignKeyCheckOff();
			String sql = "insert into student values(?,?,?,?,?,?,?)";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, sid);
			psmt.setString(2, sname);
			psmt.setString(3, semail);
			psmt.setString(4, password);
			psmt.setInt(5, -1);
			psmt.setInt(6, -1);
			psmt.setInt(7, -1);
			int x = psmt.executeUpdate();
			ForeignKeyCheckOn();
			if (x > 0) {
				return true;
//			System.out.println("---Student Registered Sucessfully---> " + student.getSname());
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public static boolean removeStudent(int sid) {
		try {
			ForeignKeyCheckOff();
			String sql = "delete from student where sid = ? ";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, sid);
			int x = psmt.executeUpdate();
			ForeignKeyCheckOn();
			if (x > 0) {
				return true;
//			System.out.println("---Student Details Deleted Sucessfully---");
			} else {
				return false;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public static boolean enrollInCourse(int cid, int sid) {
		String sql = "update student set cid = ? where sid = ?";
		try {
			psmt = con.prepareStatement(sql);

			psmt.setInt(1, cid);
			psmt.setInt(2, sid);
			int x = psmt.executeUpdate();
			if (x > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public boolean MAssignment1(int sid) {
		String sql3 = "select * from student where sid = ?";
		try {
			psmt = con.prepareStatement(sql3);
			psmt.setInt(1, sid);
			res = psmt.executeQuery();
			int flag=0;
			while(res.next() == true) {
				Assignment1 =  res.getInt(6);
//				 System.out.println(getAssignment1());
				 flag=1;

				 return true;
			}
			if(flag==1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
	
	public boolean MAssignment2(int sid) {

		String sql3 = "select * from student where sid = ?";
		try {
			psmt = con.prepareStatement(sql3);
			psmt.setInt(1, sid);
			res = psmt.executeQuery();
			int flag=0;
			while(res.next() == true) {
				Assignment2 = res.getInt("Assignment2");
				 flag=1;
			}
//			 System.out.println(" in model "+ getAssignment2());
			if(flag==1) {
				return true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return false;

	}
	
	public boolean selectStudent(int sid) {
		String sql3 = "select * from student where sid = ?";
		try {
			psmt = con.prepareStatement(sql3);
			psmt.setInt(1, sid);
			res = psmt.executeQuery();
			int flag=0;
			while(res.next() == true) {
				setSname(res.getString("sname"));
				 flag=1;
			}
//			 System.out.println(" in model "+ getAssignment2());
			if(flag==1) {
				return true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return false;
		
	}
	

	
	

}
