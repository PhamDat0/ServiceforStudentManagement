/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Account;
import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AccountDAO {

    public List<Account> selectAccount(String query) throws Exception {
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        List<Account> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int accid = rs.getInt("AccountID");
            String accname = rs.getString("AccountName");
            String password = rs.getString("Password");
            String email = rs.getString("Email");
            String username = rs.getString("UserName");
            String rolenumber = rs.getString("RoleNumber");
            String address = rs.getString("Address");
            String phone = rs.getString("Phone");
            Date dob = rs.getDate("BOD");
            int walletid = rs.getInt("WalletID");
            int balance = rs.getInt("Balance");
            Date datecreated = rs.getDate("DateCreated");
            String status = rs.getString("Status");
            int type = rs.getInt("Type");
            a.add(new Account(accid, accname, password, email, username, rolenumber, address, phone, dob, walletid, balance, datecreated, status, type));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Account> selectAccountByName(String name) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Account where AccountName like '" + name + "'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Account> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int accid = rs.getInt("AccountID");
            String accname = rs.getString("AccountName");
            String password = rs.getString("Password");
            String email = rs.getString("Email");
            String username = rs.getString("UserName");
            String rolenumber = rs.getString("RoleNumber");
            String address = rs.getString("Address");
            String phone = rs.getString("Phone");
            Date dob = rs.getDate("BOD");
            int walletid = rs.getInt("WalletID");
            int balance = rs.getInt("Balance");
            Date datecreated = rs.getDate("DateCreated");
            String status = rs.getString("Status");
            int type = rs.getInt("Type");
            a.add(new Account(accid, accname, password, email, username, rolenumber, address, phone, dob, walletid, balance, datecreated, status, type));
        }
        rs.close();
        conn.close();
        return a;
    }

    public List<Account> selectAllAccount() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Account";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Account> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int accid = rs.getInt("AccountID");
            String accname = rs.getString("AccountName");
            String password = rs.getString("Password");
            String email = rs.getString("Email");
            String username = rs.getString("UserName");
            String rolenumber = rs.getString("RoleNumber");
            String address = rs.getString("Address");
            String phone = rs.getString("Phone");
            Date dob = rs.getDate("DOB");
            int walletid = rs.getInt("WalletID");
            int balance = rs.getInt("Balance");
            Date datecreated = rs.getDate("DateCreated");
            String status = rs.getString("Status");
            int type = rs.getInt("Type");
            a.add(new Account(accid, accname, password, email, username, rolenumber, address, phone, dob, walletid, balance, datecreated, status, type));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void insertAccount(Account acc) throws Exception {
        String query = "insert into Account values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, acc.getAccountName());
        ps.setString(2, acc.getPassword());
        ps.setString(3, acc.getEmail());
        ps.setString(4, acc.getUserName());
        ps.setString(5, acc.getRoleNumber());
        ps.setString(6, acc.getAddress());
        ps.setString(7, acc.getPhone());
        ps.setDate(8, (java.sql.Date) acc.getDob());
        ps.setInt(9, acc.getWalletID());
        ps.setInt(10, acc.getBalance());
        ps.setDate(11, (java.sql.Date) acc.getDateCreated());
        ps.setString(12, acc.getStatus());
        ps.setInt(13, acc.getType());
        ps.executeUpdate();
        conn.close();
    }

    public void setAccountPasswordByID(int id, String pass) throws Exception {
        String query = "update Account set Password=? where AccountID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, pass);
        ps.setInt(2, id);
        ps.executeUpdate();
        conn.close();
    }

    public void setAccountBalanceID(int id, int balance) throws Exception {
        String query = "update Account set Balance=? where AcountID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, balance);
        ps.setInt(2, id);
        ps.executeUpdate();
        conn.close();
    }

    public void setAccountStatusByID(int id, String status) throws Exception {
        String query = "update Account set Status=? where AccountID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setInt(2, id);
        ps.executeUpdate();
        conn.close();
    }

    public void setAccountProfileByID(int id, String email, String username, String rolenumber, String address, String phone, Date dob) throws Exception {
        String query = "update Account set email=?,username=?,rolenumber=?,address=?,phone=?,dob=? where AccountID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, username);
        ps.setString(3, rolenumber);
        ps.setString(4, address);
        ps.setString(5, phone);
        ps.setDate(6, (java.sql.Date) dob);
        conn.close();
    }

}
