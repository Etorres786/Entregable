<%-- 
    Document   : EditarPedido
    Created on : 16/09/2017, 10:28:19 AM
    Author     : Edwin
--%>
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
            <center><h1 class="tit">EDITAR PEDIDO</h1></center>
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
                <td>
                    <a class="btn btn-warning" onclick="modal('<%=dp.getCantidad()%>', '<%=dp.getId()%>', '<%=dp.getPedidoId()%>')" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></a>
                    <a class="btn btn-warning glyphicon glyphicon-remove" href="EliminarDetallePedido?Id=<%=dp.getId()%>&PedidoId=<%=dp.getPedidoId()%>"></a>
                </td>
            </tr>


            <!--FIN ELIMINAR PEDIDO ! -->

            <%}%>
        </table>
        <h2 class="Total">TOTAL</h2>
        <%for (Pedidos Total : ListaPedido) {%>
        <%String TotalP= formateador.format(Total.getTotal());%>
        <h2 class="TotalPedido"><%=TotalP%></h2>
        <%}%>
        <a href="ListarPedido" class="btn btn-warning btn-volver"><h4>VOLVER</h4></a>
    </div>
    <%@include file="footer.jsp" %>

    <!--EDITAR CANTIDAD-->
    <div class="container">
        <!-- Modal -->
        <div class="modal fade" id="myModaleditar" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2>Editar Cantidad</h2>
                    </div>
                    <div class="modal-body">
                        <form action="EditarDetalle" method="POST" class="form-horizontal validaciones">
                            <fieldset>
                                <!-- Text input3-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="cantidad">Cantidad</label>  
                                    <div class="col-md-4">
                                        <input id="cantidad" name="cantidad" type="text" class="form-control input-md" required="">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <input id="id" name="id" type="hidden" class="form-control input-md" required="">
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <input id="pedidoId" name="PedidoId" type="hidden" class="form-control input-md" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-9 col-md-offset-3">
                                        <div id="messages"></div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-warning" >Guardar</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            </div>
                        </form>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <!--FIN EDITAR CLIENTES-->

    <script>
        function modal(cantidad, id, pedidoId) {
            $('#cantidad').val(cantidad);
            $('#id').val(id);
            $('#pedidoId').val(pedidoId);
        }
    </script>
</body>
</html>
