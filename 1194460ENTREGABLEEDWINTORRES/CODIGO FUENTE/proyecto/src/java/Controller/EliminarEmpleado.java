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
 * @author EDWIN
 */
@WebServlet(name = "EliminarEmpleado", urlPatterns = {"/EliminarEmpleado"})
public class EliminarEmpleado extends HttpServlet {

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
            String Eliminar = request.getParameter("Eliminar");
            String cedula = request.getParameter("cedula");
            int ced = Integer.parseInt(cedula);
            try {
                ConectaDB con = new ConectaDB();
                Connection c = con.conectar();
                Statement stm = c.createStatement();
                String query = "";
                if (Tarea == null) {
                    query = "UPDATE PERSONAS SET HABILITADO=0 WHERE CEDULA=" + ced + ";";
                    stm.executeUpdate(query);
                    con.cierraConexion();
                    c.close();
                    stm.close();

                    if (Eliminar == null) {
                        response.sendRedirect("ListarEmpleado");
                    } else {
                        response.sendRedirect("ListarEmpleado?Tarea=ListarAdmin");
                    }
                } else {
                    query = "UPDATE PERSONAS SET HABILITADO=1 WHERE CEDULA=" + ced + ";";
                    stm.executeUpdate(query);
                    con.cierraConexion();
                    c.close();
                    stm.close();
                    response.sendRedirect("ListarEmpleado?Tarea=ListarAdmin");
                }

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
