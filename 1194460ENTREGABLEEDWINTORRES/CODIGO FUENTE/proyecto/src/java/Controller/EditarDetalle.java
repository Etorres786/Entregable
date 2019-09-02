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
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(name = "EditarDetalle", urlPatterns = {"/EditarDetalle"})
public class EditarDetalle extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            int cantidad=Integer.parseInt(request.getParameter("cantidad"));
            int PedidoId=Integer.parseInt(request.getParameter("PedidoId"));
            int DetalleId=Integer.parseInt(request.getParameter("id"));
            //creo conexion
            ConectaDB con = new ConectaDB();
            Connection cn;
            cn = con.conectar();
            //editar cantidad y Subtotal
            String EditarCantidad="UPDATE DETALLES_PEDIDO SET CANTIDAD="+cantidad+",SUBTOTAL="+cantidad+"*VALOR  where ID="+DetalleId+";";
            Statement Stm = cn.createStatement();
            Stm.executeUpdate(EditarCantidad);
            
            //RECUPERO EL TOTAL DEL PEDIDO
            String Subtotal="SELECT SUM(SUBTOTAL) FROM DETALLES_PEDIDO WHERE PEDIDO_ID="+PedidoId+" AND HABILITADO=1;";
            Statement stm=cn.createStatement();
            ResultSet res=stm.executeQuery(Subtotal);
            int SubtotalP=0;
            while (res.next()) {                
            SubtotalP = (Integer.parseInt(res.getString(1)));
            }
            //MODIFICO TOTAL EN TABLA PEDIDOS
            String Total="UPDATE PEDIDOS SET TOTAL="+SubtotalP+" WHERE ID="+PedidoId+";";
            stm.executeUpdate(Total);
            //Obtenemos el nuevo valor TOTAL
            String query="SELECT TOTAL FROM PEDIDOS WHERE ID="+PedidoId+";";
            int tot=0;
            stm=cn.createStatement();
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
        } catch (SQLException ex) {
            Logger.getLogger(EditarDetalle.class.getName()).log(Level.SEVERE, null, ex);
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
