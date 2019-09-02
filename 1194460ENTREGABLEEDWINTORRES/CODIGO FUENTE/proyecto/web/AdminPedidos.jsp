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
                <h2>Información de Pedidos</h2>
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
                        <th>Entregado</th>
                        <th>Estado</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Pedidos P : Listar) {%>
                    <%String Total= formateador.format(P.getTotal());%>
                    <tr>
                        <td><%=P.getCedulaCliente()%></td>
                        <td><%=P.getCedulaEmpleado()%></td>
                        <td><%=P.getFecha()%></td>
                        <td><%=Total%></td>
                        <td><%=P.getEstado()%></td>
                        <td><%=P.getHabilitado()%></td>
                        <td>
                            <a href="DetallePedido?Pedido_Id=<%=P.getId()%>&Total=<%=P.getTotal()%>&CedulaCliente=<%=P.getCedulaCliente()%>&CedulaEmpleado=<%=P.getCedulaEmpleado()%>&Fecha=<%=P.getFecha()%>&Tarea=Ver" class="btn btn-warning"><span class="glyphicon glyphicon-eye-open"></span></a>
                            <a class="btn btn-warning" href="DetallePedido?Pedido_Id=<%=P.getId()%>&Total=<%=P.getTotal()%>&CedulaCliente=<%=P.getCedulaCliente()%>&CedulaEmpleado=<%=P.getCedulaEmpleado()%>&Fecha=<%=P.getFecha()%>&Tarea=Editar"> <span class="glyphicon glyphicon-pencil"></span></a>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=P.getId()%>"><span class="glyphicon glyphicon-remove"></span></button>
                            <a class="btn btn-warning" data-toggle="modal" data-target="#myModalHabilitar<%=P.getId()%> "><span class="glyphicon glyphicon-ok"></span></a>
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
                                <a class="btn btn-warning" href="EliminarPedido?Id=<%=P.getId()%>&Eliminar=deshabilitar" >Aceptar</a>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div> 


                <!--FIN ELIMINAR PEDIDO ! -->
                <!--MODAL PARA HABILITAR PRODUCTO-->
                <div class="modal fade" id="myModalHabilitar<%=P.getId()%>" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Habilitar Pedido?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres Habilitar este Pedido?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                <a class="btn btn-warning" href="EliminarPedido?Id=<%= P.getId()%>&Tarea=Habilitar" >Aceptar</a>
                            </div>
                        </div>
                    </div>
                </div>
                <% }%>
                </tbody>

            </table>
        </div>
        <!-- FORMULARIO REGISTRO VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Registrar Pedidos</h2>
                        </div>
                        <div class="modal-body">
                            <form action="RegistroPedido" method="GET" class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cliente">Nombre Cliente</label>  
                                        <div class="col-md-5">
                                            <input id="cliente" name="nombre_cliente" type="text" placeholder="Nombre Cliente" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Telefono">Telefono</label>  
                                        <div class="col-md-4">
                                            <input id="telefono" name="telefono" type="text" placeholder="Telefono" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Direccion">Dirección</label>  
                                        <div class="col-md-4">
                                            <input id="direccion" name="direccion" type="text" placeholder="Dirección" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <table class="table tablasdetalles">
                                        <tr>
                                            <th>Nombre Producto</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                        </tr>
                                        <tr>
                                            <td><input name="nom_producto"class="form-control input-md" type="text"></td>
                                            <td><input name="cantidad" class="form-control input-md" type="text"></td>
                                            <td><input id="val_unit" name="val_unit" class="inputregistro form-control input-md" type="text"></td>
                                        </tr>
                                    </table>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Valor Unitario">Valor Total</label>  
                                        <div class="col-md-4">
                                            <input id="val_total" name="val_total" type="text" placeholder="Total"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Observacion">Observación</label>  
                                        <div class="col-md-4">
                                            <input id="observaciones" name="observaciones" type="text" placeholder="Observación" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-success">Registrar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <!--FIN REGISTRO PEDIDOS-->
        <!--DETALLES PEDIDOS VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModallist" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información del Pedido</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="nombreCliente">Nombre Cliente</label>  
                                        <div class="col-md-5">
                                            <input id="mNombre_cliente" name="nombre_cliente" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Telefono">Teléfono</label>  
                                        <div class="col-md-4">
                                            <input id="mTelefono" name="telefono" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Direccion">Dirección</label>  
                                        <div class="col-md-4">
                                            <input id="mDireccion" name="direccion" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <table class="table tablasdetalles">
                                        <tr>
                                            <th>Nombre Producto</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                        </tr>
                                        <tr>
                                            <td><input id="mNombre_producto"class="form-control input-md" type="text" readonly value=""></td>
                                            <td><input id="mCantidad"class="form-control input-md" type="text" readonly value=""></td>
                                            <td><input id="mValor_unitario" class="form-control input-md" type="text" readonly value=""></td>
                                        </tr>

                                    </table>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Valor total">Valor Total</label>  
                                        <div class="col-md-4">
                                            <input id="mValor_total" name="val_total" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Observacion">Observación</label>  
                                        <div class="col-md-4">
                                            <textarea id="mObservaciones" name="observaciones" type="text" readonly class="form-control input-md" required=""></textarea>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--FIN DETALLES PEDIDOS-->

        <!--EDITAR PEDIDOS-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleditar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Editar Pedido</h2>
                        </div>
                        <div class="modal-body">
                            <form action="EditarPedido" method="GET" class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <div class="col-md-4">
                                            <input id="mId1" name="Id"  type="hidden" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="nombreCliente">Nombre Cliente</label>  
                                        <div class="col-md-5">
                                            <input id="mNombre_cliente1" name="nombre_cliente" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Telefono">Telefono</label>  
                                        <div class="col-md-4">
                                            <input id="mTelefono1" name="telefono" type="text"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Direccion">Dirección</label>  
                                        <div class="col-md-4">
                                            <input id="mDireccion1" name="direccion" type="text"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <table class="table tablasdetalles">
                                        <tr>
                                            <th>Nombre Producto</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                        </tr>
                                        <tr>
                                            <td><input id="mNombre_producto1" name="nom_producto" class="form-control input-md" type="text"></td>
                                            <td><input id="mCantidad1" name="cantidad" class="form-control input-md" type="text"></td>
                                            <td><input id="mValor_unitario1" name="val_unit" class="form-control input-md" type="text"></td>
                                        </tr>

                                    </table>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Valor_total">Valor Total</label>  
                                        <div class="col-md-4">
                                            <input id="mValor_total1" name="val_total" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="comment">Observación</label>  
                                        <div class="col-md-4">
                                            <textarea id="mObservaciones1" name="observaciones" type="textarea" class="form-control input-md" required=""></textarea>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-success">Guardar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <!--FIN ETIDAR PEDIDOS-->

        <%@include file="footer.jsp" %>
        <script>
            function modal(nombre_cliente, telefono, direccion, nombre_producto, cantidad, valor_unitario, valor_total, observaciones) {
                $('#mNombre_cliente').val(nombre_cliente);
                $('#mTelefono').val(telefono);
                $('#mDireccion').val(direccion);
                $('#mNombre_producto').val(nombre_producto);
                $('#mCantidad').val(cantidad);
                $('#mValor_unitario').val(valor_unitario);
                $('#mValor_total').val(valor_total);
                $('#mObservaciones').val(observaciones);
            }
            function modal1(id, nombre_cliente, telefono, direccion, nombre_producto, cantidad, valor_unitario, valor_total, observaciones) {
                $('#mId1').val(id);
                $('#mNombre_cliente1').val(nombre_cliente);
                $('#mTelefono1').val(telefono);
                $('#mDireccion1').val(direccion);
                $('#mNombre_producto1').val(nombre_producto);
                $('#mCantidad1').val(cantidad);
                $('#mValor_unitario1').val(valor_unitario);
                $('#mValor_total1').val(valor_total);
                $('#mObservaciones1').val(observaciones);
            }
        </script>
    </body>
</html>
