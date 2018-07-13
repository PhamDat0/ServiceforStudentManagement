<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 3b45fce8e60042e525d960e0e1e1b130ea3e32f9
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Bill;
import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BillDAO {

    public List<Bill> selectBillByUserID(int id) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Bill where UserID=" + id;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Bill> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int billid = rs.getInt("BillID");
            int serviceid = rs.getInt("ServiceID");
            int providerid = rs.getInt("ProviderID");
            int userid = rs.getInt("UserID");
            int price = rs.getInt("Price");
            String detail = rs.getString("Detail");
            String status = rs.getString("Status");
            a.add(new Bill(billid, serviceid, providerid, userid, price, detail, status));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void setBillStatus(int billID, String status) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "update Bill set Status=? where BillID=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setInt(2, billID);
        ps.executeUpdate();
        conn.close();
    }

    public void insertNotification(Bill a) throws Exception {
        String query = "insert into Bill values(?,?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, a.getServiceID());
        ps.setInt(2, a.getProviderID());
        ps.setInt(3, a.getUserID());
        ps.setInt(4, a.getPrice());
        ps.setString(5, a.getDetail());
        ps.setString(6, a.getStatus());
        ps.executeUpdate();
        conn.close();
    }
}
<<<<<<< HEAD
=======
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Bill;
import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BillDAO {
    public List<Bill> selectBillByUserID(int id) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Bill where UserID="+id;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Bill> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {
            int billid= rs.getInt("BillID");
            int serviceid= rs.getInt("ServiceID");
            int providerid= rs.getInt("ProviderID");           
            int userid=rs.getInt("UserID");
            int price=rs.getInt("Price");
            String detail=rs.getString("Detail");
            String status=rs.getString("Status");
            a.add(new Bill(billid, serviceid, providerid, userid, price, detail, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void setBillStatus(int billID,String status) throws Exception
    {
        Connection conn= new DBContext().getConnection();
        String query="update Bill set Status=? where BillID=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1,status);
        ps.setInt(2, billID);
        ps.executeUpdate();
        conn.close();
    }
    
    public void insertNotification(Bill a) throws Exception
    {
            String query="insert into Bill values(?,?,?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1,a.getBillID());
            ps.setInt(2, a.getServiceID());
            ps.setInt(3, a.getProviderID());
            ps.setInt(4, a.getUserID());
            ps.setInt(5,a.getPrice());
            ps.setString(6, a.getDetail());
            ps.setString(7, a.getStatus());
            ps.executeUpdate();
            conn.close();
    }
}
>>>>>>> 23aa4c1c75df345ccccfbdd78cade15c6d3fe48a
>>>>>>> 3b45fce8e60042e525d960e0e1e1b130ea3e32f9
