<%-- 
    Document   : tributarias
    Created on : 19/08/2017, 08:46:44 AM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body>
        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>

        <!--TABS PAGINAS TRIBUTARIAS-->
        <div class="container">
            <div class="tab-content">
                <!--TABLA SALARIOS-->
                <div id="salarios" class="tab-pane fade in active">
                    <div class="container">
                        <h2>Salarios</h2>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form> 
                        <button class="btn btn-success navbar-right botonregistro" data-toggle="modal" data-target="#myModal">Añadir nuevo registro</button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre Empleado</th>
                                    <th>Total Salario</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Edwin Torres</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModaleliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr>      
                                <tr>
                                    <td>Edwin Torres</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModaleliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td> 
                                </tr>
                                <tr>
                                    <td>Edwin Torres</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModaleliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td> 
                                </tr>
                                <tr>
                                    <td>Edwin Torres</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModaleliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td> 
                                </tr>
                                <tr>
                                    <td>Edwin Torres</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModaleliminar"><span class="glyphicon glyphicon-remove"></span></button>
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
                    <!-- FORMULARIO registras salario VENTANA MODAL! -->
                    <div class="container">
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h2>Registrar Salario</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal">
                                            <fieldset>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="nombreemp">Nombre Empleado</label>  
                                                    <div class="col-md-5">
                                                        <input id="nombreemp" name="nombreemp" type="text" placeholder="Nombre Empleado" class="form-control input-md" required="">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="Horastrabajadas">Horas Trabajadas</label>  
                                                    <div class="col-md-5">
                                                        <input id="horastrabajadas" name="horastrabajadas" type="text" placeholder="Horas Trabajadas" class="form-control input-md" required="">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="Horasextras">Horas Extras</label>  
                                                    <div class="col-md-5">
                                                        <input id="horasextras" name="horasextras" type="text" placeholder="Horas extras" class="form-control input-md" required="">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="valorhtrabajada">Valor Hora Trabajada</label>  
                                                    <div class="col-md-4">
                                                        <input id="valorhtrabajada" name="valorhtrabajada" type="text" placeholder="Valor Hora Trabajada" class="form-control input-md" required="">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="valorhextra">Valor Hora Extra</label>  
                                                    <div class="col-md-4">
                                                        <input id="valorhextra" name="valorhextra" type="text" placeholder="Valor Hora Extra" class="form-control input-md" required="">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="totalsal">Total Salario</label>  
                                                    <div class="col-md-4">
                                                        <input id="totalsal" name="totalsal" type="text" placeholder="Total Salario" class="form-control input-md" required="">
                                                    </div>
                                                </div>

                                            </fieldset>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success">Registrar</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--FIN REGISTRAR  SALARIOS--> 
                <!--DETALLES SALARIOS VENTANA MODAL! -->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModallist" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2>Información Salario</h2>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="nombreemp">Nombre Empleado</label>  
                                                <div class="col-md-5">
                                                    <input id="nombreemp" name="nombreemp" type="text" readonly="readonly" value="Edwin Torres" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="Horastrabajadas">Horas Trabajadas</label>  
                                                <div class="col-md-5">
                                                    <input id="horastrabajadas" name="horastrabajadas" type="text" readonly="readonly"  value="48" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="Horasextras">Horas Extras</label>  
                                                <div class="col-md-5">
                                                    <input id="horasextras" name="horasextras" type="text" readonly="readonly"  value="12" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="valorhtrabajada">Valor Hora Trabajada</label>  
                                                <div class="col-md-4">
                                                    <input id="valorhtrabajada" name="valorhtrabajada" type="text" readonly="readonly"  value="$3.500" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="valorhextra">Valor Hora Extra</label>  
                                                <div class="col-md-4">
                                                    <input id="valorhextra" name="valorhextra" type="text" readonly="readonly"  value="$4.500" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="totalsal">Total Salario</label>  
                                                <div class="col-md-4">
                                                    <input id="totalsal" name="totalsal" type="text" readonly="readonly"  value="$900.000" class="form-control input-md" required="">
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
                <!--FIN DETALLES SALARIOS-->

                <!--EDITAR SALARIO-->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModaleditar" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2>Editar Salario</h2>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="nombreemp">Nombre Empleado</label>  
                                                <div class="col-md-5">
                                                    <input id="nombreemp" name="nombreemp" type="text" value="Edwin Torres" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="Horastrabajadas">Horas Trabajadas</label>  
                                                <div class="col-md-5">
                                                    <input id="horastrabajadas" name="horastrabajadas" type="text"  value="48" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="Horasextras">Horas Extras</label>  
                                                <div class="col-md-5">
                                                    <input id="horasextras" name="horasextras" type="text"  value="12" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="valorhtrabajada">Valor Hora Trabajada</label>  
                                                <div class="col-md-4">
                                                    <input id="valorhtrabajada" name="valorhtrabajada" type="text"  value="$3.500" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="valorhextra">Valor Hora Extra</label>  
                                                <div class="col-md-4">
                                                    <input id="valorhextra" name="valorhextra" type="text"  value="$4.500" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="totalsal">Total Salario</label>  
                                                <div class="col-md-4">
                                                    <input id="totalsal" name="totalsal" type="text"  value="$900.000" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Guardar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--FIN ETIDAR SALARIO-->

                <!--ELIMINAR SALARIO-->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModaleliminar" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content ventanaeliminar">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4>¿Eliminar este salario?</h4>
                                </div>
                                <div class="modal-body">
                                    <p>¿Seguro que quieres eliminar este salario?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--FIN ELIMINAR SALARIO-->

                <!--FIN TABLA SALARIOS-->

                <!--TABLA CARGOS-->
                <div id="cargos" class="tab-pane fade ">
                    <div class="container">
                        <h2>Cargos</h2>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form> 
                        <button class="btn btn-success navbar-right botonregistro" data-toggle="modal" data-target="#myModal">Añadir nuevo registro</button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre Empleado</th>
                                    <th>Nombre Cargo</th>
                                    <th>Salario</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Arley Ochoa</td>
                                    <td>Cajero</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal2list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal2editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>        
                                </tr>      
                                <tr>
                                    <td>Arley Ochoa</td>
                                    <td>Cajero</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal2list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal2editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>      
                                </tr> 
                                <tr>
                                    <td>Arley Ochoa</td>
                                    <td>Cajero</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal2list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal2editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>       
                                </tr> 
                                <tr>
                                    <td>Arley Ochoa</td>
                                    <td>Cajero</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal2list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal2editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr> 
                                <tr>
                                    <td>Arley Ochoa</td>
                                    <td>Cajero</td>
                                    <td>$900.000</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal2list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal2editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2eliminar"><span class="glyphicon glyphicon-remove"></span></button>
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
                                <li><a href = "#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- FORMULARIO REGISTRO CARGO VENTANA MODAL! -->
                    <div class="container">
                        <!-- Modal -->
                        <div class="modal fade" id="myModal2" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h2>Registrar Cargo</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal">
                                            <fieldset>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" >Nombre Empleado</label>  
                                                    <div class="col-md-5">
                                                        <input name="nombreempleado" type="text" placeholder="Nombre Empleado" class="form-control input-md" >
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" >Nombre Cargo</label>  
                                                    <div class="col-md-5">
                                                        <input name="nombrecargo" type="text" placeholder="Nombre Cargo" class="form-control input-md" >
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Salario</label>  
                                                    <div class="col-md-4">
                                                        <input name="salario" type="text" placeholder="Salario" class="form-control input-md" required="">
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success">Registrar</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!--DETALLES CARGOS VENTANA MODAL! -->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModal2list" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2>Información Cargo</h2>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Nombre Empleado</label>  
                                                <div class="col-md-5">
                                                    <input name="nombreempleado" type="text" readonly="readonly" value="Arley Ochoa" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Id Empleado</label>  
                                                <div class="col-md-5">
                                                    <input name="idempleado" type="text"  readonly="readonly" value="012" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Nombre Cargo</label>  
                                                <div class="col-md-5">
                                                    <input name="nombrecargo" type="text"  readonly="readonly" value="Cajero" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Id Cargo</label>  
                                                <div class="col-md-5">
                                                    <input name="idcargo" type="text"  readonly="readonly" value="003" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Salario</label>  
                                                <div class="col-md-4">
                                                    <input name="salario" type="text"  readonly="readonly" value="$900.000" class="form-control input-md" required="">
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
                <!--FIN DETALLES CARGOS-->

                <!--EDITARCARGOS-->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModal2editar" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2>Editar Salario</h2>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Nombre Empleado</label>  
                                                <div class="col-md-5">
                                                    <input name="nombreempleado" type="text"  value="Arley Ochoa" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Nombre Cargo</label>  
                                                <div class="col-md-5">
                                                    <input name="nombrecargo" type="text"   value="Cajero" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">Salario</label>  
                                                <div class="col-md-4">
                                                    <input name="salario" type="text"   value="$900.000" class="form-control input-md" required="">
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Guardar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--FIN ETIDARCARGOS-->
                <!--ELIMINARCARGOS-->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModal2eliminar" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content ventanaeliminar">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4>¿Eliminar este cargo?</h4>
                                </div>
                                <div class="modal-body">
                                    <p>¿Seguro que quieres eliminar este cargo?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--FIN ELIMINAR CARGOS-->
                <!--FIN TABLA CARGOS-->

                <!--TABLA descuentos-->
                <div id="descuentos" class="tab-pane fade ">
                    <div class="container">
                        <h2>Descuentos</h2>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form> 
                        <button class="btn btn-success navbar-right botonregistro" data-toggle="modal" data-target="#myModal">Añadir nuevo registro</button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre Producto</th>
                                    <th>Descuento</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Tortas</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal3list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal3editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal3eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr>      
                                <tr>
                                    <td>Tortas</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal3list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal3editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal3eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr> 
                                <tr>
                                    <td>Tortas</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal3list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal3editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal3eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr>
                                <tr>
                                    <td>Tortas</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal3list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal3editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal3eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr>
                                <tr>
                                    <td>Tortas</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal3list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal3editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal3eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                </tr>
                            </tbody>
                        </table>
                        <div class="paginacion">
                            <ul class = "pagination">
                                <li><a href = "#">&laquo;</a></li>
                                <li><a href = "#">1</a></li>
                                <li><a href = "#">2</a></li>
                                <li><a href = "#">3</a></li>
                                <li><a href = "#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- FORMULARIO registro DESCUENTOS VENTANA MODAL! -->
                    <div class="container">
                        <!-- Modal -->
                        <div class="modal fade" id="myModal3" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h2>Registrar Descuento</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal">
                                            <fieldset>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" >Nombre producto</label>  
                                                    <div class="col-md-5">
                                                        <input name="nombreproducto" type="text" placeholder="Nombre Producto" class="form-control input-md">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" >Descuento</label>  
                                                    <div class="col-md-5">
                                                        <input name="descuentos" type="text" placeholder="Descuento" class="form-control input-md" >

                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success">Registrar</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!--DETALLES DESCUENTOS VENTANA MODAL! -->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModal3list" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2>Información Descuento</h2>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Id Producto</label>  
                                                <div class="col-md-5">
                                                    <input name="Idproducto" type="text" readonly="readonly" value="015" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Nombre producto</label>  
                                                <div class="col-md-5">
                                                    <input name="nombreproducto" type="text" readonly="readonly" value="Tortas" class="form-control input-md">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Id Descuento</label>  
                                                <div class="col-md-5">
                                                    <input name="Iddescuento" type="text" readonly="readonly" value="01" class="form-control input-md" >
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Descuento</label>  
                                                <div class="col-md-5">
                                                    <input name="descuentos" type="text" readonly="readonly" value="5%" class="form-control input-md" >
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
                <!--FIN DETALLES DESCUENTOS-->

                <!--EDITAR DESCUENTOS-->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModal3editar" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2>Editar Descuento</h2>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Nombre producto</label>  
                                                <div class="col-md-5">
                                                    <input name="nombreproducto" type="text" value="Tortas" class="form-control input-md">
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" >Descuento</label>  
                                                <div class="col-md-5">
                                                    <input name="descuentos" type="text" value="5%" class="form-control input-md" >
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Guardar</button>         
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--FIN ETIDARDESCUENTOS-->
                <!--ELIMINARDESCUENTOS-->
                <div class="container">
                    <!-- Modal -->
                    <div class="modal fade" id="myModal3eliminar" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content ventanaeliminar">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4>¿Eliminar este Descuento?</h4>
                                </div>
                                <div class="modal-body">
                                    <p>¿Seguro que quieres eliminar este Descuento?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--FIN ELIMINAR DESCUENTOS-->

                <!--FIN TABLA DESCUENTOS-->

                <!--TABLA IVA-->
                <div id="iva" class="tab-pane fade ">
                    <div class="container">
                        <h2>IVA</h2>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <button class="btn btn-success navbar-right botonregistro" data-toggle="modal" data-target="#myModal">Añadir nuevo registro</button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre Producto</th>
                                    <th>IVA</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal4list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal4editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal4eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr>      
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal4list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal4editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal4eliminar"><span class="glyphicon glyphicon-remove"></span></button>
                                    </td>         
                                </tr> 
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>5%</td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#myModal4list"><span class="glyphicon glyphicon-eye-open"></span></button>
                                        <button class="btn btn-warning" data-toggle="modal" data-target="#myModal4editar"><span class="glyphicon glyphicon-pencil"></span></button>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#myModal4eliminar"><span class="glyphicon glyphicon-remove"></span></button>
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
                                <li><a href = "#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- FORMULARIO registro IVA VENTANA MODAL! -->
                    <div class="container">
                        <!-- Modal -->
                        <div class="modal fade" id="myModal4" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h2>Registrar IVA</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal">
                                            <fieldset>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" >Nombre Producto</label>  
                                                    <div class="col-md-5">
                                                        <input name="Idiva" type="text" placeholder="Nombre Producto" class="form-control input-md">
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" >IVA</label>  
                                                    <div class="col-md-5">
                                                        <input name="iva" type="text" placeholder="IVA" class="form-control input-md" >
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success">Registrar</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--DETALLES IVA VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal4list" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información IVA</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Nombre Producto</label>  
                                        <div class="col-md-5">
                                            <input name="Idiva" type="text" readonly="readonly" placeholder="Torta Chocolate" class="form-control input-md">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >IVA</label>  
                                        <div class="col-md-5">
                                            <input name="iva" type="text" readonly="readonly" placeholder="5%" class="form-control input-md" >
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
        <!--FIN DETALLES IVA-->

        <!--EDITAR IVA-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal4editar" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Editar IVA</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Nombre Producto</label>  
                                        <div class="col-md-5">
                                            <input name="Idiva" type="text" value="Torta Chocolate" class="form-control input-md">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >IVA</label>  
                                        <div class="col-md-5">
                                            <input name="iva" type="text" value="5%" class="form-control input-md" >
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Guardar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--FIN ETIDARDESCUENTOS-->
        <!--ELIMINAR IVA-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal4eliminar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content ventanaeliminar">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>¿Eliminar este IVA?</h4>
                        </div>
                        <div class="modal-body">
                            <p>¿Seguro que quieres eliminar este IVA?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN ELIMINAR IVA-->
        <!--FIN TABLA IVA-->
        <%@include file="footer.jsp" %>
    </body>
</html>
