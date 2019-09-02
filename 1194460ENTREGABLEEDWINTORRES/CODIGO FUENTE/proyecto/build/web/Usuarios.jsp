<%-- 
    Document   : Usuarios
    Created on : 26/09/2017, 01:45:29 PM
    Author     : Edwin
--%>

<%@page import="Model.Usuarios"%>
<%@page import="Model.Personas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp"%>
    <body>
        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>
        <% ArrayList<Personas> ListarPersonas = (ArrayList<Personas>) session.getAttribute("ListarPersonas"); %>
        <% ArrayList<Usuarios> ListarUsuarios = (ArrayList<Usuarios>) session.getAttribute("ListarPersonas"); %>
        <div class="container">
            <h2>Usuarios</h2>
            <br><br><br>
            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Usuario</th>
                        <th>Rol</th>
                        <th>Cedula</th>
                        <th><button class="btn btn-warning navbar-left botonregistro" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
                        </th>
                    </tr>
                </thead>

                <tbody>
                    <%for (Usuarios p : ListarUsuarios) {%>
                    
                    <tr>
                        <td><%=p.getNombre()%></td>
                        <td><%=p.getRolId()%></td>
                        <td><%=p.getCedula()%></td>
                        <td>
                            <a class="btn btn-warning" onclick="modal2('<%=p.getNombre()%>')" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></a>
                            <a class="btn btn-warning"   data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></a>
                        </td>         
                    </tr>   

                    <% }%>
                </tbody>
            </table>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
