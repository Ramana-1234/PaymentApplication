package org.pmtapp.model;

import java.util.List;
import java.util.ArrayList;


public class AppData {

    private static List<UserDetails> usersList;
    private static UserDetails loggedUser;

    public static List<UserDetails> initUsers() {
        usersList = new ArrayList<>();
        return usersList;
    }

    public static List<UserDetails> getUsersList() {
        return usersList;
    }

    public static void setUsersList(List<UserDetails> usersList) {
        AppData.usersList = usersList;
    }

    public static UserDetails getLoggedUser() {
        return loggedUser;
    }

    public static void setLoggedUser(UserDetails loggedUser) {
        AppData.loggedUser = loggedUser;
    }
}