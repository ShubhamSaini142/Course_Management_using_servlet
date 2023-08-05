package com.digitTraining.StudentControllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.StudentModel;
@WebServlet("/Assignment2")
public class Assignment2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentModel st = new StudentModel();
		HttpSession session = req.getSession();
	
//		System.out.println(session.getAttribute("assignment2"));
	int sid = (int) session.getAttribute("sid");
//	System.out.println(session.getAttribute("assignment2"));
		boolean x = st.MAssignment2(sid);
		if(x==true) {
			session.setAttribute("assignment2",st.getAssignment2());
			resp.sendRedirect("studentAssignment2.jsp");
		}
	}

}