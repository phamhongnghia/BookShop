/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Pham Hong Nghia
 */
public class ProductConn {
    public static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshop","root","");
        } catch (Exception e) {
            System.out.println(e);
        }
        return  conn;
    }
    public static List getProduct(){
        List<Product> ls = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sanpham");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product pr = new Product();
                pr.setMasp(rs.getInt("masp"));
                pr.setMaloai(rs.getString("maloai"));
                pr.setTensp(rs.getString("tensp"));
                pr.setHinhanh(rs.getString("hinhanh"));
                pr.setGiagoc(rs.getInt("giagoc"));
                pr.setGiamgia(rs.getInt("giamgia"));
                
                ls.add(pr);
            }
            
        } catch (Exception e) {
        }
        return ls;
    }
    
}
