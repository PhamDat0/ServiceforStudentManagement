/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Wallet;
import com.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

/**
 *
 * @author ADMIN
 */
public class WalletDAO {
    public void insertWallet(Wallet a) throws Exception
    {
            String query="insert into Wallet values(?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1, a.getBalance());
            ps.setDate(2, (Date) a.getDateCreated());
            ps.executeUpdate();
            conn.close();
    }
    
    public void setBalance(int walletid,int newbalance) throws Exception
    {
        String query="update WalletID set Balance=? where WalletID=?";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setInt(1,newbalance);
        ps.setInt(2, walletid);
        ps.executeUpdate();
        conn.close();
    }
}
