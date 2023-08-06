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
import com.digitTraining.Models.StudentModel;
@WebServlet("/giveMarks")
public class giveMarksToStudents extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProfessorModel prof = new ProfessorModel();
		StudentModel stu = new StudentModel();
   HttpSession session =  req.getSession();
    session.setAttribute("pid", prof.getPid());
  
    int sid = Integer.parseInt(req.getParameter("sid"));

    boolean  x  = stu.selectStudent(sid);
    if(x==true) {
        session.setAttribute("sid", sid);
        session.setAttribute("sname", stu.getSname());
    	resp.sendRedirect("giveassignmentMarks.jsp");
    }
    
	}

}
