package com.digitTraining.ProfessorControllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.ProfessorModel;
@WebServlet("/getAssignmentMarks")
public class getAssignmentMarks extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProfessorModel prof = new ProfessorModel();
		HttpSession session = req.getSession();
		int assignment1 =Integer.parseInt(req.getParameter("assignment1"));
		int assignment2 =Integer.parseInt(req.getParameter("assignment2"));
		System.out.println(assignment1);
		
		int sid = (int)  session.getAttribute("sid");
		boolean x = prof.updateMarks(assignment1,assignment2,sid);
		if(x==true) {
			PrintWriter pw = resp.getWriter();
			pw.println("Marks sended to student");
		}

	}

}
