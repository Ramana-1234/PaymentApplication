package com.paymentwebapp.servlets;


import com.paymentwebapp.dao.PaymentWebAppDao;
import com.paymentwebapp.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/WelcomePage")
public class WelcomePage extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("welcome.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
	   User user = new User();
	   user.setUsername(username);
	   user.setPassword(password);
	   PaymentWebAppDao dao = new PaymentWebAppDao();
       boolean isValidUser = dao.authenticateUser(user);
		
		if (isValidUser) {
			response.sendRedirect("dashboard.jsp");
		}
		else {
			out.println("<h3 style='color:red;'>Invalid Username or Password </h3>");
			out.println("<a href='welcome.jsp'> Try Again</a>");
		}
	}
		

	}


