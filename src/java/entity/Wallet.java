/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class Wallet {
    int walletID;
    int balance;
    Date dateCreated;

    public Wallet() {
    }

    public Wallet(int walletID, int balance, Date dateCreated) {
        this.walletID = walletID;
        this.balance = balance;
        this.dateCreated = dateCreated;
    }

    public int getWalletID() {
        return walletID;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }
    
    
}
