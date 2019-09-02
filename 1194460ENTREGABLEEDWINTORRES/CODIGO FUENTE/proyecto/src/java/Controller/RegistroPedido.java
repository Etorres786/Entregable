/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
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
 * @author Edwin
 */
@WebServlet(name = "RegistroPedido", urlPatterns = {"/RegistroPedido"})
public class RegistroPedido extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            
              HttpSession ses = request.getSession();
              
            if ((ses.getAttribute("rol")) == null) {
                
                response.sendRedirect("index.jsp");
                
            } else {
                
            ConectaDB con = new ConectaDB();
            Connection c = con.conectar();
            
            //RECUPERO DATOS DEL PEDIDO
            String Cliente = request.getParameter("CedulaCliente");
            int CedulaCliente = Integer.parseInt(Cliente);
            String Empleado = request.getParameter("CedulaEmpleado");
            int CedulaEmpleado = Integer.parseInt(Empleado);
            String total = request.getParameter("total");
            String Producto[] = request.getParameterValues("producto");
            String Cantidad[] = request.getParameterValues("cantidad");
            String Precio[] = request.getParameterValues("precio");

            //RECUPERO DATOS SESION PARA EL LOG
         
            String rol = (String) ses.getAttribute("rol");
            String usuario = (String) ses.getAttribute("nombre");

            try {
                //INSERTO PEDIDO
                String query = "INSERT INTO PEDIDOS(CEDULA_CLIENTE,CEDULA_EMPLEADO,FECHA,TOTAL,habilitado,ESTADO)VALUES"
                        + "(" + CedulaCliente + "," + CedulaEmpleado + ",NOW()," + total + "," + 1 + ","+ 0 +");";
                Statement st = c.createStatement();
                st.executeUpdate(query);
                //REFISTRO LOGS PEDIDO
                PreparedStatement ps = c.prepareStatement("INSERT INTO LOGS(FECHA,ROL,USUARIO,ACCION)"
                        + "VALUES(NOW(),?,?,?)");
                ps.setString(1, rol);
                ps.setString(2, usuario);
                ps.setString(3, query);
                ps.executeUpdate();
                System.out.println(ps);
                //REGISTRO DETALLE DE PEDIDO
                for (int i = 0; i < Precio.length; i++) {
                    CallableStatement cs = c.prepareCall("CALL REGISTRAR_DETALLE_PEDIDO (?,?,?)");
                    cs.setString(1, Producto[i]);
                    cs.setString(2, Cantidad[i]);
                    cs.setString(3, Precio[i]);
                    cs.executeUpdate();
                    
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            response.sendRedirect("ListarPedido");
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
