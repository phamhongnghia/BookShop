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
import bookshop.model.Account.getMD5;

/**
 *
 * @author Pham Hong Nghia
 */
public class RegisterServ extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        try {

            String tendangnhap = request.getParameter("tendangnhap");
            String matkhau = request.getParameter("matkhau");
            String hoten = request.getParameter("hoten");
            String email = request.getParameter("email");
            String sodienthoai = request.getParameter("sodienthoai");
            String diachi = request.getParameter("diachi");
            
            String getPass = getMD5.passMd5(matkhau);
            
            Account acc = new Account();
            acc.setTendangnhap(tendangnhap);
            acc.setMatkhau(getPass);
            acc.setHoten(hoten);
            acc.setEmail(email);
            acc.setSodienthoai(sodienthoai);
            acc.setDiachi(diachi);

            int status = 0;

            status = AccountConn.addUser(acc);
            
            if (status > 0) {
                session.setAttribute("errorRes", "true");
                RequestDispatcher ds = request.getRequestDispatcher("/register.jsp");
                ds.forward(request, response);
            }else{
                session.setAttribute("errorRes", "false");
                RequestDispatcher ds = request.getRequestDispatcher("/register.jsp");
                ds.forward(request, response);
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
