/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Proveedores;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Edwin
 */
@WebServlet(name = "ListarProveedor", urlPatterns = {"/ListarProveedor"})
public class ListarProveedor extends HttpServlet {

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
            String Tarea = request.getParameter("Tarea");
            ArrayList<Proveedores> Listar = new ArrayList();
            ConectaDB C = new ConectaDB();
            HttpSession ses = request.getSession();
            if (ses.getAttribute("rol") == null) {
                response.sendRedirect("index.jsp");
            } else {
                Connection con = C.conectar();

                String query;

                if (Tarea == null) {
                    query = "SELECT * FROM PROVEEDORES WHERE HABILITADO=1;";
                } else {
                    query = "SELECT * FROM PROVEEDORES;";
                }
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    Proveedores p = new Proveedores();
                    p.setId(rs.getInt(1));
                    p.setNit(rs.getString(2));
                    p.setRazonSocial(rs.getString(3));
                    p.setNombreContacto(rs.getString(4));
                    p.setTelefono(rs.getString(5));
                    p.setEmail(rs.getString(6));
                    p.setDireccion(rs.getString(7));

                    boolean Estado = rs.getBoolean(8);
                    String est;
                    if (Estado) {
                        est = "Habilitado";
                    } else {
                        est = "Deshabilitado";
                    }
                    p.setHabilitado(est);
                    Listar.add(p);
                }
                C.cierraConexion();
                ses.setAttribute("ListarProveedor", Listar);

                if (Tarea == null) {
                    response.sendRedirect("proveedores.jsp");
                } else {
                    response.sendRedirect("AdminProveedores.jsp");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ListarProveedor.class.getName()).log(Level.SEVERE, null, ex);
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
