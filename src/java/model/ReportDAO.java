/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Report;
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
public class ReportDAO {

    public List<Report> selectAllReport() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Report";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Report> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("ReportID");
            int senderID = rs.getInt("SenderID");
            String title = rs.getString("Title");
            String detail = rs.getString("Detail");
            Date date = rs.getDate("Date");
            String status = rs.getString("Status");
            a.add(new Report(id, senderID, title, detail, date, status));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void setReportStatus(int rid, String status) throws Exception {
        String query = "update Report set Status=? where ReportID=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setInt(2, rid);
        ps.executeUpdate();
        conn.close();
    }

    public void insertService(Report a) throws Exception {
        String query = "insert into Report values(?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setInt(1, a.getSenderID());
        ps.setString(2, a.getTitle());
        ps.setString(3, a.getDetail());
        ps.setDate(4, (java.sql.Date) a.getDate());
        ps.setString(5, a.getStatus());
        ps.executeUpdate();
        conn.close();
    }
}
