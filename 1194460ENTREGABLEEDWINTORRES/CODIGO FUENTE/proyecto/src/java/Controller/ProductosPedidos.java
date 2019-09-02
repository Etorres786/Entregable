/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Model.Empleados;
import Model.Personas;
import Model.Productos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(name = "ProductosPedidos", urlPatterns = {"/ProductosPedidos"})
public class ProductosPedidos extends HttpServlet {

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
                String Tarea = request.getParameter("Tarea");
                ArrayList<Productos> Listar = new ArrayList();
                ArrayList<Personas> ListarCedula= new ArrayList();
                Listar.clear();
                ConectaDB con = new ConectaDB();
                Connection c = con.conectar();
                Statement Stm = c.createStatement();
                String CedulaEmpleado="SELECT PERSONAS.CEDULA,PERSONAS.NOMBRE FROM PERSONAS INNER JOIN EMPLEADOS ON PERSONAS.CEDULA=EMPLEADOS.CEDULA;";
                String query = "SELECT PRODUCTOS.ID,PRODUCTOS.NOMBRE,PRODUCTOS.VALOR,TIPOS.NOMBRE FROM PRODUCTOS"
                        + " INNER JOIN TIPOS ON PRODUCTOS.TIPO_ID=TIPOS.ID WHERE PRODUCTOS.HABILITADO=1;";
                ResultSet res = Stm.executeQuery(query);
                while (res.next()) {
                    Productos p = new Productos();
                    p.setId(Integer.parseInt(res.getString(1)));
                    p.setNombre(res.getString(2));
                    p.setValor(Integer.parseInt(res.getString(3)));
                    p.setTipoId(res.getString(4));
                    Listar.add(p);
                }
                res=Stm.executeQuery(CedulaEmpleado);
                while(res.next()){
                    Personas em= new Personas();
                    em.setCedula(Integer.parseInt(res.getString(1)));
                    em.setNombre(res.getString(2));
                    ListarCedula.add(em);
                } 
                con.cierraConexion();
                ses.setAttribute("Listar", Listar);
                ses.setAttribute("ListarCedula", ListarCedula);
                if (Tarea==null) {
                    response.sendRedirect("RegistroPedidos.jsp");
                }else{
                response.sendRedirect("PedidosClientes.jsp");
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
            Logger.getLogger(ProductosPedidos.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ProductosPedidos.class.getName()).log(Level.SEVERE, null, ex);
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
