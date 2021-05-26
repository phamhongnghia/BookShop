/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Cart;

import static bookshop.model.Product.ProductConn.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 *
 * @author Pham Hong Nghia
 */
public class ProductCartConn {
    public static ProductCart getProduct(int masp){
        ProductCart pc = new ProductCart();
        
        try {
            
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select tensp,giagoc,giamgia from sanpham where masp = ?");
            ps.setInt(1, masp);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                pc.setMasp(masp);
                pc.setTensp(rs.getString("tensp"));
                pc.setGiagoc(rs.getString("giagoc"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return pc;
    }
}
