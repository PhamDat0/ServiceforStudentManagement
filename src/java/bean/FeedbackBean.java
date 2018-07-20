/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Account;
import entity.Service;
import java.util.List;
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class FeedbackBean {

    private Account account;
    private List<Service> serviceList = null;
    
    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Service> getServiceList() throws Exception {
        if (serviceList == null) {
        String query = "SELECT s.* FROM \n"
                + " (SELECT ServiceID FROM [Order] "
                + " WHERE UserName LIKE '"+account.getAccountName()+"'"
                + " GROUP BY ServiceID) hihi \n"
                + " LEFT JOIN [Service] s \n"
                + " ON hihi.ServiceID = s.ServiceID";
        serviceList = new ServiceDAO().selectService(query);
        }
        return serviceList;
    }
}
