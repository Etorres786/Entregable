/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Personas;
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
@WebServlet(name = "ListarEmpleado", urlPatterns = {"/ListarEmpleado"})
public class ListarEmpleado extends HttpServlet {

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
            String Tarea = request.getParameter("Tarea");
            ArrayList<Personas> Listar = new ArrayList();
            Listar.clear();
            try {
                ConectaDB con = new ConectaDB();
                Connection c = con.conectar();
                HttpSession ses = request.getSession();
                String rol;
                String no;
                
                
                if ((ses.getAttribute("rol")) == null){
                    response.sendRedirect("index.jsp");
                }else{
                if ((ses.getAttribute("rol")) == null && ses.getAttribute("nombre") == null) {
                    rol = "Invitado";
                    no = "Generico";
                } else {
                    rol = (String) ses.getAttribute("rol");
                }
                if (rol.equalsIgnoreCase("admins")) {
                    con.setUsuario("DBA");
                    con.setClave("123");
                } else if (rol.equalsIgnoreCase("cliente")) {
                    con.setUsuario("CLIENTE");
                    con.setClave("123");

                } else if (rol.equalsIgnoreCase("admin")) {
                    con.setUsuario("ADMIN");
                    con.setClave("123");
                } else if (rol.equalsIgnoreCase("empleado")) {
                    con.setUsuario("EMPLEADO");
                    con.setClave("123");
                };
                Statement Stm = c.createStatement();
                
                String query="";
                if(Tarea==null){
                query = "SELECT PERSONAS.CEDULA,PERSONAS.NOMBRE,PERSONAS.APELLIDOS,PERSONAS.TELEFONO,PERSONAS.EMAIL,PERSONAS.DIRECCION,EMPLEADOS.FECHA_INGRESO,PERSONAS.HABILITADO "
                        + "FROM PERSONAS INNER JOIN EMPLEADOS ON  PERSONAS.CEDULA=EMPLEADOS.CEDULA WHERE PERSONAS.HABILITADO=1;";
                }else{
                    query = "SELECT PERSONAS.CEDULA,PERSONAS.NOMBRE,PERSONAS.APELLIDOS,PERSONAS.TELEFONO,PERSONAS.EMAIL,PERSONAS.DIRECCION,EMPLEADOS.FECHA_INGRESO,PERSONAS.HABILITADO "
                        + "FROM PERSONAS INNER JOIN EMPLEADOS ON  PERSONAS.CEDULA=EMPLEADOS.CEDULA;";
                }
                System.out.println(query);
                ResultSet res = Stm.executeQuery(query);
                while (res.next()) {
                    Personas emp = new Personas();
                    emp.setCedula(Integer.parseInt(res.getString(1)));
                    emp.setNombre(res.getString(2));
                    emp.setApellidos(res.getString(3));
                    emp.setTelefono(res.getString(4));
                    emp.setEmail(res.getString(5));
                    emp.setDireccion(res.getString(6));
                    boolean Estado=res.getBoolean(8);
                     String est;
                    if (Estado) {
                        est="Habilitado";
                    }else{
                        est="Deshabilitado";
                    }
                    
                    emp.setHabilitado(est);
                    Listar.add(emp);
                }
                con.cierraConexion();
                ses.setAttribute("Listar", Listar);

                if (Tarea == null) {
                    response.sendRedirect("empleados.jsp");
                } else {
                    response.sendRedirect("AdminEmpleados.jsp");
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
