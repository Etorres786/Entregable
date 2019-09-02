/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Logs;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static org.hibernate.validator.internal.util.CollectionHelper.newArrayList;

/**
 *
 * @author Edwin
 */
@WebServlet(name = "ListarLog", urlPatterns = {"/ListarLog"})
public class ListarLog extends HttpServlet {

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
            ArrayList<Logs> Listar = newArrayList();
            Listar.clear();
            try {
                ConectaDB con = new ConectaDB();
                HttpSession ses = request.getSession();
                String rol;
                String no;
                if ((ses.getAttribute("rol")) == null) {
                    response.sendRedirect("index.jsp");
                } else {
                    if ((ses.getAttribute("rol")) == null && ses.getAttribute("nombre") == null) {
                        rol = "Invitado";
                        no = "Generico";
                    } else {
                        rol = (String) ses.getAttribute("rol");
                    }
                    if (rol.equalsIgnoreCase("admins")) {
                        con.setUsuario("DBA");
                        con.setClave("123");
                    } else if (rol.equalsIgnoreCase("cliente")) {
                        con.setUsuario("CLIENTE");
                        con.setClave("123");

                    } else if (rol.equalsIgnoreCase("admin")) {
                        con.setUsuario("ADMIN");
                        con.setClave("123");
                    } else if (rol.equalsIgnoreCase("empleado")) {
                        con.setUsuario("EMPLEADO");
                        con.setClave("123");
                    };
                    Connection c = con.conectar();
                    String query = "SELECT * FROM LOGS ";
                    Statement st = c.createStatement();
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        Logs l = new Logs();
                        l.setId(Integer.parseInt(rs.getString(1)));
                        l.setFecha(rs.getDate(2));
                        l.setRol(rs.getString(3));
                        l.setUsuario(rs.getString(4));
                        l.setAccion(rs.getString(5));
                        Listar.add(l);
                    }
                    con.cierraConexion();
                    ses.setAttribute("Listar", Listar);
                    response.sendRedirect("logs.jsp");
                }
            } catch (Exception e) {
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
