/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DetallesPedido;
import Model.Pedidos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
@WebServlet(name = "DetalleEliminado", urlPatterns = {"/DetalleEliminado"})
public class DetalleEliminado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException 
     * if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession ses = request.getSession();
            if (ses.getAttribute("rol")==null) {
                response.sendRedirect("index.jsp");
            }else{
            
            Connection cn;
            ConectaDB con = new ConectaDB();
            cn = con.conectar();
            
            
            ArrayList<Pedidos> ListaPedido = (ArrayList<Pedidos>) ses.getAttribute("ListarPedido");
            ArrayList<DetallesPedido> ListaDetalle = (ArrayList<DetallesPedido>) ses.getAttribute("ListarDetallePedido");
            int PedidoId=0;
            int Detalle=(int) ses.getAttribute("IdPedido");
            System.out.println(Detalle);

           
           CallableStatement cs = cn.prepareCall("CALL MOSTRAR_DETALLE_PEDIDO(?)");
           cs.setInt(1, Detalle);
           
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                DetallesPedido dp = new DetallesPedido();
                dp.setProductoId(rs.getString(1));
                dp.setId(rs.getInt(2));
                dp.setPedidoId(rs.getInt(3));
                dp.setCantidad(rs.getInt(4));
                dp.setValor(rs.getInt(5));
                dp.setSubtotal(rs.getInt(6)); 
                ListaDetalle.add(dp);
            }
            con.cierraConexion();
            response.sendRedirect("EditarPedido.jsp");
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
            Logger.getLogger(DetalleEliminado.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DetalleEliminado.class.getName()).log(Level.SEVERE, null, ex);
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
