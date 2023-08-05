package com.digitTraining.StudentControllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.StudentModel;

@WebServlet("/Assignment1")
public class Assignment1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentModel st = new StudentModel();
		HttpSession session = req.getSession();

		int sid = (int) session.getAttribute("sid");

		boolean x = st.MAssignment1(sid);
		if (x == true) {
			session.setAttribute("assignment1", st.getAssignment1());
			resp.sendRedirect("studentAssignment1.jsp");
		}
	}

}
