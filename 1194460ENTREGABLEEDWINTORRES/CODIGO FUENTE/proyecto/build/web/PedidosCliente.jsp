<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Pedidos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>

    <body>

        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp" %> 

        <div class="container">
            <% ArrayList<Pedidos> Listar = (ArrayList<Pedidos>) session.getAttribute("Listar");%>
            <%DecimalFormat formateador = new DecimalFormat("$###,###.##");%>
            <div class="container">
                <h2>Mis Pedidos</h2>
                <h2 class="h2registro">Registrar Pedido</h2>
                <a id="botregpedidos" href="ProductosPedidos" class="btn btn-warning navbar-left botonregistro"><span class="glyphicon glyphicon-plus"></span></a>
                <br>
            </div>

            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Cedula Cliente</th>
                        <th>Cedula Empleado</th>
                        <th>Fecha</th>
                        <th>Total</th>
                        <th>Recibido</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Pedidos P : Listar) {%>
                    <tr>
                        <%String Total= formateador.format(P.getTotal());%>
                        <td><%=P.getCedulaCliente()%></td>
                        <td><%=P.getCedulaEmpleado()%></td>
                        <td><%=P.getFecha()%></td>
                        <td><%=Total%></td>
                        
                        <td><%=P.getEstado()%></td>
                        <td>
                            <a href="DetallePedido?Pedido_Id=<%=P.getId()%>&Total=<%=P.getTotal()%>&CedulaCliente=<%=P.getCedulaCliente()%>&CedulaEmpleado=<%=P.getCedulaEmpleado()%>&Fecha=<%=P.getFecha()%>&Tarea=Ver" class="btn btn-warning"><span class="glyphicon glyphicon-eye-open"></span></a>
                            <a class="btn btn-warning" href="DetallePedido?Pedido_Id=<%=P.getId()%>&Total=<%=P.getTotal()%>&CedulaCliente=<%=P.getCedulaCliente()%>&CedulaEmpleado=<%=P.getCedulaEmpleado()%>&Fecha=<%=P.getFecha()%>&Tarea=Editar"> <span class="glyphicon glyphicon-pencil"></span></a>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=P.getId()%>"><span class="glyphicon glyphicon-remove"></span></button>
                        </td>      
                    </tr>   
                    <!--ELIMINAR PEDIDO ! -->
                <div class="modal fade" id="myModaleliminar<%=P.getId()%>" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Eliminar este Pedido?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres eliminar este Pedido?</p>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-warning" href="EliminarPedido?Id=<%=P.getId()%>" >Aceptar</a>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div> 
                <!--FIN ELIMINAR PEDIDO ! -->
                </tbody>
                <% }%>
            </table>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
