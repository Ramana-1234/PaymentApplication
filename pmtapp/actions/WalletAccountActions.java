package org.pmtapp.actions;

import org.pmtapp.actioninterfaces.WalletAccountInter;
import org.pmtapp.model.AppData;
import org.pmtapp.model.UserDetails;
import org.pmtapp.model.UserAccountDetails;

import java.util.Date;
import java.util.Scanner;

public class WalletAccountActions implements WalletAccountInter {

    @Override
    public UserAccountDetails createUserAccount(UserDetails user, Scanner sc) {
        Date accountOpenDate = new Date();

        System.out.print("Enter wallet PIN: ");
        String walletPin = sc.nextLine();

        System.out.print("Enter initial wallet balance: ");
        double initialBalance = sc.nextDouble();
        sc.nextLine();

        System.out.print("Enter number of linked bank accounts: ");
        int linkedBankAccountsCount = user.getBankAccounts().size();
        sc.nextLine();

        UserAccountDetails userAcc = new UserAccountDetails(accountOpenDate, initialBalance, linkedBankAccountsCount, walletPin, user);

        return userAcc;
    }

    @Override
    public void addMoneyToWallet(double amount) {
        UserAccountDetails acc = AppData.getLoggedUser().getUserAccountDetails();
        double total = acc.getCurrentWalletBalance() + amount;
        acc.setCurrentWalletBalance(total);
        System.out.println("Money added successfully");
    }
	

}
