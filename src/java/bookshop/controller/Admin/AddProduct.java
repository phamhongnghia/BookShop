/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.controller.Admin;

import bookshop.model.Product.Product;
import bookshop.model.Product.ProductConn;
import bookshop.model.Single.SingleProduct;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pham Hong Nghia
 */
public class AddProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int status = 0;

        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);

        status = ProductConn.checkProduct(data.get("masp").getAsInt());

        if (status > 0) {
            if (ProductConn.checkDetailProduct(data.get("masp").getAsInt()) > 0) {
                out.write("Đã có sản phẩm ở đây ! giờ phải sửa");
            } else {
                SingleProduct sp = new SingleProduct();

                sp.setMasp(data.get("masp").getAsInt());
                sp.setNhacungcap(data.get("nhacungcap").getAsString());
                sp.setNhaxuatban(data.get("nhaxuatban").getAsString());
                sp.setTacgia(data.get("tacgia").getAsString());
                sp.setHinhthuc(data.get("hinhthuc").getAsString());
                sp.setNguoidich(data.get("nguoidich").getAsString());
                sp.setMota(data.get("mota").getAsString());
                sp.setNoidung(data.get("noidung").getAsString());
                sp.setNamxuatban(data.get("namxuatban").getAsInt());
                sp.setTrongluong(data.get("trongluong").getAsInt());
                sp.setSotrang(data.get("sotrang").getAsInt());

                ProductConn.insertDetailProduct(sp);
                out.write("Chưa có chi tiết, Nhưng đã thêm chi tiết thành công !");
            }
        } else {
            Product pr = new Product();

            pr.setMaloai(data.get("maloai").getAsString());
            pr.setTensp(data.get("tensp").getAsString());
            pr.setHinhanh(data.get("hinhanh").getAsString());
            pr.setGiagoc(data.get("giagoc").getAsInt());
            pr.setGiamgia(data.get("giamgia").getAsInt());

            int dem = ProductConn.insertProduct(pr);

            if (dem > 0) {
                SingleProduct sp = new SingleProduct();

                sp.setMasp(data.get("masp").getAsInt());
                sp.setNhacungcap(data.get("nhacungcap").getAsString());
                sp.setNhaxuatban(data.get("nhaxuatban").getAsString());
                sp.setTacgia(data.get("tacgia").getAsString());
                sp.setHinhthuc(data.get("hinhthuc").getAsString());
                sp.setNguoidich(data.get("nguoidich").getAsString());
                sp.setMota(data.get("mota").getAsString());
                sp.setNoidung(data.get("noidung").getAsString());
                sp.setNamxuatban(data.get("namxuatban").getAsInt());
                sp.setTrongluong(data.get("trongluong").getAsInt());
                sp.setSotrang(data.get("sotrang").getAsInt());

                ProductConn.insertDetailProduct(sp);
                out.write("Chưa có sản phẩm và chi tiết. Đã thêm sản phẩm và chi tiết thành công !");
            } else {
                out.write("Không thêm được !");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
