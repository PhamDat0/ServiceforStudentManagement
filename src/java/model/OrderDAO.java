/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Order;
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
public class OrderDAO {
    
    public List<Order> selectOrderByProviderID(int pid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ProviderID="+pid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
//            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, pid, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderByServiceID(int sid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ServiceID="+sid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
//            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, sid, providerID, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderByUserID(int aid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where UserID="+aid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
//            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, providerID, productID, aid, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void setOrderStatus(int oid,String status) throws Exception
    {
        String query="update Order set Status=? where OrderID=?";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1,status);
        ps.setInt(2, oid);
        ps.executeUpdate();
        conn.close();
    }
    
    public void insertOrder(Order a) throws Exception
    {
            String query="insert into Service values(?,?,?,?,?,?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1,a.getOrderID());
            ps.setInt(2, a.getServiceID());
            ps.setInt(3, a.getProviderID());
            ps.setInt(4, a.getProductID());
            ps.setInt(5, (a.getUserID()));
            ps.setInt(6, a.getPrice());
            ps.setInt(7, a.getQuantity());
            ps.setDate(8, (java.sql.Date) a.getStartDate());
            ps.setDate(9, (java.sql.Date) a.getEndDate());
            ps.setString(10, a.getStatus());
            ps.executeUpdate();
            conn.close();
    }
    
    public List<Order> selectOrderInUseByProviderID(int pid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ProviderID="+pid+" and Status='In use'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
//            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, pid, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderUsedByProviderID(int pid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ProviderID="+pid+" and Status='Used'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
//            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, pid, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderInWaitByProviderID(int pid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ProviderID="+pid+" and Status='In wait'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
//            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, pid, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> SelectOrderUsedByServiceID(int sid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ServiceID="+sid+" and Status='Used'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
//            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, sid, providerID, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderInUseByServiceID(int sid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ServiceID="+sid+" and Status='In use'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
//            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, sid, providerID, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderInWaitByServiceID(int sid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where ServiceID="+sid+" and Status='In wait'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
//            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, sid, providerID, productID, userID, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderInUseByUserID(int aid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where UserID="+aid+" and Status='In use'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
//            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, providerID, productID, aid, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderUsedByUserID(int aid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where UserID="+aid+" and Status='Used'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
//            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, providerID, productID, aid, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Order> selectOrderInWaitByUserID(int aid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Order where UserID="+aid+" and Status='In wait'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Order> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int orderID=rs.getInt("OrderID");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int productID=rs.getInt("ProductID");
//            int userID=rs.getInt("UserID");
            int price=rs.getInt("Price");
            int quantity=rs.getInt("Quantity");
            Date startDate=rs.getDate("StartDate");
            Date endDate=rs.getDate("EndDate");
            String status=rs.getString("Status");
            a.add(new Order(orderID, serviceID, providerID, productID, aid, price, quantity, startDate, endDate, status));
        }
        rs.close();
        conn.close();
        return a;
    }
}
