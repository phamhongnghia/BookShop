/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.AddCart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static bookshop.model.Product.ProductConn.getConnection;

/**
 *
 * @author Pham Hong Nghia
 */
public class CartProductConn {
    public static int addCart(CartProduct cd){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into giohang(tendangnhap, masp, tensp, hinhanh, giagoc, giamgia, soluong, thanhtien) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, cd.getTendangnhap());
            ps.setInt(2, cd.getMasp());
            ps.setString(3, cd.getTensp());
            ps.setString(4, cd.getHinhanh());
            ps.setInt(5, cd.getGiagoc());
            ps.setInt(6, cd.getGiamgia());
            ps.setInt(7, cd.getSoluong());
            ps.setInt(8, cd.getThanhtien());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    public static int updateQty(CartProduct cd){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update giohang set soluong = ? where id = ?");
            ps.setInt(1, cd.getSoluong());
            ps.setInt(2, cd.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    public static List listCart(){
        List<CartProduct> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from giohang");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                CartProduct cd = new CartProduct();
                cd.setId(rs.getInt("id"));
                cd.setTendangnhap(rs.getString("tendangnhap"));
                cd.setMasp(rs.getInt("masp"));
                cd.setTensp(rs.getString("tensp"));
                cd.setHinhanh(rs.getString("hinhanh"));
                cd.setGiagoc(rs.getInt("giagoc"));
                cd.setGiamgia(rs.getInt("giamgia"));
                cd.setSoluong(rs.getInt("soluong"));
                cd.setThanhtien(rs.getInt("thanhtien"));
                list.add(cd);
            }
        } catch (Exception e) {
        }
        return list;
    }
}
