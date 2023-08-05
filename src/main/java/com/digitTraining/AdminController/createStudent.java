package com.digitTraining.AdminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.StudentModel;

@WebServlet("/createStudent")
public class createStudent extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentModel stu = new StudentModel();
		stu.setSid(Integer.parseInt(req.getParameter("sid")));
		stu.setSname(req.getParameter("sname"));
		stu.setSemail(req.getParameter("semail"));
		stu.setPassword(req.getParameter("password"));
		// Student Creation
		HttpSession session = req.getSession();
		boolean isAddStudent = StudentModel.addStudent();
		if (isAddStudent == true) {
			session.setAttribute("sname",stu.getSname());
			resp.sendRedirect("addStuSuccess.jsp");
		} else {
			resp.sendRedirect("addStuFail.html");
		}
	}
}
