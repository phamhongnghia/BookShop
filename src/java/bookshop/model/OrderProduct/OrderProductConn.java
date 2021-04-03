/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.OrderProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import bookshop.model.Product.ProductConn;
import static bookshop.model.Product.ProductConn.getConnection;

/**
 *
 * @author Pham Hong Nghia
 */
public class OrderProductConn {
    public static int addOrder(OrderProduct od){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into donhang(tendangnhap, masp, hoten, sodienthoai, diachi, tensp, ngaytao, giagoc, giamgia, soluong, thanhtien) values(?, ?, ?, ?, ?, ?, CURDATE(),?, ?, ?, ?)");
            ps.setString(1, od.getTendangnnhap());
            ps.setInt(2, od.getMasp());
            ps.setString(3, od.getHoten());
            ps.setString(4, od.getSodienthoai());
            ps.setString(5, od.getDiachi());
            ps.setString(6, od.getTensp());
            ps.setInt(7, od.getGiagoc());
            ps.setInt(8, od.getGiamgia());
            ps.setInt(9, od.getSoluong());
            ps.setInt(10, od.getThanhtien());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
