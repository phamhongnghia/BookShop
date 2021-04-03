/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.RegisterEmail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import bookshop.model.Account.AccountConn;

/**
 *
 * @author Pham Hong Nghia
 */
public class registerEmailConn {
    public static int insertEmail(String email){
        int status = 0;
        try {
            Connection conn = AccountConn.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into dangkyemail(email) values(?)");
            
            ps.setString(1, email);
            status = ps.executeUpdate();
        } catch (Exception e) {
        }
        return status;
    }
}
