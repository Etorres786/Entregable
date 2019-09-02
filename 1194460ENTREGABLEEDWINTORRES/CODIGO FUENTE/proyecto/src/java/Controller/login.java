package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
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
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String Rol = "";
        try (PrintWriter out = response.getWriter()) {
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("password");
            try {
                ConectaDB cn = new ConectaDB();
                Connection con = cn.conectar();
                Statement stm = con.createStatement();
                String query = "SELECT ROLES.NOMBRE FROM USUARIOS INNER JOIN ROLES ON USUARIOS.ROL_ID=ROLES.ID "
                        + "WHERE USUARIOS.NOMBRE='" + usuario + "' AND USUARIOS.CLAVE='" + clave + "';";
                ResultSet rs = stm.executeQuery(query);
                if (rs.next()) {
                    Rol = rs.getString(1);
                } else {
                    Rol = "no";
                }
                if (Rol.length() > 0) {

                    try {
                        HttpSession sesion = request.getSession(true);
                        sesion.setMaxInactiveInterval(900); 
                        sesion.setAttribute("rol", Rol);
                        sesion.setAttribute("nombre", usuario);
                        if (Rol.equalsIgnoreCase("admin")) {
                            response.sendRedirect("Admin_Tienda.jsp");
                        } else if (Rol.equalsIgnoreCase("empleado")) {
                            response.sendRedirect("Inicio_Empleados.jsp");
                        } else if (Rol.equalsIgnoreCase("cliente")) {
                            response.sendRedirect("Inicio_Clientes.jsp");
                        } else if (Rol.equalsIgnoreCase("admins")) {
                            response.sendRedirect("Admin_Sistema.jsp");
                        } else {
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Usuario o Contraseña Incorrecto');");
                            out.println("location='index.jsp';");
                            out.println("</script>");

                        }
                    } catch (Exception e) {
                        response.sendRedirect("index.jsp");
                    }
                }
                cn.cierraConexion();
                con.close();
                stm.close();
            } catch (Exception e) {
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
