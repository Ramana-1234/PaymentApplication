package org.pmtapp.actions;

import org.pmtapp.actioninterfaces.AdminInter;
import org.pmtapp.model.AppData;
import org.pmtapp.model.UserDetails;


public class AdminActions implements AdminInter{
    @Override
    public void displayUsers() {
        System.out.println("User details....");
        if (AppData.getUsersList() == null) {
            System.out.println("There are no users registered yet");
        } else {
            for (UserDetails user : AppData.getUsersList()) {
                System.out.println(user);
            }
        }
    }
}
