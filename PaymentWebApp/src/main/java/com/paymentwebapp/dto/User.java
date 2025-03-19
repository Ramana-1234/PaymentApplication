package com.paymentwebapp.dto;

import java.util.Date;

public class User {
	
	int userId;
	String firstName;
	String lastName;
	long Phone;
	String address;
	String password;
	double CurrWallBalance;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public long getPhone() {
		return Phone;
	}
	public void setPhone(long phone) {
		Phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public double getCurrWallBalance() {
		return CurrWallBalance;
	}
	public void setCurrWallBalance(double currWallBalance) {
		CurrWallBalance = currWallBalance;
	}
	
	
}