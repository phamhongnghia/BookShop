/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.controller.BookShop;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bookshop.model.OrderProduct.OrderProduct;
import bookshop.model.OrderProduct.OrderProductConn;

/**
 *
 * @author Pham Hong Nghia
 */
public class Order extends HttpServlet {

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
        OrderProduct od = new OrderProduct();
        
        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        
        od.setTendangnnhap(data.get("tendangnhap").getAsString());
        od.setMasp(data.get("masp").getAsInt());
        od.setHoten(data.get("hoten").getAsString());
        od.setSodienthoai(data.get("sodienthoai").getAsString());
        od.setDiachi(data.get("diachi").getAsString());
        od.setTensp(data.get("tensp").getAsString());
        od.setGiagoc(Integer.parseInt(data.get("giagoc").getAsString()));
        od.setGiamgia(Integer.parseInt(data.get("giamgia").getAsString()));
        od.setSoluong(Integer.parseInt(data.get("soluong").getAsString()));
        od.setThanhtien(Integer.parseInt(data.get("thanhtien").getAsString()));
        
        int status = 0;
        status = OrderProductConn.addOrder(od);
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
