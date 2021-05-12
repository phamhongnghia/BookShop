/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.controller.BookShop;

import bookshop.model.Account.AdminConn;
import bookshop.model.OrderProduct.OrderProduct;
import bookshop.model.Product.Product;
import bookshop.model.Product.ProductConn;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pham Hong Nghia
 */
public class SellingProduct extends HttpServlet {

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
        List<OrderProduct> list = AdminConn.getAllBill();
        List<Product> arr = new ArrayList<Product>();
        int dem = 1;
        for(int i = 0 ; i < list.size() ; i++){
            for(int j = i + 1 ; j < list.size() ; j++){
                if(list.get(j).getMasp() == list.get(i).getMasp()){
                    dem = dem + 1;
                }
            }
            Product pr = ProductConn.getProduct(list.get(i).getMasp());
            pr.setDem(dem);
            arr.add(pr);
            dem = 1;
        }
        
        for(int i = 0 ; i < arr.size() ; i ++){
            for(int j = i + 1 ; j < arr.size() ; j ++){
                if(arr.get(j).getMasp() == arr.get(i).getMasp()){
                    arr.remove(j);
                }
            }
        }
        String getSell = new Gson().toJson(arr);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.write(getSell);
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
