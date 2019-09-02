<%-- 
    Document   : inventario
    Created on : 18/07/2017, 07:29:47 PM
    Author     : ficha1194460
--%>

<%@page import="Model.Inventarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>
    <body>
        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp"%>
        <div class="container">
            <% ArrayList<Inventarios> Listar = (ArrayList<Inventarios>) session.getAttribute("ListarInv");%>
<div class="container">
            <h2>Información de Inventario</h2>
            <h2 class="h2registro">Registrar Inventario</h2>
            <button id="botreginventario" class="btn btn-warning navbar-left botonregistro" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
            <br>
        </div>
            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th>Valor Total</th>
                        <th>Estado</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Inventarios I : Listar) {%>
                    <tr>
                        <td><%=I.getProducto()%></td>
                        <td><%=I.getCantidad()%></td>
                        <td><%=I.getValorTotal()%></td>
                        <td><%=I.getHabilitado()%></td>
                        <td>
                            <button class="btn btn-warning" onclick="modal('<%=I.getProducto()%>', '<%=I.getFecha()%>', '<%=I.getCantidad()%>', '<%=I.getValorUnitario()%>', '<%=I.getValorTotal()%>')" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                            <button class="btn btn-warning" onclick="modal1('<%=I.getId()%>', '<%=I.getProducto()%>', '<%=I.getCantidad()%>', '<%=I.getValorUnitario()%>', '<%=I.getValorTotal()%>')"  data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=I.getId()%> "><span class="glyphicon glyphicon-remove"></span></button>
                            <a class="btn btn-warning" data-toggle="modal" data-target="#myModalHabilitar<%=I.getId()%> "><span class="glyphicon glyphicon-ok"></span></a>
                        </td>         
                    </tr>  
                     <!--MODAL PARA HABILITAR Inventario-->
                <div class="modal fade" id="myModalHabilitar<%=I.getId()%>" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Habilitar En El Inventario?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres Habilitar este Producto? al Inventario</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                <a class="btn btn-warning" href="EliminarInventario?Id=<%= I.getId()%>&Tarea=Habilitar" >Aceptar</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <!--MODAL ELIMINAR ! -->
                <div class="modal fade" id="myModaleliminar<%=I.getId()%>" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Eliminar este Registro?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres eliminar este Registro?</p>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-warning" href="EliminarInventario?Id=<%= I.getId()%>&Eliminar=deshabilitar" >Aceptar</a>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div> 
                <!--FIN ELIMINAR CLIENTE! -->
                <% }%>   
                </tbody>
            </table>
        </div>
        <!-- FORMULARIO  REGISTRO INVENTARIO VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Registrar producto en el Inventario</h2>
                        </div>
                        <div class="modal-body">
                            <form action="RegistroInventario" method="GET"class="form-horizontal validaciones" id="">
                                <fieldset>
                                    <!-- Text input-->
                                    <input id="mid" name="Id" type="hidden">
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="producto">Producto</label>  
                                        <div class="col-md-5">
                                            <input id="producto" name="producto" type="text" placeholder="Producto" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <input name="Tarea"  type="hidden" class="form-control input-md">
                                       <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Cantidad">Cantidad</label>  
                                        <div class="col-md-4">
                                            <input id="cantidad" name="cantidad" type="text" placeholder="Cantidad" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="valorunitario">Valor Unitario</label>  
                                        <div class="col-md-4">
                                            <input id="valor_unit" name="valorunitario" type="text" placeholder="Valor Unitario" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <div id="messages"></div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-warning">Registrar</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                </div>

                            </form>
                        </div>

                    </div>

                </div>
            </div>
            <!--DETALLES INVENTARIOS VENTANA MODAL! -->
            <div class="container">
                <!-- Modal -->
                <div class="modal fade" id="myModallist" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h2>Información del Producto en inventario</h2>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal">
                                    <fieldset>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="producto">Producto</label>  
                                            <div class="col-md-5">
                                                <input id="mProducto" name="producto" type="text" readonly class="form-control input-md" required="">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="Fecha_Ingreso">Fecha Ingreso</label>  
                                            <div class="col-md-4">
                                                <input id="mFecha" name="fecha_ingreso" type="text" readonly class="form-control input-md">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="Cantidad">Cantidad</label>  
                                            <div class="col-md-4">
                                                <input id="mCantidad" name="cantidad" type="text" readonly class="form-control input-md" required="">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="Valor Unitario">Valor Unitario</label>  
                                            <div class="col-md-4">
                                                <input id="mValor_Unit" name="valorunitario" type="text" readonly class="form-control input-md" required="">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="Valor Total">Valor Total</label>  
                                            <div class="col-md-4">
                                                <input id="mValor_Total" name="valortotal" type="text" readonly class="form-control input-md" required="">
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--FIN DETALLES INVENTARIOS-->

            <!--EDITAR INVENTARIOS-->
            <div class="container">
                <!-- Modal -->
                <div class="modal fade" id="myModaleditar" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h2>Editar producto en Inventario</h2>
                            </div>
                            <div class="modal-body">
                                <form action="EditarInventario" method="GET" class="form-horizontal validaciones" id="">
                                    <fieldset>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <div class="col-md-5">
                                                <input id="mId1" name="Id" type="hidden" class="form-control input-md" required="">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="producto">Producto</label>  
                                            <div class="col-md-5">
                                                <input id="mProducto1" name="producto" type="text" class="form-control input-md" required="">
                                            </div>
                                        </div>
                                         <input name="Tarea"  type="hidden" class="form-control input-md">
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="cantidad">Cantidad</label>  
                                            <div class="col-md-4">
                                                <input id="mCantidad1" name="cantidad" type="text" class="form-control input-md" required="">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="Valor_unitario">Valor Unitario</label>  
                                            <div class="col-md-4">
                                                <input id="mValor_Unit1" name="valorunitario" type="text" class="form-control input-md" required="">
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        
                                        <div class="form-group">
                                            <div class="col-md-9 col-md-offset-3">
                                                <div id="messages"></div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-warning">Guardar</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </form>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!--FIN ETIDAR INVENTARIOS-->
        </div>
        <%@include file="footer.jsp"%>
        <script>


            function modal(producto, fechaingreso, cantidad, valorunitario, valortotal) {

                $('#mProducto').val(producto);
                $('#mFecha').val(fechaingreso);
                $('#mCantidad').val(cantidad);
                $('#mValor_Unit').val(valorunitario);
                $('#mValor_Total').val(valortotal);


            }
            function modal1(id, producto, cantidad, valorunitario, valortotal) {
                $('#mId1').val(id);
                $('#mProducto1').val(producto);
                $('#mCantidad1').val(cantidad);
                $('#mValor_Unit1').val(valorunitario);
                $('#mValor_Total1').val(valortotal);

            }
           
        </script>
    </body>
</html>
