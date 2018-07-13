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

import entity.Notification;
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
public class NotificationDAO {

    public List<Notification> selectNotificationByID(int id) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Notification where ReceiverID=" + id;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Notification> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int notiid = rs.getInt("NotiID");
            String title = rs.getString("Title");
            String detail = rs.getString("Detail");
            Date date = rs.getDate("Date");
            String status = rs.getString("Status");
            a.add(new Notification(notiid, id, title, detail, date, status));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void setNotificationStatusByID(int id, String status) throws Exception {
        String query = "update Notification set Status=? where ReceiverID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setInt(2, id);
        ps.executeUpdate();
        conn.close();
    }

    public void insertNotification(Notification a) throws Exception {
        String query = "insert into Notification values(?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, a.getReceiverID());
        ps.setString(2, a.getTitle());
        ps.setString(3, a.getDetail());
        ps.setDate(4, (java.sql.Date) a.getDate());
        ps.setString(5, a.getStatus());
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

import entity.Notification;
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
public class NotificationDAO {
    
    public List<Notification> selectNotificationByID(int id) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Notification where ReceiverID="+id;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Notification> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int notiid=rs.getInt("NotiID");
            String title=rs.getString("Title");
            String detail=rs.getString("Detail");
            Date date=rs.getDate("Date");
            String status=rs.getString("Status");
            a.add(new Notification(notiid, id, title, detail, date, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void setNotificationStatusByID(int id,String status) throws Exception
    {
        String query="update Notification set Status=? where ReceiverID=?";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1,status);
        ps.setInt(2, id);
        ps.executeUpdate();
        conn.close();
    }
    
    public void insertNotification(Notification a) throws Exception
    {
            String query="insert into Notification values(?,?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1,a.getId());
            ps.setInt(2, a.getReceiverID());
            ps.setString(3, a.getTitle());
            ps.setString(4, a.getDetail());
            ps.setDate(5, (java.sql.Date) a.getDate());
            ps.setString(6, a.getStatus());
            ps.executeUpdate();
            conn.close();
    }
}
>>>>>>> 23aa4c1c75df345ccccfbdd78cade15c6d3fe48a
>>>>>>> 3b45fce8e60042e525d960e0e1e1b130ea3e32f9
