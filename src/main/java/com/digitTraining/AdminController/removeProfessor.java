package com.digitTraining.AdminController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitTraining.Models.ProfessorModel;

@WebServlet("/removeProfessor")
public class removeProfessor extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
ProfessorModel prof = new ProfessorModel();
boolean isProfRemove = prof.removeProfessor(Integer.parseInt(req.getParameter("removepid")));
if (isProfRemove == true) {
			resp.sendRedirect("removeProfSuccess.jsp");//need to create html

		} else {
			resp.sendRedirect("removeProfFail.html");
		}
	}

}