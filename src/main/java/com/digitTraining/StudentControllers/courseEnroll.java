package com.digitTraining.StudentControllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.StudentModel;
@WebServlet("/courseEnroll")
public class courseEnroll extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   int sid =Integer.parseInt(req.getParameter("sid"));
	   int cid =Integer.parseInt(req.getParameter("cid"));
	   StudentModel st = new StudentModel();
	   boolean x = st.enrollInCourse(cid,sid);
	   HttpSession session = req.getSession();
	   if(x==true) {
		  
		   resp.sendRedirect("EnrollCourseSuccess.jsp");
	   }
	   else {
		   resp.sendRedirect("EnrollCourseFailed.jsp");
	   }
	   
	}

}
