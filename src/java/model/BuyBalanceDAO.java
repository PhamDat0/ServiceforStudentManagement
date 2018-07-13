<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.BuyBalance;
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
public class BuyBalanceDAO {

    public List<BuyBalance> selectBuyBalanceByHistory(int accid) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from BuyBalance where AccountID=" + accid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<BuyBalance> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int bbid = rs.getInt("BBID");
            int walletid = rs.getInt("WalletID");
            int value = rs.getInt("Value");
            Date date = rs.getDate("Date");
            a.add(new BuyBalance(bbid, accid, walletid, value, date));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void insertBuyBalance(BuyBalance bb) throws Exception {
        String query = "insert into Account values(?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, bb.getAccountID());
        ps.setInt(2, bb.getWalletID());
        ps.setInt(3, bb.getValue());
        ps.setDate(4, (java.sql.Date) bb.getDate());
        ps.executeUpdate();
        conn.close();
    }
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.BuyBalance;
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
public class BuyBalanceDAO {
    
    public List<BuyBalance> selectBuyBalanceByHistory(int accid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from BuyBalance where AccountID="+accid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<BuyBalance> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {
            int bbid=rs.getInt("BBID");
            int walletid=rs.getInt("WalletID");
            int value= rs.getInt("Value");
            Date date= rs.getDate("Date");
            a.add(new BuyBalance(bbid, accid, walletid, value, date));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void insertBuyBalance(BuyBalance bb) throws Exception
    {
            String query="insert into Account values(?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1,bb.getId());
            ps.setInt(2, bb.getAccountID());
            ps.setInt(3, bb.getWalletID());
            ps.setInt(4, bb.getValue());
            ps.setDate(5, (java.sql.Date) bb.getDate());
            ps.executeUpdate();
            conn.close();
    }
}
>>>>>>> 23aa4c1c75df345ccccfbdd78cade15c6d3fe48a
