/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;
import jdk.nashorn.internal.objects.annotations.Getter;

/**
 *
 * @author ADMIN
 */
public class Account {
    int accountID;
    String accountName;
    String password;
    String email;
    String userName;
    String roleNumber;
    String address;
    String phone;
    Date dob;
    int walletID;
    int balance;
    Date dateCreated;
    String status;
    int type;

    public Account() {
    }

    public Account(int accountID, String accountName, String password, String email, String userName, String roleNumber, String address, String phone, Date dob, int walletID, int balance, Date dateCreated, String status, int type) {
        this.accountID = accountID;
        this.accountName = accountName;
        this.password = password;
        this.email = email;
        this.userName = userName;
        this.roleNumber = roleNumber;
        this.address = address;
        this.phone = phone;
        this.dob = dob;
        this.walletID = walletID;
        this.balance = balance;
        this.dateCreated = dateCreated;
        this.status = status;
        this.type = type;
    }  

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public int getAccountID() {
        return accountID;
    }

    public String getAccountName() {
        return accountName;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getUserName() {
        return userName;
    }

    public String getRoleNumber() {
        return roleNumber;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public int getWalletID() {
        return walletID;
    }

    public int getBalance() {
        return balance;
    }

    public int getType() {
        return type;
    }

        public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setRoleNumber(String roleNumber) {
        this.roleNumber = roleNumber;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setType(int type) {
        this.type = type;
    }

   

    


    
    
    
}
