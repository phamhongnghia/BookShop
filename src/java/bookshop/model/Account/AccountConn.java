/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Account;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bookshop.model.AddCart.CartProduct;
import bookshop.model.OrderProduct.OrderProduct;

/**
 *
 * @author Pham Hong Nghia
 */
public class AccountConn {

    
    public static Connection getConnection(){
        
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshop","myroot","12345678");
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return conn;
    }
    
    // Register
    
    public static int addUser(Account acc){
        int status = 0;
        
        try {
            
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into khachhang (tendangnhap, matkhau, hoten, email, sodienthoai, diachi) values(?,?,?,?,?,?)");
            ps.setString(1, acc.getTendangnhap());
            ps.setString(2, acc.getMatkhau());
            ps.setString(3, acc.getHoten());
            ps.setString(4, acc.getEmail());
            ps.setString(5, acc.getSodienthoai());
            ps.setString(6, acc.getDiachi());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return status;
    }
    
    // Login
    
    public static boolean checkLogin(String tendangnhap, String matkhau){
        boolean isValid = false;
        
        try {
            
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from khachhang where tendangnhap = ? and matkhau = ?");
            ps.setString(1, tendangnhap);
            ps.setString(2, matkhau);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                isValid = true;
            }else{
                isValid = false;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return isValid;
    }
    
    // Get account
    
    public static Account getAccount(String tendangnhap, String matkhau){
        Account acc = new Account();
        
        try {
            
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from khachhang where tendangnhap = ? and matkhau = ?");
            ps.setString(1, tendangnhap);
            ps.setString(2, matkhau);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                acc.setTendangnhap(rs.getString("tendangnhap"));
                acc.setMatkhau(rs.getString("matkhau"));
                acc.setHoten(rs.getString("hoten"));
                acc.setEmail(rs.getString("email"));
                acc.setSodienthoai(rs.getString("sodienthoai"));
                acc.setDiachi(rs.getString("diachi"));
                acc.setHinhanh(rs.getString("hinhanh"));
                acc.setQuyentruycap(rs.getString("quyentruycap"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return acc;
    }
    
    // GET Order Product Of Account
    
    public static List getOrder(String tendangnhap){
        List<OrderProduct> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from donhang where tendangnhap = ?");
            ps.setString(1, tendangnhap);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                OrderProduct od = new OrderProduct();
                od.setMahd(rs.getInt("mahd"));
                od.setMasp(rs.getInt("masp"));
                od.setHoten(rs.getString("hoten"));
                od.setSodienthoai(rs.getString("sodienthoai"));
                od.setTensp(rs.getString("tensp"));
                od.setNgaytao(rs.getString("ngaytao"));
                od.setGiagoc(rs.getInt("giagoc"));
                od.setGiamgia(rs.getInt("giamgia"));
                od.setSoluong(rs.getInt("soluong"));
                od.setThanhtien(rs.getInt("thanhtien"));
                list.add(od);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    // GET product of cart
    public static List getCartSingle(String tendangnhap){
        List<CartProduct> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from giohang where tendangnhap = ?");
            ps.setString(1, tendangnhap);
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
            e.printStackTrace();
        }
        return list;
    }
    
    // Delete product of cart
    public static int deleteCart(int id, String tendangnhap){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from giohang where id = ? and tendangnhap = ?");
            ps.setInt(1, id);
            ps.setString(2, tendangnhap);
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    
    // Change information account
    
    public static int updateAccount(Account acc){
        int status = 0 ;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update khachhang set hoten = ?, email = ?, sodienthoai = ?, diachi = ? where tendangnhap = ?");
            ps.setString(1, acc.getHoten());
            ps.setString(2, acc.getEmail());
            ps.setString(3, acc.getSodienthoai());
            ps.setString(4, acc.getDiachi());
            ps.setString(5, acc.getTendangnhap());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Update image
    public static int updateImage(Account acc){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update khachhang set hinhanh = ? where tendangnhap = ?");
            ps.setString(1, acc.getHinhanh());
            ps.setString(2, acc.getTendangnhap());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Get new image
    public static String getImage(String tendangnhap){
        String hinhanh = null;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select hinhanh from khachhang where tendangnhap = ?");
            ps.setString(1, tendangnhap);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                hinhanh = rs.getString("hinhanh");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hinhanh;
    }
    
    // Update password
    public static int updatePass(Account acc){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update khachhang set matkhau = ? where tendangnhap = ? and matkhau = ?");
            ps.setString(1, acc.getMatkhau());
            ps.setString(2, acc.getTendangnhap());
            ps.setString(3, acc.getMatkhaucu());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status; 
   }
    
    // Get single bill
    public static OrderProduct getSingleBill(int mahd){
        OrderProduct od = new OrderProduct();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from donhang where mahd = ?");
            ps.setInt(1, mahd);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                od.setMahd(rs.getInt("mahd"));
                od.setMasp(rs.getInt("masp"));
                od.setTensp(rs.getString("tensp"));
                od.setNgaytao(rs.getString("ngaytao"));
                od.setSodienthoai(rs.getString("sodienthoai"));
                od.setSoluong(rs.getInt("soluong"));
                od.setThanhtien(rs.getInt("thanhtien"));
                od.setTrangthai(rs.getString("trangthai"));
                od.setDiachi(rs.getString("diachi"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return od;
    }
    
    // Delete cart of account
    public static int deleteOfCart(String tendangnhap){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from giohang where tendangnhap = ?");
            ps.setString(1, tendangnhap);
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    // Get count id
    public static int getCount(String tendangnhap){
        int count = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select count(mahd) from donhang where tendangnhap = ?");
            ps.setString(1, tendangnhap);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }
    
    // Get limit
    
    public static ArrayList<OrderProduct> getLimit(int a, int b, String tendangnhap){
        ArrayList<OrderProduct> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from donhang where tendangnhap = ? limit ?,?");
            ps.setString(1, tendangnhap);
            ps.setInt(2, a);
            ps.setInt(3, b);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                OrderProduct od = new OrderProduct();
                od.setMahd(rs.getInt("mahd"));
                od.setMasp(rs.getInt("masp"));
                od.setHoten(rs.getString("hoten"));
                od.setSodienthoai(rs.getString("sodienthoai"));
                od.setTensp(rs.getString("tensp"));
                od.setNgaytao(rs.getString("ngaytao"));
                od.setGiagoc(rs.getInt("giagoc"));
                od.setGiamgia(rs.getInt("giamgia"));
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
