/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Inventarios;
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

/**
 *
 * @author ficha1194460
 */
@WebServlet(name = "ListarInventario", urlPatterns = {"/ListarInventario"})
public class ListarInventario extends HttpServlet {

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
            ArrayList<Inventarios> Listar = new ArrayList();
            Listar.clear();
            try {
                ConectaDB con = new ConectaDB();
                Connection c = con.conectar();
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

                    String query = "";

                    if (Tarea == null) {
                        query = "SELECT * FROM INVENTARIOS WHERE HABILITADO=1;";
                    } else {
                        query = "SELECT * FROM INVENTARIOS;";
                    }

                    Statement Stm = c.createStatement();
                    ResultSet res = Stm.executeQuery(query);
                    while (res.next()) {
                        Inventarios i = new Inventarios();
                        i.setId(Integer.parseInt(res.getString(1)));
                        i.setFecha(res.getDate(2));
                        i.setProducto(res.getString(3));
                        i.setCantidad(Integer.parseInt(res.getString(4)));
                        i.setValorUnitario(Integer.parseInt(res.getString(5)));
                        i.setValorTotal(Integer.parseInt(res.getString(6)));

                        boolean Estado = res.getBoolean(7);
                        String est;
                        if (Estado) {

                            est = "Habilitado";
                        } else {
                            est = "Deshabilitado";
                        }
                        i.setHabilitado(est);
                        Listar.add(i);
                    }
                    con.cierraConexion();
                    ses.setAttribute("ListarInv", Listar);

                    if (Tarea == null) {
                        response.sendRedirect("inventario.jsp");
                    } else {
                        response.sendRedirect("AdminInventario.jsp");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
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
