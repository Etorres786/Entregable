<%-- 
    Document   : nav
    Created on : 04-jul-2017, 10:56:46
    Author     : EDWIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession ses = request.getSession();
    String rol;
    String no;
    if ((ses.getAttribute("rol")) == null && ses.getAttribute("nombre") == null) {
        rol = "Invitado";
        no = "Generico";
    } else {
        rol = (String) ses.getAttribute("rol");
        no = (String) ses.getAttribute("nombre");
    }
%>

<% if (rol.equalsIgnoreCase("admins")) {%>
<nav id="nav" class="navbar navbar-default margennav">
    <div class="container-fluid">
        <div class="navbar-header"></div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="Admin_Sistema.jsp">Inicio</a></li>
            <li><a href="ListarProducto">Productos</a></li>
            <!--li><a href="ventas.jsp">Ventas</a></li-->
            <!--li><a href="ListarInventario">Inventario</a></li-->
            <li><a href="ListarPedido">Pedidos</a></li>
            <li><a href="ListarEmpleado">Empleados</a></li>
            <li><a href="ListarCliente">Clientes</a></li>
            <li><a href="ListarProveedor">Proveedores</a></li>
            <li><a href="Perfil">Mi perfil</a></li>
            <li>
                <a  class="dropdown-toggle" data-toggle="dropdown" role="button">
                    Generar Reporte <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="ReporteProductos.jsp" target="black_">Productos</a></li>
                    <li><a href="#" target="black_">Pedidos</a></li>
                    <li><a href="#" target="black_">Clientes</a></li>
                    <li><a href="#" target="black_">Empleados</a></li>
                </ul>

            <li>
                <a  class="dropdown-toggle" data-toggle="dropdown" role="button">
                    Administrar <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="ListarLog">Logs</a></li>
                    <li><a href="ListarUsuarios">Usuarios</a></li>
                    <li><a href="ListarProducto?Tarea=ListarAdmin">Productos</a></li>
                    <li><a href="ListarInventario?Tarea=ListarAdmin">Inventario</a></li>
                    <li><a href="ListarPedido?Tarea=ListarAdmin">Pedidos</a></li>
                    <li><a href="ListarEmpleado?Tarea=ListarAdmin">Empleados</a></li>
                    <li><a href="ListarCliente?Tarea=ListarAdmin">Clientes</a></li>
                    <li><a href="ListarProveedor?Tarea=ListarAdmin">Proveedores</a></li>
                </ul>

            </li>



        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=no%></a></li>
            <li><a  href="CerrarSesion"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
        </ul>
    </div>
</nav>

<%} else if (rol.equalsIgnoreCase("admin")) {%>
<nav class="navbar navbar-default margennav">
    <div class="container-fluid">
        <div class="navbar-header"></div>
        <ul class="nav navbar-nav">
            <li><a href="Admin_Tienda.jsp">Inicio</a></li>
            <li><a href="ListarProducto">Productos</a></li>
            <!--li><a href="facturas.jsp">Ventas</a></li-->
            <!--li><a href="ListarInventario">Inventario</a></li-->
            <li><a href="ListarPedido">Pedidos</a></li>
            <li><a href="ListarCliente">Clientes</a></li>
            <li><a href="ListarProveedor">Proveedores</a></li>
            <li><a href="ListarEmpleado">Empleados</a></li>
            <li><a href="Perfil">Mi perfil</a></li>
            <li>
                <a  class="dropdown-toggle" data-toggle="dropdown" role="button">
                    Generar Reporte <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="ReporteProductos.jsp" target="black_">Productos</a></li>
                    <li><a href="#" target="black_">Pedidos</a></li>
                    <li><a href="#" target="black_">Clientes</a></li>
                    <li><a href="#" target="black_">Empleados</a></li>
                </ul>

            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=no%></a></li>
            <li><a  href="CerrarSesion"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
        </ul>
    </div>
</nav>


<%} else if (rol.equalsIgnoreCase("cliente")) {%>
<nav class="navbar navbar-default margennav">
    <div class="container-fluid">
        <div class="navbar-header"></div>
        <ul class="nav navbar-nav">
            <li><a href="Inicio_Clientes.jsp">Inicio</a></li>
            <li><a href="MisPedidos">Mis Pedidos</a></li>
            <li><a href="Perfil">Mi perfil</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=no%></a></li>
            <li><a  href="CerrarSesion"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
        </ul>
    </div>
</nav>      
<%} else if (rol.equalsIgnoreCase("empleado")) {%>
<nav class="navbar navbar-default margennav">
    <div class="container-fluid">
        <div class="navbar-header"></div>
        <ul class="nav navbar-nav">
            <li><a href="Inicio_Empleados.jsp">Inicio</a></li>
            <li><a href="ListarProducto">Productos</a></li>
            <li><a href="ListarPedido">Pedidos</a></li>
            <li><a href="ListarCliente">Clientes</a></li>
            <li><a href="ListarProveedor">Proveedores</a></li>
            <li><a href="Perfil">Mi perfil</a></li>
            <li>
                <a  class="dropdown-toggle" data-toggle="dropdown" role="button">
                    Generar Reporte <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="ReporteProductos.jsp" target="black_">Productos</a></li>
                    <li><a href="#" target="black_">Pedidos</a></li>
                    <li><a href="#" target="black_">Clientes</a></li>
                    <li><a href="#" target="black_">Empleados</a></li>
                </ul>
            </li>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=no%></a></li>
            <li><a  href="CerrarSesion"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
        </ul>
    </div>
</nav>
<%} else if (rol.equals("Invitado")) { %>
<nav class="navbar navbar-default margennav">
    <div class="container-fluid">
        <div class="navbar-header"></div>
        <ul class="nav navbar-nav">
            <li><a href="index.jsp">Inicio</a></li>
            <li class="active"><a href="#">Productos</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a><span class="glyphicon glyphicon-user"></span> Registrarse</a></li>
        </ul>
    </div>
</nav>

<%}%>