<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Product;
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
public class ProductDAO {

    public List<Product> selectProductByProviderID(int pid) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Product where ProviderID=" + pid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int productID = rs.getInt("ProductID");
            String productName = rs.getString("ProductName");
            int serviceID = rs.getInt("ServiceID");
            int providerID = rs.getInt("ProviderID");
            int price = rs.getInt("Price");
            int duration = rs.getInt("Duration");
            a.add(new Product(productID, productName, serviceID, providerID, price, duration));
        }
        rs.close();
        conn.close();
        return a;
    }

    public List<Product> selectProductByServiceID(int sid) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Product where ServiceID=" + sid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int productID = rs.getInt("ProductID");
            String productName = rs.getString("ProductName");
            int serviceID = rs.getInt("ServiceID");
            int providerID = rs.getInt("ProviderID");
            int price = rs.getInt("Price");
            int duration = rs.getInt("Duration");
            a.add(new Product(productID, productName, serviceID, providerID, price, duration));
        }
        rs.close();
        conn.close();
        return a;
    }

    public List<Product> selectProductByProductID(int pid) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Product where ProductID=" + pid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int productID = rs.getInt("ProductID");
            String productName = rs.getString("ProductName");
            int serviceID = rs.getInt("ServiceID");
            int providerID = rs.getInt("ProviderID");
            int price = rs.getInt("Price");
            int duration = rs.getInt("Duration");
            a.add(new Product(productID, productName, serviceID, providerID, price, duration));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void insertProduct(Product a) throws Exception {
        String query = "insert into Product values(?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, a.getProductName());
        ps.setInt(2, a.getServiceID());
        ps.setInt(3, a.getProviderID());
        ps.setInt(4, (a.getPrice()));
        ps.setInt(5, a.getDuration());
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

import entity.Product;
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
public class ProductDAO {
    
    public List<Product> selectProductByProviderID(int pid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Product where ProviderID="+pid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int productID=rs.getInt("ProductID");
            String productName=rs.getString("ProductName");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int price=rs.getInt("Price");
            int duration=rs.getInt("Duration");
            a.add(new Product(productID, productName, serviceID, providerID, price, duration));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Product> selectProductByServiceID(int sid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Product where ServiceID="+sid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int productID=rs.getInt("ProductID");
            String productName=rs.getString("ProductName");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int price=rs.getInt("Price");
            int duration=rs.getInt("Duration");
            a.add(new Product(productID, productName, serviceID, providerID, price, duration));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Product> selectProductByProductID(int pid) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Product where ProductID="+pid;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int productID=rs.getInt("ProductID");
            String productName=rs.getString("ProductName");
            int serviceID=rs.getInt("ServiceID");
            int providerID=rs.getInt("ProviderID");
            int price=rs.getInt("Price");
            int duration=rs.getInt("Duration");
            a.add(new Product(productID, productName, serviceID, providerID, price, duration));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void insertProduct(Product a) throws Exception
    {
            String query="insert into Product values(?,?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1,a.getProductID());
            ps.setString(2, a.getProductName());
            ps.setInt(3, a.getServiceID());
            ps.setInt(4, a.getProviderID());
            ps.setInt(5, (a.getPrice()));
            ps.setInt(6, a.getDuration());
            ps.executeUpdate();
            conn.close();
    }
}
>>>>>>> 23aa4c1c75df345ccccfbdd78cade15c6d3fe48a
