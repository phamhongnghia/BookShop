/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.model.TypeBook;

/**
 *
 * @author Pham Hong Nghia
 */
public class TypeBook {

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
     * @return the tenloai
     */
    public String getTenloai() {
        return tenloai;
    }

    /**
     * @param tenloai the tenloai to set
     */
    public void setTenloai(String tenloai) {
        this.tenloai = tenloai;
    }
    private String maloai, tenloai;
    
}
