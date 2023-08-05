package com.digitTraining.AdminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.CourseModel;
import com.digitTraining.Models.ProfessorModel;

@WebServlet("/createCourse")
public class createCourse extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	CourseModel cm = new CourseModel();
		cm.setCid(Integer.parseInt(req.getParameter("cid")));
		cm.setCname(req.getParameter("cname"));
		cm.setFees(Integer.parseInt(req.getParameter("fees")));
		cm.setDur_months( Integer.parseInt(req.getParameter("dur_months")));
		HttpSession session  = req.getSession();
		boolean isCourseAdd = cm.addCourse();
		if (isCourseAdd == true) {
			session.setAttribute("cname",cm.getCname());
			resp.sendRedirect("addCourse.jsp");
		} else {
			resp.sendRedirect("addCourseFail.html");
		}
	}
}