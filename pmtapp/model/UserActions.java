package org.pmtapp.model;

public class UserActions {
	
	public void registerUser(UserDetails user) {
		AppData.usersList.add(user);
	}
	
	public void login(UserDetails user) {
		AppData.setLoggedUser(user);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}