package org.pmtapp.actions;

import org.pmtapp.actioninterfaces.UserActionsInter;
import org.pmtapp.model.AppData;
import org.pmtapp.model.UserDetails;

public class UserActions  implements UserActionsInter {
	
	  @Override
	    public void registerUser(UserDetails user) {
	        AppData.initUsers().add(user);
	    }

	    @Override
	    public void loginUser(UserDetails user) {
	        AppData.setLoggedUser(user);
	    }

	    @Override
	    public UserDetails checkUser(String userName, String password) {
	        for (UserDetails user : AppData.getUsersList()) {
	            if (user.getUserName().equals(userName) && user.getPassword().equals(password)) {
	                return user;
	            }
	        }
	        return null;
	    }

}
