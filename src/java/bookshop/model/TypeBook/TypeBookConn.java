/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.TypeBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import bookshop.model.Product.ProductConn;

/**
 *
 * @author Pham Hong Nghia
 */
public class TypeBookConn {
    
    public static List listType(){
        List<TypeBook> list = new ArrayList<>();
        try {
            Connection conn = ProductConn.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from loaisanpham");
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                TypeBook ty = new TypeBook();
                ty.setMaloai(rs.getString("maloai"));
                ty.setTenloai(rs.getString("tenloai"));
                list.add(ty);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
