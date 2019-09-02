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
@WebServlet(name = "EditarPedido", urlPatterns = {"/EditarPedido"})
public class EditarPedido extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession ses = request.getSession();
            if ((ses.getAttribute("rol")) == null) {
                response.sendRedirect("index.jsp");
            } else {
                String i = request.getParameter("Id");
                int ide = Integer.parseInt(i);
                String nom = request.getParameter("nombre_cliente");
                String tel = request.getParameter("telefono");
                String dir = request.getParameter("direccion");
                String nomproduto = request.getParameter("nom_producto");
                String cant = request.getParameter("cantidad");
                int canti = Integer.parseInt(cant);
                String Vunit = request.getParameter("val_unit");
                int valunit = Integer.parseInt(Vunit);
                String Vt = request.getParameter("val_total");
                int valtot = Integer.parseInt(Vt);
                String ob = request.getParameter("observaciones");
                try {
                    ConectaDB con = new ConectaDB();
                    Connection c = con.conectar();
                    Statement stm = c.createStatement();
                    String query = "UPDATE PEDIDOS SET nombre_cliente='" + nom + "', TELEFONO='" + tel + "',DIRECCION='" + dir + "',NOMBRE_PRODUCTO='" + nomproduto + "',CANTIDAD=" + canti + ",VALOR_UNITARIO=" + valunit + ",VALOR_TOTAL=" + valtot + ",OBSERVACIONES='" + ob + "' WHERE Id=" + ide + ";";
                    System.out.println(query);
                    stm.executeUpdate(query);
                    con.cierraConexion();
                    c.close();
                    stm.close();
                    response.sendRedirect("ListarPedido");
                } catch (Exception e) {
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
