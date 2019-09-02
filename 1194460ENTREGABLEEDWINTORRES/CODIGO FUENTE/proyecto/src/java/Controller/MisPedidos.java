/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Pedidos;
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
 * @author edwin
 */
@WebServlet(name = "MisPedidos", urlPatterns = {"/MisPedidos"})
public class MisPedidos extends HttpServlet {

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

        try {

            HttpSession sesi = request.getSession();
            if (sesi.getAttribute("rol") == null) {
                response.sendRedirect("index.jsp");
            } else {
                String NombreUsuario = (String) sesi.getAttribute("nombre");
                ArrayList<Pedidos> Listar = new ArrayList();
                Listar.clear();
                ConectaDB con = new ConectaDB();
                Connection c = con.conectar();
                Statement Stm = c.createStatement();
                String queryUsuario = "SELECT CEDULA FROM USUARIOS WHERE NOMBRE='" + NombreUsuario + "';";
                System.out.println(queryUsuario);
                String Usuario = "";
                ResultSet resu = Stm.executeQuery(queryUsuario);
                while (resu.next()) {
                    Usuario = resu.getString("CEDULA");
                }
                String query = "SELECT * FROM PEDIDOS WHERE HABILITADO=1 AND CEDULA_CLIENTE=" + Usuario + ";";
                System.out.println(query);
                ResultSet res = Stm.executeQuery(query);

                while (res.next()) {
                    Pedidos pedi = new Pedidos();
                    pedi.setId(Integer.parseInt(res.getString(1)));
                    pedi.setCedulaCliente(res.getInt(2));
                    pedi.setCedulaEmpleado(res.getInt(3));
                    pedi.setFecha(res.getDate(4));
                    pedi.setTotal(res.getInt(5));
                    boolean Estado = res.getBoolean(6);
                    boolean Estado_Pedido = res.getBoolean(7);
                    String est;
                    String Est_p;
                    if (Estado) {
                        est = "Habilitado";
                    } else {
                        est = "Deshabilitado";
                    }

                    if (Estado_Pedido) {
                        Est_p = "SI";
                    } else {
                        Est_p = "NO";
                    }
                    pedi.setHabilitado(est);
                    pedi.setEstado(Est_p);

                    Listar.add(pedi);
                }
                con.cierraConexion();
                HttpSession ses = request.getSession();
                ses.setAttribute("Listar", Listar);
                response.sendRedirect("PedidosCliente.jsp");
            }
        } catch (Exception e) {

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
