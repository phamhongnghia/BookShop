/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static bookshop.model.Account.AccountConn.getConnection;

/**
 *
 * @author Pham Hong Nghia
 */
public class FeedbackConn {
    public static List getFeedback(String masp){
        List<Feedback> list = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from feedback where masp = ?");
            ps.setString(1, masp);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Feedback fb = new Feedback();
                fb.setId(rs.getInt("id"));
                fb.setTendangnhap(rs.getString("tendangnhap"));
                fb.setHoten(rs.getString("hoten"));
                fb.setHinhanh(rs.getString("hinhanh"));
                fb.setNoidung(rs.getString("noidung"));
                fb.setNgaydang(rs.getString("ngaydang"));
                list.add(fb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static int postFeedback(Feedback fb){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into feedback(tendangnhap, masp, hoten, hinhanh, noidung, ngaydang) values(?,?,?,?,?,NOW())");
            ps.setString(1, fb.getTendangnhap());
            ps.setInt(2, fb.getMasp());
            ps.setString(3, fb.getHoten());
            ps.setString(4, fb.getHinhanh());
            ps.setString(5, fb.getNoidung());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    public static int updateImage(Feedback fb){
        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update feedback set hinhanh = ? where tendangnhap = ?");
            ps.setString(1, fb.getHinhanh());
            ps.setString(2, fb.getTendangnhap());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
