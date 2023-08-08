package com.digitTraining.AdminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitTraining.Models.CourseModel;
import com.digitTraining.Models.StudentModel;

@WebServlet("/removeCourse")
public class removeCourse extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CourseModel cm = new CourseModel();
		boolean isCourseRemove = cm.removeProfessor(Integer.parseInt(req.getParameter("removecid")));
		if (isCourseRemove == true) {
			resp.sendRedirect("removeCourseSuccess.jsp");

		} else {
			resp.sendRedirect("removeCourseFail.html");
		}
	}
}