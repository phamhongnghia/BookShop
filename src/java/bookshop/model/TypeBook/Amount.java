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
public class Amount {

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
    private String maloai;
    private int soluong;
}
