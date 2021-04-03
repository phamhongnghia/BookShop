/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Single;

import java.sql.*;
import bookshop.model.Product.ProductConn;
import static bookshop.model.Product.ProductConn.getConnection;

/**
 *
 * @author Pham Hong Nghia
 */
public class SingleProductConn {
    public static SingleProduct getSingle(String masp){
        SingleProduct sp = new SingleProduct();
        try {
            Connection conn = getConnection();
            PreparedStatement psSingle = conn.prepareStatement("select * from sanpham where masp = ?");
            PreparedStatement psDetail = conn.prepareStatement("select * from chitietsanpham where masp = ?");
            psSingle.setString(1, masp);
            psDetail.setString(1, masp);
            
            ResultSet rs1 = psSingle.executeQuery();
            ResultSet rs2 = psDetail.executeQuery();
            while(rs1.next()){
                sp.setMasp(rs1.getInt("masp"));
                sp.setMaloai(rs1.getString("maloai"));
                sp.setTensp(rs1.getString("tensp"));
                sp.setHinhanh(rs1.getString("hinhanh"));
                sp.setGiagoc(rs1.getInt("giagoc"));
                sp.setGiamgia(rs1.getInt("giamgia"));
            }
            while(rs2.next()){
                sp.setNhacungcap(rs2.getString("nhacungcap"));
                sp.setNhaxuatban(rs2.getString("nhaxuatban"));
                sp.setTacgia(rs2.getString("tacgia"));
                sp.setHinhthuc(rs2.getString("hinhthuc"));
                sp.setNguoidich(rs2.getString("nguoidich"));
                sp.setMota(rs2.getString("mota"));
                sp.setNoidung(rs2.getString("noidung"));
                sp.setNamxuatban(rs2.getInt("namxuatban"));
                sp.setTrongluong(rs2.getInt("trongluong"));
                sp.setSotrang(rs2.getInt("sotrang"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sp;
    }
}
