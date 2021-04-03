/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Cart;

/**
 *
 * @author Pham Hong Nghia
 */
public class ProductCart {

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
     * @return the tensp
     */
    public String getTensp() {
        return tensp;
    }

    /**
     * @param tensp the tensp to set
     */
    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    /**
     * @return the giasp
     */
    public String getGiasp() {
        return giasp;
    }

    /**
     * @param giasp the giasp to set
     */
    public void setGiasp(String giasp) {
        this.giasp = giasp;
    }

    /**
     * @return the giagoc
     */
    public String getGiagoc() {
        return giagoc;
    }

    /**
     * @param giagoc the giagoc to set
     */
    public void setGiagoc(String giagoc) {
        this.giagoc = giagoc;
    }

    /**
     * @return the soluong
     */
    public int getSoluong() {
        return soluong;
    }

    /**
     * @param soluong the soluong to set
     */
    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    /**
     * @return the thanhtien
     */
    public int getThanhtien() {
        return thanhtien;
    }

    /**
     * @param thanhtien the thanhtien to set
     */
    public void setThanhtien(int thanhtien) {
        this.thanhtien = thanhtien;
    }
    private String tendangnhap, tensp, giasp, giagoc;
    private int masp, soluong, thanhtien;
}
