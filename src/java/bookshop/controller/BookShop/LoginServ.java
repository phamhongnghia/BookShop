/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookshop.controller.BookShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bookshop.model.Account.Account;
import bookshop.model.Account.AccountConn;

/**
 *
 * @author Pham Hong Nghia
 */
public class LoginServ extends HttpServlet {

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
        try {
            String tendangnhap = request.getParameter("tendangnhap");
            String matkhau = request.getParameter("matkhau");

            boolean isValid = AccountConn.checkLogin(tendangnhap, matkhau);
            
            HttpSession session = request.getSession();

            if (isValid) {
                
                Account acc = AccountConn.getAccount(tendangnhap, matkhau);
                
                if(acc.getQuyentruycap().equals("admin")){
                    session.setAttribute("tendangnhap", acc.getTendangnhap());
                    session.setAttribute("matkhau", acc.getMatkhau());
                    session.setAttribute("hinhanh", acc.getHinhanh());
                    session.setAttribute("quyentruycap", acc.getQuyentruycap());
                    
                    RequestDispatcher ds = getServletContext().getRequestDispatcher("/dashboard.jsp");
                    ds.forward(request, response);
                }else {
                    if (acc.getQuyentruycap().equals("member")) {
                        session.setAttribute("tendangnhap", acc.getTendangnhap());
                        session.setAttribute("matkhau", acc.getMatkhau());
                        session.setAttribute("hoten", acc.getHoten());
                        session.setAttribute("sodienthoai", acc.getSodienthoai());
                        session.setAttribute("hinhanh", acc.getHinhanh());
                        session.setAttribute("diachi", acc.getDiachi());

                        session.setAttribute("error", "true");
                        response.sendRedirect("");
//                        RequestDispatcher ds = getServletContext().getRequestDispatcher("/index.jsp");
//                        ds.forward(request, response);
                    }
                }
            } else {
                session.setAttribute("error", "false");
                response.sendRedirect("register.jsp");
            }
        } finally {
            out.close();
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
