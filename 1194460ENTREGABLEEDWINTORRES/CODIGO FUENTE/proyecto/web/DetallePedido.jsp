<%-- 
    Document   : DetallePedido
    Created on : 14/09/2017, 03:13:26 PM
    Author     : Edwin
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.DetallesPedido"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Pedidos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <%@include file="banner.jsp" %>
    <body>
        <%@include file="nav.jsp" %>
        <% ArrayList<Pedidos> ListaPedido = (ArrayList<Pedidos>) session.getAttribute("ListarPedido"); %>
        <% ArrayList<DetallesPedido> ListaDetalle = (ArrayList<DetallesPedido>) session.getAttribute("ListarDetallePedido"); %>
        <%DecimalFormat formateador = new DecimalFormat("$###,###.##");%>
        
        <div class="TituloDetallesPedido container">
            <center><h1 class="tit">DETALLES PEDIDO</h1></center>
        </div>
        <br><br>
        <%for (Pedidos p : ListaPedido) {%>

        <div class="col-md-12 container">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <div class="form-group">
                    <legend>COD PEDIDO</legend>
                    <p><%=p.getId()%><p>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <legend>CEDULA CLIENTE</legend>
                    <p><%=p.getCedulaEmpleado()%><p>
                </div>
            </div>

            <div class="col-md-2">
                <div class="form-group">
                    <legend>CEDULA EMPLEADO</legend>
                    <p><%=p.getCedulaCliente()%></p>
                </div>
            </div>    
            <div class="col-md-2">
                <div class="form-group">
                    <legend>FECHA</legend>
                    <p><%=p.getFecha()%></p>
                </div>
            </div>  
        </div>
        <%}%>
        <br><br><br><br><br><br><br>
    <center><h1>PRODUCTOS</h1></center><br>
    <div class="container">
        <table class="table table-bordered">
            <tr>
                <th>PRODUCTO</th>
                <th>VALOR UNITARIO</th>
                <th>CANTIDAD</th>
                <th>SUBTOTAL</th>
            </tr>
            <%for (DetallesPedido dp : ListaDetalle) {%>
            <%String Valor= formateador.format(dp.getValor());%>
            <%String Subtotal= formateador.format(dp.getSubtotal());%>
            <tr>
                <td><%=dp.getProductoId()%></td>
                <td><%=Valor%></td>
                <td><%=dp.getCantidad()%></td>
                <td><%=Subtotal%></td>

            </tr>
            <%}%>
        </table>
        <h2 class="Total">TOTAL</h2>
        <%for (Pedidos Total : ListaPedido) {%>
        <%String TotalP= formateador.format(Total.getTotal());%>
        <h2 class="TotalPedido"><%=TotalP%></h2>
        <%}%>
        <a href="javascript:window.history.go(-1);" class="btn btn-lg btn-warning"> VOLVER</a>
        <a href="ListarPedido" class="btn btn-default btn-lg glyphicon glyphicon-print btn-facura"></a>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>
