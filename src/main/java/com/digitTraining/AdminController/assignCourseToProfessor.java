package com.digitTraining.AdminController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitTraining.Models.CourseModel;

@WebServlet("/assignCourseToProfessor")
public class assignCourseToProfessor extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	CourseModel cm = new CourseModel();
	int pid = Integer.parseInt(req.getParameter("pid"));
	int cid = Integer.parseInt(req.getParameter("cid"));
		boolean x = cm.assignCourseToProfessor(pid, cid);
		if (x == true) {
//			resp.sendRedirect("StudentCreatedSuccessFully.html");
			PrintWriter pw = resp.getWriter();
			pw.println("Succuessfully assigned");
		} else {
			PrintWriter pw = resp.getWriter();
			pw.println("Succuessfully assigned");
			
		}
	}
	
}