package com.paymentwebapp.servlets;
import com.paymentwebapp.dto.User;
import com.paymentwebapp.dao.PaymentWebAppDao;
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

@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		 String username = request.getParameter("username");
	     String password = request.getParameter("password");
	     String firstname= request.getParameter("firstname");
	     String lastname= request.getParameter("lastname");
	     String phone= request.getParameter("phoneno");
	     String email= request.getParameter("email");
	     String address= request.getParameter("address");
	     
	     User user = new User();
	     user.setUsername(username);
	     user.setPassword(password);
	     user.setFirstName(firstname);
	     user.setLastName(lastname);
	     user.setPhoneNo(phone);
	     user.setEmail(email);
	     user.setAddress(address);
	     
	     PaymentWebAppDao dao = new  PaymentWebAppDao();
	     boolean usernameExists = dao.checkIfUsernameExists(username);
	     
	     response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        if (usernameExists) {
	            out.println("<h3 style='color:red;'>Username already exists! Please choose a different username.</h3>");
	            out.println("<a href='register.jsp'>Back to Registration</a>");
	        }
	        else {
	        	boolean isRegistered = dao.registerUser( user);
	
	        if (isRegistered) {
	            out.println("<h3 style='color:green;'>Registration Successful!</h3>");
	        } else {
	            out.println("<h3 style='color:red;'>Registration Failed. Please try again.</h3>");
	        }
	        out.println("<a href='welcome.jsp'>Login</a>");
	    }
       }
       

	 

}
