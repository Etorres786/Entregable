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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
@WebServlet(name = "DetallePedido", urlPatterns = {"/DetallePedido"})
public class DetallePedido extends HttpServlet {

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
            HttpSession ses = request.getSession();
            if (ses.getAttribute("rol") == null) {
                response.sendRedirect("index.jsp");
            } else {
                ArrayList<Pedidos> listaPedido = new ArrayList<Pedidos>();
                ArrayList<DetallesPedido> listaDP = new ArrayList<DetallesPedido>();
                Connection cn;
                ConectaDB con = new ConectaDB();
                cn = con.conectar();
                //Obtenemos datos
                String Tarea = request.getParameter("Tarea");
                int IdPedido = Integer.parseInt(request.getParameter("Pedido_Id"));
                int Total = Integer.parseInt(request.getParameter("Total"));
                int CedulaCliente = Integer.parseInt(request.getParameter("CedulaCliente"));
                int CedulaEmpleado = Integer.parseInt(request.getParameter("CedulaEmpleado"));
                //Date Fecha = new SimpleDateFormat("y-M-d").parse(request.getParameter("Fecha"));
                String Fecha = request.getParameter("Fecha");
                System.out.println(Fecha);
                //Guardamos datos
                String[] array = new String[6];
                array[0] = "" + IdPedido;
                array[1] = "" + Total;
                array[2] = "" + CedulaCliente;
                array[3] = "" + CedulaEmpleado;
                array[4] = "" + Fecha;
                array[5] = Tarea;
                ses.setAttribute("datosPedido", array);

                Pedidos p = new Pedidos();
                p.setId(IdPedido);
                p.setCedulaCliente(CedulaCliente);
                p.setCedulaEmpleado(CedulaEmpleado);
                p.setTotal(Total);
                SimpleDateFormat dt1 = new SimpleDateFormat("dd-MM-yy");
                p.setFecha(dt1.parse(Fecha));
                listaPedido.add(p);

                ses.setAttribute("ListarPedido", listaPedido);
                CallableStatement cs = cn.prepareCall("CALL MOSTRAR_DETALLE_PEDIDO(?)");
                cs.setInt(1, IdPedido);
                cs.executeUpdate();
                ResultSet rs = cs.executeQuery();
                while (rs.next()) {
                    DetallesPedido dp = new DetallesPedido();
                    dp.setProductoId(rs.getString(1));
                    dp.setId(rs.getInt(2));
                    dp.setPedidoId(rs.getInt(3));
                    dp.setCantidad(rs.getInt(4));
                    dp.setValor(rs.getInt(5));
                    dp.setSubtotal(rs.getInt(6));
                    listaDP.add(dp);
                }
                con.cierraConexion();
                ses.setAttribute("IdPedido", IdPedido);
                ses.setAttribute("ListarPedido", listaPedido);
                ses.setAttribute("ListarDetallePedido", listaDP);
                if (Tarea.equalsIgnoreCase("Editar")) {
                    response.sendRedirect("EditarPedido.jsp");
                } else {
                    response.sendRedirect("DetallePedido.jsp");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
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
