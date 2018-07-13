<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.ServiceReview;
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
public class ServiceReviewDAO {

    public List<ServiceReview> selectServiceReviewByServiceID(int sid) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from ServiceReview where ServiceID=" + sid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<ServiceReview> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("ID");
//            int serviceID=rs.getInt("ServiceID");
            int userid = rs.getInt("UserID");
            int rating = rs.getInt("Rating");
            String comment = rs.getString("Comment");
            Date date = rs.getDate("Date");
            String status = rs.getString("Status");
            a.add(new ServiceReview(id, sid, userid, rating, comment, date, status));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void insertServiceReview(ServiceReview a) throws Exception {
        String query = "insert into ServiceReview values(?,?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, a.getServiceID());
        ps.setInt(2, a.getUserID());
        ps.setInt(3, a.getRating());
        ps.setString(4, a.getComment());
        ps.setDate(5, (java.sql.Date) a.getDate());
        ps.setString(6, a.getStatus());
        ps.executeUpdate();
        conn.close();
    }

    public void setStatus(int sid, String status) throws Exception {
        String query = "update ServiceReview set Status=? where ServiceID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setInt(2, sid);
        ps.executeUpdate();
        conn.close();
    }

    public void setComment(int sid, String comment) throws Exception {
        String query = "update ServiceReview set Comment=? where ServiceID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, comment);
        ps.setInt(2, sid);
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

import entity.ServiceReview;
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
public class ServiceReviewDAO {

    public List<ServiceReview> selectServiceReviewByServiceID(int sid) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from ServiceReview where ServiceID=" + sid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<ServiceReview> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("ID");
//            int serviceID=rs.getInt("ServiceID");
            int userid = rs.getInt("UserID");
            int rating = rs.getInt("Rating");
            String comment = rs.getString("Comment");
            Date date = rs.getDate("Date");
            String status = rs.getString("Status");
            a.add(new ServiceReview(id, sid, userid, rating, comment, date, status));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void insertServiceReview(ServiceReview a) throws Exception {
        String query = "insert into ServiceReview values(?,?,?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, a.getId());
        ps.setInt(2, a.getServiceID());
        ps.setInt(3, a.getUserID());
        ps.setInt(4, a.getRating());
        ps.setString(5, a.getComment());
        ps.setDate(6, (java.sql.Date) a.getDate());
        ps.setString(7, a.getStatus());
        ps.executeUpdate();
        conn.close();
    }

    public void setStatus(int sid, String status) throws Exception {
        String query = "update ServiceReview set Status=? where ServiceID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setInt(2, sid);
        ps.executeUpdate();
        conn.close();
    }

    public void setComment(int sid, String comment) throws Exception {
        String query = "update ServiceReview set Comment=? where ServiceID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, comment);
        ps.setInt(2, sid);
        ps.executeUpdate();
        conn.close();
    }
}
>>>>>>> 23aa4c1c75df345ccccfbdd78cade15c6d3fe48a
