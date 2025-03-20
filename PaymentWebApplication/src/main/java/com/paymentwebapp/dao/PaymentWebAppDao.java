package com.paymentwebapp.dao;

	import java.sql.Connection;
	import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.text.SimpleDateFormat;
	import java.util.ArrayList;
	import java.util.List;

	import com.paymentwebapp.dto.BankAccount;
	import com.paymentwebapp.dto.User;

	public class PaymentWebAppDao {
		public boolean isValidUser(String username, String password) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment_application","root","ramana123");
				Statement stmt = con.createStatement();
				String query = "select * from user_details where user_name='"+username+"' and Password='"+password+"'";
				System.out.println(query);
				
				ResultSet rs = stmt.executeQuery(query);
				if(rs.next()) {
					return true;
				}
				con.close();
			}catch(Exception ex) {
				ex.printStackTrace();
			}
			return false;
		}
		 private boolean registerUser(String username, String password, String firstname, 
		    		String lastname, String phone, String email,String address) {
		        boolean isRegistered = false;
		        try {
		            Class.forName("com.mysql.cj.jdbc.Driver");

		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment_application", "root", "ramana123");

		            String query = "INSERT INTO user_details (user_name, password, first_name, last_name, phone, email, address)"
		            		+ " VALUES (?, ?, ?, ?, ?, ?, ?)";
		            PreparedStatement ps = con.prepareStatement(query);
		            ps.setString(1, username);
		            ps.setString(2, password);
		            ps.setString(3, firstname);
		            ps.setString(4, lastname);
		            ps.setString(5, phone);
		            ps.setString(6, email);
					ps.setString(7, address);

		            int rowsAffected = ps.executeUpdate();
		            if (rowsAffected > 0) {
		                isRegistered = true;
		            }

		            ps.close();
		            con.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		        return isRegistered;
			
		 }
		
	}

