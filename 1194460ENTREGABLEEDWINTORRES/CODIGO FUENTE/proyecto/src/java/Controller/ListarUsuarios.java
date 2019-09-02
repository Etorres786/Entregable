/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Personas;
import Model.Usuarios;
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
@WebServlet(name = "ListarUsuarios", urlPatterns = {"/ListarUsuarios"})
public class ListarUsuarios extends HttpServlet {

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
            if (ses.getAttribute("rol") == null) {
                response.sendRedirect("index.jsp");
            } else {
                ArrayList<Usuarios> ListarUsuarios = new ArrayList();
                ArrayList<Personas> ListarPersonas = new ArrayList();
                String query = "SELECT PERSONAS.NOMBRE,PERSONAS.APELLIDOS,USUARIOS.CEDULA,ROLES.NOMBRE,USUARIOS.NOMBRE FROM PERSONAS"
                        + " INNER JOIN USUARIOS ON PERSONAS.CEDULA=USUARIOS.CEDULA INNER JOIN ROLES ON USUARIOS.ROL_ID=ROLES.ID;";

                ConectaDB c = new ConectaDB();
                Connection Con = c.conectar();
                Statement stm = Con.createStatement();
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    Personas p = new Personas();
                    Usuarios U = new Usuarios();
                    p.setNombre(rs.getString(1));
                    p.setApellidos(rs.getString(2));
                    U.setCedula(rs.getInt(3));
                    U.setRolId(rs.getString(4));
                    U.setNombre(rs.getString(5));
                    ListarPersonas.add(p);
                    ListarUsuarios.add(U);
                }
                c.cierraConexion();
                ses.setAttribute("ListarUsuarios", ListarUsuarios);
                ses.setAttribute("ListarPersonas", ListarUsuarios);

                response.sendRedirect("Usuarios.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ListarUsuarios.class.getName()).log(Level.SEVERE, null, ex);
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
