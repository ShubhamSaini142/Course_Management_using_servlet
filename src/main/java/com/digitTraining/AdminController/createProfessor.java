package com.digitTraining.AdminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.ProfessorModel;
import com.digitTraining.Models.StudentModel;

@WebServlet("/createProfessor")
public class createProfessor extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProfessorModel prof = new ProfessorModel();
		prof.setPid(Integer.parseInt(req.getParameter("pid")));
		prof.setPname(req.getParameter("pname"));
		prof.setExp(Integer.parseInt(req.getParameter("exp")));
		prof.setPassword(req.getParameter("password"));
		HttpSession session = req.getSession();
		boolean isAddProf = prof.addProfessor();
		if (isAddProf == true) {
			session.setAttribute("pname",prof.getPname());
			resp.sendRedirect("addProfSuccess.jsp");
		} else {
			resp.sendRedirect("addProfFail.html");
		}
	}
}
