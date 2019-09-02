/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Personas;
import Model.Usuarios;
import java.io.IOException;
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
@WebServlet(name = "Perfil", urlPatterns = {"/Perfil"})
public class Perfil extends HttpServlet {

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
                ArrayList<Personas> Listar = new ArrayList();
                ArrayList<Usuarios> ListarU = new ArrayList();
                Listar.clear();
                ConectaDB con = new ConectaDB();
                Connection c = con.conectar();
                Statement Stm = c.createStatement();
                String queryUsuario = "SELECT CEDULA FROM USUARIOS WHERE NOMBRE='" + NombreUsuario + "';";
                System.out.println(queryUsuario);
                String Cedula_Usuario = "";
                ResultSet resu = Stm.executeQuery(queryUsuario);
                while (resu.next()) {
                    Cedula_Usuario = resu.getString("CEDULA");
                }

                //CONSULTA PARA LISTAR INFORMACION PERSONAL DE LA PERSONA
                String query = "SELECT * FROM PERSONAS WHERE CEDULA=" + Cedula_Usuario + ";";
                System.out.println(query);
                ResultSet res = Stm.executeQuery(query);

                while (res.next()) {
                    Personas pedi = new Personas();
                    pedi.setCedula(Integer.parseInt(res.getString(1)));
                    pedi.setNombre(res.getString(2));
                    pedi.setApellidos(res.getString(3));
                    pedi.setTelefono(res.getString(4));
                    pedi.setEmail(res.getString(5));
                    pedi.setDireccion(res.getString(6));
                    Listar.add(pedi);
                }

                //CONSULTA PARA LISTAR EL USUARIO DE LA PEROSNA
                String Info_Usuario = "SELECT * FROM USUARIOS WHERE CEDULA=" + Cedula_Usuario + ";";
                System.out.println(Info_Usuario);
                resu = Stm.executeQuery(Info_Usuario);
                while (resu.next()) {
                    Usuarios usuario = new Usuarios();
                    usuario.setNombre(resu.getString("NOMBRE"));
                    usuario.setClave(resu.getString("Clave")); 
                    ListarU.add(usuario);
                }

                con.cierraConexion();
                HttpSession ses = request.getSession();
                ses.setAttribute("Listar", Listar);
                ses.setAttribute("ListarU", ListarU);
                response.sendRedirect("Perfil.jsp");
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
