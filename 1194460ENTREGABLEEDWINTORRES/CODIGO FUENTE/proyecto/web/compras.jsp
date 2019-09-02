<%-- 
    Document   : compras
    Created on : 18/07/2017, 06:34:40 PM
    Author     : ficha1194460
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>

    <body>
        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp"%>
        <div class="container">
            <h2>Compras</h2>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Buscar">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
            </form> 
            <table class="table">
                <thead>
                    <tr>
                        <th>Empleado</th>
                        <th>Fecha</th>
                        <th>Valor Total</th>
                        <th><button class="btn btn-warning navbar-left btn-venta" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar"><span class="glyphicon glyphicon-remove"></span></button>
                        </td>         
                    </tr>      
                </tbody>
            </table>
            <div class="paginacion">
                <ul class = "pagination">
                    <li><a href = "#">&laquo;</a></li>
                    <li><a href = "#">1</a></li>
                    <li><a href = "#">2</a></li>
                    <li><a href = "#">3</a></li>
                    <li><a href = "#">4</a></li>
                    <li><a href = "#">5</a></li>
                    <li><a href = "#">&raquo;</a></li>
                </ul>
            </div>
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
                            <h2>Registrar Compra</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Empleado">Empleado</label>  
                                        <div class="col-md-4">
                                            <input id="Empleado" name="empleado" type="text" placeholder="Nombre Empleado" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Fecha">Fecha</label>  
                                        <div class="col-md-4">
                                            <input id="Fecha" name="fecha" type="date"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <table class="table tablasdetalles">
                                        <tr>
                                            <th>Nombre Producto</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                        </tr>
                                        <tr>
                                            <td><input class="inputregistro" type="text"></td>
                                            <td><input class="inputregistro" type="text"></td>
                                            <td><input class="inputregistro" type="text"></td>
                                        </tr>
                                    </table>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Valor Total">Valor Total</label>  
                                        <div class="col-md-4">
                                            <input id="Valor total" name="valortotal" type="text" placeholder="Total"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Observacion">Observación</label>  
                                        <div class="col-md-4">
                                            <input id="Observacion" name="observacion" type="text" placeholder="Observación" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--DETALLES COMPRAS VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModallist" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información de la Compra</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Fecha">Fecha</label>  
                                        <div class="col-md-4">
                                            <input id="Fecha" name="fecha" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Empleado">Empleado</label>  
                                        <div class="col-md-4">
                                            <input id="Empleado" name="empleado" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <table class="table tablasdetalles">
                                        <tr>
                                            <th>Id Producto</th>
                                            <th>Nombre Producto</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Valor Total">Valor Total</label>  
                                        <div class="col-md-4">
                                            <input id="Valor Total" name="valortotal" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Observacion">Observación</label>  
                                        <div class="col-md-4">
                                            <input id="Observacion" name="observacion" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN DETALLES COMPRA-->

        <!--EDITAR COMPRA-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleditar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Editar Compra</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Empleado">Empleado</label>  
                                        <div class="col-md-4">
                                            <input id="Empleado" name="empleado" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Fecha">Fecha</label>  
                                        <div class="col-md-4">
                                            <input id="Fecha" name="fecha" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <table class="table tablasdetalles">
                                        <tr>
                                            <th>Nombre Producto</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                        </tr>
                                        <tr>
                                            <td><input class="inputregistro" type="text"></td>
                                            <td><input class="inputregistro" type="text"></td>
                                            <td><input class="inputregistro" type="text"></td>
                                        </tr>
                                        <tr>
                                            <td><input class="inputregistro" type="text"></td>
                                            <td><input class="inputregistro" type="text"></td>
                                            <td><input class="inputregistro" type="text"></td>
                                        </tr>
                                    </table>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Valor Unitario">Valor Total</label>  
                                        <div class="col-md-4">
                                            <input id="Valor Unitarion" name="valorunitario" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Observacion">Observación</label>  
                                        <div class="col-md-4">
                                            <input id="Observacion" name="observacion" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN ETIDAR COMPRA-->

        <!--ELIMINAR COMPRA-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleliminar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content ventanaeliminar">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>¿Eliminar esta compra?</h4>
                        </div>
                        <div class="modal-body">
                            <p>¿Seguro que quieres eliminar esta compra?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN ELIMINAR COMPRA--> 

        <%@include file="footer.jsp"%>
    </body>
</html>
