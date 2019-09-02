package Controller;

import Model.Productos;
import Model.Tipos;
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
 * @author EDWIN
 */
@WebServlet(name = "ListarProducto", urlPatterns = {"/ListarProducto"})
public class ListarProducto extends HttpServlet {

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
            ArrayList<Productos> Listar = new ArrayList();
            Listar.clear();
            try {
                String Tarea = request.getParameter("Tarea");
                ConectaDB con = new ConectaDB();
                HttpSession ses = request.getSession();
                if (ses.getAttribute("rol") == null) {
                    response.sendRedirect("index.jsp");
                } else {
                    String rol;
                    String no;
                    Connection c = con.conectar();
                    Statement Stm = c.createStatement();
                    String query;
                    if (Tarea == null) {
                        query = "SELECT PRODUCTOS.ID,PRODUCTOS.NOMBRE,PRODUCTOS.VALOR,TIPOS.NOMBRE,PRODUCTOS.HABILITADO FROM PRODUCTOS"
                                + " INNER JOIN TIPOS ON PRODUCTOS.TIPO_ID=TIPOS.ID WHERE PRODUCTOS.HABILITADO=1;";
                    } else {
                        query = "SELECT PRODUCTOS.ID,PRODUCTOS.NOMBRE,PRODUCTOS.VALOR,TIPOS.NOMBRE,PRODUCTOS.HABILITADO FROM PRODUCTOS"
                                + " INNER JOIN TIPOS ON PRODUCTOS.TIPO_ID=TIPOS.ID;";
                    }

                    System.out.println(query);
                    ResultSet res = Stm.executeQuery(query);
                    while (res.next()) {
                        Productos p = new Productos();
                        p.setId(Integer.parseInt(res.getString(1)));
                        p.setNombre(res.getString(2));
                        p.setValor(Integer.parseInt(res.getString(3)));
                        p.setTipoId(res.getString(4));
                        boolean Estado = res.getBoolean(5);
                        String est;
                        if (Estado) {

                            est = "Habilitado";
                        } else {
                            est = "Deshabilitado";
                        }

                        p.setHabilitado(est);
                        Listar.add(p);
                    }
                    con.cierraConexion();
                    ses.setAttribute("Listar", Listar);

                    if (Tarea == null) {
                        response.sendRedirect("productos.jsp");
                    } else {
                        response.sendRedirect("AdminProductos.jsp");
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
