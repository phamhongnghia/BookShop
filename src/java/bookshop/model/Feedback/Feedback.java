/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Feedback;

/**
 *
 * @author Pham Hong Nghia
 */
public class Feedback {

    /**
     * @return the hinhanh
     */
    public String getHinhanh() {
        return hinhanh;
    }

    /**
     * @param hinhanh the hinhanh to set
     */
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    /**
     * @return the masp
     */
    public int getMasp() {
        return masp;
    }

    /**
     * @param masp the masp to set
     */
    public void setMasp(int masp) {
        this.masp = masp;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the tendangnhap
     */
    public String getTendangnhap() {
        return tendangnhap;
    }

    /**
     * @param tendangnhap the tendangnhap to set
     */
    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    /**
     * @return the hoten
     */
    public String getHoten() {
        return hoten;
    }

    /**
     * @param hoten the hoten to set
     */
    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    /**
     * @return the noidung
     */
    public String getNoidung() {
        return noidung;
    }

    /**
     * @param noidung the noidung to set
     */
    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    /**
     * @return the ngaydang
     */
    public String getNgaydang() {
        return ngaydang;
    }

    /**
     * @param ngaydang the ngaydang to set
     */
    public void setNgaydang(String ngaydang) {
        this.ngaydang = ngaydang;
    }
    private int id, masp;
    private String tendangnhap, hoten, hinhanh, noidung, ngaydang;
}
