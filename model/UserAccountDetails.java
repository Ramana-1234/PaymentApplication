package org.pmtapp.model;

import java.util.Date;

public class UserAccountDetails {
	private int userAccountId;
	private Date accountOpenDate;
	private Double currentWalletBalance;
	private int linkedAccountsCount;
	private String walletPin;
	private UserDetails user;
	
	

	public int getUserAccountId() {
		return userAccountId;
	}



	public void setUserAccountId(int userAccountId) {
		this.userAccountId = userAccountId;
	}



	public Date getAccountOpenDate() {
		return accountOpenDate;
	}



	public void setAccountOpenDate(Date accountOpenDate) {
		this.accountOpenDate = accountOpenDate;
	}



	public Double getCurrentWalletBalance() {
		return currentWalletBalance;
	}



	public void setCurrentWalletBalance(Double currentWalletBalance) {
		this.currentWalletBalance = currentWalletBalance;
	}



	public int getLinkedAccountsCount() {
		return linkedAccountsCount;
	}



	public void setLinkedAccountsCount(int linkedAccountsCount) {
		this.linkedAccountsCount = linkedAccountsCount;
	}



	public String getWalletPin() {
		return walletPin;
	}



	public void setWalletPin(String walletPin) {
		this.walletPin = walletPin;
	}



	public UserDetails getUser() {
		return user;
	}



	public void setUser(UserDetails user) {
		this.user = user;
	}



	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
