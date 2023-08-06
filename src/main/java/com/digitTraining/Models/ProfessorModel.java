package com.digitTraining.Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class ProfessorModel {

	int pid;
	String pname;
	int exp;
	String password;
	private static Connection con;
	private static PreparedStatement psmt;
	private ResultSet res;
	private static Statement st;

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

	public ProfessorModel() {
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

	public boolean profLogin() {
		try {
			psmt = con.prepareStatement("select * from professor where pname = ? and password = ?");
			psmt.setString(1, pname);
			psmt.setString(2, password);
			res = psmt.executeQuery();
			int flag = 0;
			while (res.next() == true) {
				setPid(res.getInt("pid"));
				if (res.getString(2).equals(pname) && res.getString(4).equals(password)) {
					this.setPname(res.getString("pname"));
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

	public boolean addProfessor() {
		try {
			ForeignKeyCheckOff();

			String sql = "insert into professor values(?,?,?,?) ";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, pid);
			psmt.setString(2, pname);
			psmt.setInt(3, exp);
			psmt.setString(4, password);
			int x = psmt.executeUpdate();
			ForeignKeyCheckOn();
			if (x > 0) {
				return true;
//			System.out.println("---Professor Registered Sucessfully---> " + professor.getPname());
			} else {
				return false;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public static boolean removeProfessor(int pid) {

		try {
			ForeignKeyCheckOff();
			String sql = "delete from professor where pid = ?";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, pid);
			int x = psmt.executeUpdate();
			ForeignKeyCheckOn();
			if (x > 0) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;

	}

	public static boolean updateMarks(int assignment1, int assignment2, int sid) {
        System.out.println(assignment1);
        System.out.println(sid);
		String sql1 = "update student set Assignment1 = ? , Assignment2 = ? where sid =?";
		try {
			PreparedStatement st = con.prepareStatement(sql1);
			st.setInt(1, assignment1);
			st.setInt(2, assignment2);
			st.setInt(3, sid);
			int x = st.executeUpdate();
			if (x > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

}
