/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static bookshop.model.Account.AccountConn.getConnection;
import bookshop.model.OrderProduct.OrderProduct;

/**
 *
 * @author Pham Hong Nghia
 */
public class AdminConn {
    public static List getAllUser(){
        List<Account> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from khachhang where quyentruycap = 'member'");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Account acc = new Account();
                acc.setTendangnhap(rs.getString("tendangnhap"));
                acc.setHoten(rs.getString("hoten"));
                acc.setEmail(rs.getString("email"));
                acc.setSodienthoai(rs.getString("sodienthoai"));
                acc.setDiachi(rs.getString("diachi"));
                acc.setQuyentruycap(rs.getString("quyentruycap"));
                list.add(acc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static List getAllBill(){
        List<OrderProduct> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from donhang");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                OrderProduct od = new OrderProduct();
                od.setMahd(rs.getInt("mahd"));
                od.setMasp(rs.getInt("masp"));
                od.setTendangnnhap(rs.getString("tendangnhap"));
                od.setTensp(rs.getString("tensp"));
                od.setSoluong(rs.getInt("soluong"));
                od.setThanhtien(rs.getInt("thanhtien"));
                list.add(od);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
