package org.pmtapp.actioninterfaces;


import org.pmtapp.model.UserDetails;
import org.pmtapp.model.UserAccountDetails;

import java.util.Scanner;

public interface WalletAccountInter {
    void addMoneyToWallet(double amount);
    UserAccountDetails createUserAccount(UserDetails user, Scanner sc);
	

}
