/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Product;
import com.DBContext;
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
    public List<Product> selectProductByProviderName(String pName) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Product where ProviderName="+pName;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Product> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            String productName=rs.getString("ProductName");
            int serviceID=rs.getInt("ServiceID");
            String providerName=rs.getString("ProviderName");
            int quantity=rs.getInt("Quantity");
            int price=rs.getInt("Price");
            int unit=rs.getInt("Unit");
            a.add(new Product(productName, serviceID, providerName, quantity, price, unit));
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
            String productName=rs.getString("ProductName");
            int serviceID=rs.getInt("ServiceID");
            String providerName=rs.getString("ProviderName");
            int quantity=rs.getInt("Quantity");
            int price=rs.getInt("Price");
            int unit=rs.getInt("Unit");
            a.add(new Product(productName, serviceID, providerName, quantity, price, unit));
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
            String productName=rs.getString("ProductName");
            int serviceID=rs.getInt("ServiceID");
            String providerName=rs.getString("ProviderName");
            int quantity=rs.getInt("Quantity");
            int price=rs.getInt("Price");
            int unit=rs.getInt("Unit");
            a.add(new Product(productName, serviceID, providerName, quantity, price, unit));
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
            ps.setString(1, a.getProductName());
            ps.setInt(2, a.getServiceID());
            ps.setString(3, a.getProviderName());
            ps.setInt(4, a.getQuantity());
            ps.setInt(5, a.getPrice());
            ps.setInt(6, a.getUnit());
            ps.executeUpdate();
            conn.close();
    }
}
