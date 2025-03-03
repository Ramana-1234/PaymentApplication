package org.pmtapp.actioninterfaces;

import org.pmtapp.model.UserDetails;

public interface UserActionsInter {
	  void registerUser(UserDetails user);
	    void loginUser(UserDetails user);
	    UserDetails checkUser(String userName, String password);

}
