/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Pedidos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
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
@WebServlet(name = "EliminarDetallePedido", urlPatterns = {"/EliminarDetallePedido"})
public class EliminarDetallePedido extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
              HttpSession ses = request.getSession();
            if ((ses.getAttribute("rol")) == null) {
                response.sendRedirect("index.jsp");
            } else {
            int DetalleId = Integer.parseInt(request.getParameter("Id"));
            System.out.println(DetalleId);
            int PedidoId = Integer.parseInt(request.getParameter("PedidoId"));
            System.out.println(PedidoId);
            ses.setAttribute("IdPedido", PedidoId);
            
            ConectaDB con = new ConectaDB();
            Connection cn;
            cn = con.conectar();
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_DETALLE_PEDIDO(?,?)");
            cs.setInt(1, DetalleId);
            cs.setInt(2, PedidoId);
            cs.executeUpdate();
           
            //Obtenemos el nuevo valor
            String query="SELECT TOTAL FROM PEDIDOS WHERE ID="+PedidoId+";";
            int tot=0;
            Statement stm=cn.createStatement();
            ResultSet rs=stm.executeQuery(query); 
            while (rs.next()) {                
            Pedidos pe = new Pedidos();
            tot=(rs.getInt(1));
            }
            if (tot==0) {
                response.sendRedirect("ListarPedido");
            }else{
            //
            //Procedemos con la redirección
            String[] array = new String[6];
            array = (String[])ses.getAttribute("datosPedido");
            String redireccion = "DetallePedido?Pedido_Id=" + array[0];
            redireccion += "&Total=" + tot;
            redireccion += "&CedulaCliente=" + array[2];
            redireccion += "&CedulaEmpleado=" + array[3];
            redireccion += "&Fecha=" + array[4];
            redireccion += "&Tarea=" + array[5];
            response.sendRedirect(redireccion);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EliminarDetallePedido.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EliminarDetallePedido.class.getName()).log(Level.SEVERE, null, ex);
        }
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
