package com.digitTraining.AdminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitTraining.Models.StudentModel;

@WebServlet("/removeStudent")
public class removeStudent extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentModel stu = new StudentModel();
		boolean isStudentRemove = StudentModel.removeStudent(Integer.parseInt(req.getParameter("removesid")));
		if (isStudentRemove == true) {
			resp.sendRedirect("removeStuSuccess.jsp");

		} else {
			resp.sendRedirect("removeStuFail.html");
		}
	}

}