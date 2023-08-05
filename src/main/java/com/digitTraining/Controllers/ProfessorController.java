package com.digitTraining.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.ProfessorModel;
@WebServlet("/Plogin")
public class ProfessorController  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProfessorModel prof =new ProfessorModel();
		prof.setPname((req.getParameter("username")));
		prof.setPassword((req.getParameter("password")));
		HttpSession session = req.getSession(true);
		boolean b = prof.profLogin();
		if(b==true)
		{
			session.setAttribute("pname",prof.getPname());
			resp.sendRedirect("profHome.jsp");
		}
		else {
			resp.sendRedirect("profLoginFail.html");
		}
	}

}
