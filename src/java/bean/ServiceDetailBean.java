/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Product;
import entity.Service;
import java.io.Serializable;
import java.util.List;
import model.ProductDAO;
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class ServiceDetailBean implements Serializable {
    
    private String providerName;
    private String serviceName;
    
    public ServiceDetailBean() {
        
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }
    
    public List<Service> getServiceList() throws Exception {
        String query = "SELECT * FROM Service";
        return new ServiceDAO().selectService(query);
    }
    
    public List<Product> getProduct() throws Exception {
        String query = "SELECT * FROM Product";
        return new ProductDAO().selectProductByServiceID(0);
    }
}
