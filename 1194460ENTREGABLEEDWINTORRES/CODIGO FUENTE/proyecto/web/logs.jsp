<%-- 
    Document   : logs
    Created on : 20/08/2017, 11:49:14 AM
    Author     : Edwin
--%>
<%@page import="Model.Logs"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>

    <body>

        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>
        <div class="container">
            <% ArrayList<Logs> Listar = (ArrayList<Logs>) session.getAttribute("Listar");%>
            <h2>Logs</h2>
            <br><br>
            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Fecha</th>
                        <th>Rol</th>
                        <th>Usuarios</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Logs l : Listar) {%>
                    <tr>
                        <td><%=l.getFecha()%></td>
                        <td><%=l.getRol()%></td>
                        <td><%=l.getUsuario()%></td>
                        <td><%=l.getAccion()%></td>
                    </tr>   
                    <% }%>
                </tbody>
            </table>
        </div>
        <%@include file="footer.jsp" %>
        <script>
            function modal(fecha, rol, usuario, accion) {

                $('#mfecha').val(fecha);
                $('#mrol').val(rol);
                $('#musuario').val(usuario);
                $('#maccion').val(accion);
            }
        </script>
    </body>
</html>
