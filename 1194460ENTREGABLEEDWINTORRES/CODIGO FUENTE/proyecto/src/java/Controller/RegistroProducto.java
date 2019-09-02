/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
@WebServlet(name = "RegistroProducto", urlPatterns = {"/RegistroProducto"})
public class RegistroProducto extends HttpServlet {

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
                String nom = request.getParameter("nombre");
                String precio = request.getParameter("precio");
                float valor = Float.parseFloat(precio);
                String tip = request.getParameter("tipo");
                int tipo = Integer.parseInt(tip);

                String rol = (String) ses.getAttribute("rol");
                String usuario = (String) ses.getAttribute("nombre");
                try {
                    String query = "INSERT INTO PRODUCTOS(NOMBRE,VALOR,TIPO_ID,HABILITADO)"
                            + "VALUES('" + nom + "'," + valor + "," + tipo + "," + 1 + ");";
                    System.out.println(query);
                    ConectaDB con = new ConectaDB();
                    Connection c = con.conectar();
                    PreparedStatement ps = c.prepareStatement("INSERT INTO LOGS(FECHA,ROL,USUARIO,ACCION)"
                            + "VALUES(NOW(),?,?,?)");
                    ps.setString(1, rol);
                    ps.setString(2, usuario);
                    ps.setString(3, query);
                    ps.executeUpdate();
                    System.out.println(ps);
                    Statement st = c.createStatement();
                    st.executeUpdate(query);

                    if (Tarea == null) {
                        response.sendRedirect("ListarProducto");

                    } else {
                        response.sendRedirect("ListarProducto?Tarea=ListarProductos");
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
