<%-- 
    Document   : Perfil
    Created on : 23/11/2017, 09:52:56 AM
    Author     : edwin
--%>

<%@page import="Model.Usuarios"%>
<%@page import="Model.Personas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>

    <body>
        <% ArrayList<Personas> Listar = (ArrayList<Personas>) session.getAttribute("Listar");%>

        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>
    <center><h1>Editar Mi Perfil</h1></center>
        <% for (Personas p : Listar) {%>
    <form class="form-horizontal validaciones" action="EditarPerfil" method="POST">
        <div class="form-group">
            <label class="control-label col-sm-2"for="">Nombre :</label>
            <div class="col-sm-8">
                <input type="text" name="nombre" id="nombre" class="form-control"  value="<%=p.getNombre()%>">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="">Apellidos :</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="apellido" value="<%=p.getApellidos()%>" id="email">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Cédula :</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="cedula" readonly="" value="<%=p.getCedula()%>" id="email">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Telefono :</label>
            <div class="col-sm-8">
                <input type="text" name="phone" class="form-control" id="email" value="<%=p.getTelefono()%>">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-8">
                <input type="email" class="form-control" id="email" name="email" value="<%=p.getEmail()%>">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Dirección:</label>
            <div class="col-sm-8">
                <input type="text" name="direccion" class="form-control" id="pwd" value="<%=p.getDireccion()%>">
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-9 col-md-offset-3">
                <div id="messages"></div>
            </div>
        </div>
        <%}%> 
        <center><button type="submit" class="btn btn-warning ">Guardar Cambios</button></center>
    </form>
    <%@include file="footer.jsp" %>
</body>
</html>
