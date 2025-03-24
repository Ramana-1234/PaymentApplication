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
	


	public boolean authenticateUser(User user) {
		boolean isValid = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.
					getConnection("jdbc:mysql://localhost:3306/payment_application","root","ramana123");
			
			String query = "SELECT * FROM user_details WHERE user_name=? AND password=? ";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				isValid = true;
				System.out.println("isValid is true");
			}
			else {
				System.out.println("isValid is false");
			}
			rs.close();
			ps.close();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		return isValid;	
	}	
	
	
		 public boolean checkIfUsernameExists(String username) {
		        boolean exists = false;
		        try {
		            Class.forName("com.mysql.cj.jdbc.Driver");

		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment_application", "root", "ramana123");
		            String query = "SELECT * FROM user_details WHERE user_name = ?";
		            PreparedStatement ps = con.prepareStatement(query);
		            ps.setString(1, username);

		            ResultSet rs = ps.executeQuery();
		            if (rs.next()) {
		                exists = true; 
		            }

		            rs.close();
		            ps.close();
		            con.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		        return exists;
		    }
		 
		   public boolean registerUser(User user) {
		        boolean isRegistered = false;
		        try {
		            Class.forName("com.mysql.cj.jdbc.Driver");

		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment_application", "root", "ramana123");

		            String query = "INSERT INTO user_details (user_name, password, first_name, last_name, phone, email, address)"
		            		+ " VALUES (?, ?, ?, ?, ?, ?, ?)";
		            PreparedStatement ps = con.prepareStatement(query);
		            ps.setString(1, user.getUsername());
		            ps.setString(2, user.getPassword());
		            ps.setString(3, user.getFirstName());
		            ps.setString(4, user.getLastName());
		            ps.setString(5, user.getPhoneNo());
		            ps.setString(6, user.getEmail());
					ps.setString(7, user.getAddress());

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
