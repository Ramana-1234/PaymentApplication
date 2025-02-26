package org.pmtapp.model;

public class BankAccount {
	private String bankAccountId;
	private String bankAccountNumber;
	private String ifscCode;
	private String bankName;
	private String bankBranch;
	private enum accountStatus{
		ACTIVE,INACTIVE,FROZEN,CLOSED
	}
	private UserDetails user;
	

	public String getBankAccountId() {
		return bankAccountId;
	}


	public void setBankAccountId(String bankAccountId) {
		this.bankAccountId = bankAccountId;
	}


	public String getBankAccountNumber() {
		return bankAccountNumber;
	}


	public void setBankAccountNumber(String bankAccountNumber) {
		this.bankAccountNumber = bankAccountNumber;
	}


	public String getIfscCode() {
		return ifscCode;
	}


	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}


	public String getBankName() {
		return bankName;
	}


	public void setBankName(String bankName) {
		this.bankName = bankName;
	}


	public String getBankBranch() {
		return bankBranch;
	}


	public void setBankBranch(String bankBranch) {
		this.bankBranch = bankBranch;
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
