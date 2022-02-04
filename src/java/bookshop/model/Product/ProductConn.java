/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Product;

import bookshop.model.Single.SingleProduct;
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
    
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshop", "myroot", "12345678");
        } catch (Exception e) {
            System.out.println(e);
        }
        return conn;
    }

    // Insert Product
    public static int insertProduct(Product pr) {
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into sanpham(maloai, tensp, hinhanh, giagoc, giamgia) values (?,?,?,?,?)");

            ps.setString(1, pr.getMaloai());
            ps.setString(2, pr.getTensp());
            ps.setString(3, pr.getHinhanh());
            ps.setInt(4, pr.getGiagoc());
            ps.setInt(5, pr.getGiamgia());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Update product
    public static int updateProduct(Product pr){
        int status = 0;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // Insert detail product
    public static int insertDetailProduct(SingleProduct sp) {
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into chitietsanpham(masp, nhacungcap, nhaxuatban, tacgia, hinhthuc, nguoidich, mota, noidung, namxuatban, trongluong, sotrang) values (?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, sp.getMasp());
            ps.setString(2, sp.getNhacungcap());
            ps.setString(3, sp.getNhaxuatban());
            ps.setString(4, sp.getTacgia());
            ps.setString(5, sp.getHinhthuc());
            if (sp.getNguoidich().equals("")) {
                ps.setString(6, "Không có");
            } else {
                ps.setString(6, sp.getNguoidich());
            }
            ps.setString(7, sp.getMota());
            ps.setString(8, sp.getNoidung());
            ps.setInt(9, sp.getNamxuatban());
            ps.setInt(10, sp.getTrongluong());
            ps.setInt(11, sp.getSotrang());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Update product detail
    public static int updateProductDetail(SingleProduct sp){
        int status = 0;
        try {
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static List getProduct() {
        List<Product> ls = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sanpham");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
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
            e.printStackTrace();
        }
        return ls;
    }
    
    // Get product flow masp
    public static Product getProduct(int masp){
        Product pr = new Product();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sanpham where masp = ?");
            ps.setInt(1, masp);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                pr.setMasp(masp);
                pr.setTensp(rs.getString("tensp"));
                pr.setGiagoc(rs.getInt("giagoc"));
                pr.setGiamgia(rs.getInt("giamgia"));
                pr.setHinhanh(rs.getString("hinhanh"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
    
    
    // Get count product
    public static int getCountProduct() {
        int count = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select masp from sanpham order by masp desc limit 1");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    // Check product in sanpham
    public static int checkProduct(int masp) {
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from sanpham where masp = ?");
            ps.setInt(1, masp);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                status = 1;
            } else {
                status = 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // Check product in chitietsanpham
    public static int checkDetailProduct(int masp) {
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from chitietsanpham where masp = ?");
            ps.setInt(1, masp);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                status = 1;
            } else {
                status = 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Delete product
    public static int deleteProduct(int masp){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from sanpham where masp = ?");
            ps.setInt(1, masp);
            
            status = ps.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Delete detail product
    public static int deleteDetail(int masp){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from chitietsanpham where masp = ?");
            ps.setInt(1, masp);
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
