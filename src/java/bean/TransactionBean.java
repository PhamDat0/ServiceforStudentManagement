/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.BuyBalance;
import java.io.Serializable;
import java.util.List;
import model.BuyBalanceDAO;

/**
 *
 * @author Phong
 */
public class TransactionBean implements Serializable {
    
    private String accountName;

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }
    
    public List<BuyBalance> getHistory() throws Exception {
        return new BuyBalanceDAO().selectBuyBalanceByName(accountName);
    }
    
    public List<BuyBalance> getAllHistory() throws Exception {
        return new BuyBalanceDAO().selectBuyBalance("SELECT * FROM BuyBalance");
    }
}
