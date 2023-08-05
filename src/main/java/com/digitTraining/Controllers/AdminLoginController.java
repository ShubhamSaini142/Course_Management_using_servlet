package com.digitTraining.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitTraining.Models.AdminLoginModel;
import com.mysql.cj.Session;
@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	         AdminLoginModel ad = new AdminLoginModel();
	        HttpSession session  =  req.getSession(true);
	         ad.setUsername(req.getParameter("username"));
	         ad.setPassword(req.getParameter("password"));
	         boolean x = ad.AdminLogin();
	         if(x==true) {
	        	 resp.sendRedirect("adminHome.jsp");
	         }
	         else {
	        	 resp.sendRedirect("AdminLoginFailed.html");
	         }
	}
	

}
