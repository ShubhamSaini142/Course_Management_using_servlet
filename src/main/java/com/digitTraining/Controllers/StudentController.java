package com.digitTraining.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.StudentModel;
@WebServlet("/Slogin")
public class StudentController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentModel stu =new StudentModel();
		//for login
		stu.setUsername((req.getParameter("username")));
		stu.setPassword1((req.getParameter("password")));
		HttpSession session = req.getSession();
		//student login checker
		boolean isStudentLogin = stu.studentLogin();
		if(isStudentLogin==true)
		{    session.setAttribute("sid", stu.getSid());
			session.setAttribute("sname",stu.getUsername());
			resp.sendRedirect("studentHome.jsp");
		}
		else {
			resp.sendRedirect("loginStuFail.html");
		}
	
		
		
		
		
		
	}

}
