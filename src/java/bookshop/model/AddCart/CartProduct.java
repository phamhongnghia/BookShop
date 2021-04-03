/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.AddCart;

/**
 *
 * @author Pham Hong Nghia
 */
public class CartProduct {

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
     * @return the giamgia
     */
    public int getGiamgia() {
        return giamgia;
    }

    /**
     * @param giamgia the giamgia to set
     */
    public void setGiamgia(int giamgia) {
        this.giamgia = giamgia;
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
     * @return the giagoc
     */
    public int getGiagoc() {
        return giagoc;
    }

    /**
     * @param giagoc the giagoc to set
     */
    public void setGiagoc(int giagoc) {
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
    private String tendangnhap, tensp, hinhanh;
    private int id, masp, giagoc, giamgia, soluong, thanhtien;
}
