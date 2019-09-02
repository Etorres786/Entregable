/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Arley
 */
@WebServlet(name = "EditarInventario", urlPatterns = {"/EditarInventario"})
public class EditarInventario extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            HttpSession ses = request.getSession();
            if ((ses.getAttribute("rol")) == null) {
                response.sendRedirect("index.jsp");
            } else {
                String Tarea = request.getParameter("Tarea");
                String i = request.getParameter("Id");
                int ide = Integer.parseInt(i);
                String producto = request.getParameter("producto");
                String cant = request.getParameter("cantidad");
                int cantidad = Integer.parseInt(cant);
                String valor_unit = request.getParameter("valorunitario");
                int valorunit = Integer.parseInt(valor_unit);
                String valor_tot = request.getParameter("valortotal");
                try {
                    ConectaDB con = new ConectaDB();
                    Connection c = con.conectar();
                    Statement stm = c.createStatement();
                    String query = "UPDATE INVENTARIOS SET PRODUCTO='" + producto + "',CANTIDAD=" + cantidad + ",VALOR_UNITARIO=" + valorunit + ",VALOR_TOTAL=" + cantidad * valorunit + " WHERE Id=" + ide + ";";
                    stm.executeUpdate(query);
                    con.cierraConexion();
                    c.close();
                    stm.close();
                    if (Tarea == null) {
                        response.sendRedirect("ListarInventario");

                    } else {
                        response.sendRedirect("ListarInventario?Tarea=ListarProductos");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
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
