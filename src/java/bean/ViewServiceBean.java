/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Service;
import java.io.Serializable;
import java.util.List;
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class ViewServiceBean implements Serializable {
    
    private String selectType;
    private String accountName;
    
    public ViewServiceBean() {
        this.selectType = "";
    }

    public String getSelectType() {
        return selectType;
    }

    public void setSelectType(String selectType) {
        this.selectType = selectType;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }
    
    public List<Service> getService() throws Exception {
        String query = "SELECT * FROM Service";
        if (selectType == null || selectType.equals("") || selectType.equals("mySer")) {
            query = "SELECT s.* FROM [Order] o LEFT JOIN [Service] s"
                    + " ON o.ServiceID = s.ServiceID"
                    + " WHERE o.UserName LIKE '" + accountName + "'"
                    + " AND o.Status LIKE 'In Use'";
        }
        return new ServiceDAO().selectService(query);
    }
}
