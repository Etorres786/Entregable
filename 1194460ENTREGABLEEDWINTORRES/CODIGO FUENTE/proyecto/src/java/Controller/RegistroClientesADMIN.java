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
 * @author Edwin
 */
@WebServlet(name = "RegistroClientesADMIN", urlPatterns = {"/RegistroClientesADMIN"})
public class RegistroClientesADMIN extends HttpServlet {

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
                String nom = request.getParameter("nombre");
                String apell = request.getParameter("apellido");
                String tel = request.getParameter("phone");
                String ced = request.getParameter("cedula");
                int cedula = Integer.parseInt(ced);
                String email = request.getParameter("email");
                String dir = request.getParameter("direccion");
                String usuario = request.getParameter("usuario");
                String clave = request.getParameter("password");
                try {
                    String query = "INSERT INTO PERSONAS(cedula,nombre,apellidos,Telefono,email,direccion,habilitado)"
                            + "VALUES( " + cedula + ",'" + nom + "','" + apell + "','" + tel + "','" + email + "','" + dir + "', " + 1 + ");";
                    System.out.println(query);
                    ConectaDB con = new ConectaDB();
                    Connection c = con.conectar();
                    Statement st = c.createStatement();
                    String query2 = "INSERT INTO USUARIOS(CEDULA,NOMBRE,CLAVE,ROL_ID,HABILITADO)"
                            + "VALUES(" + cedula + ",'" + usuario + "','" + clave + "'," + 4 + "," + 1 + ");";
                    System.out.println(query2);
                    String query3 = "INSERT INTO CLIENTES (CEDULA,HABILITADO)"
                            + "VALUES(" + cedula + ",1);";
                    st.executeUpdate(query);
                    st.execute(query2);
                    st.execute(query3);

                    String rol = (String) ses.getAttribute("rol");
                    response.sendRedirect("ListarCliente");
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
