/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.Product;

/**
 *
 * @author Pham Hong Nghia
 */
public class Product {

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
     * @return the maloai
     */
    public String getMaloai() {
        return maloai;
    }

    /**
     * @param maloai the maloai to set
     */
    public void setMaloai(String maloai) {
        this.maloai = maloai;
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
    private int masp;
    private String maloai;
    private String tensp;
    private String hinhanh;
    private int giagoc;
    private int giamgia;
}
