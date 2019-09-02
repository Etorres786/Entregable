<%-- 
    Document   : productos
    Created on : 04-jul-2017, 11:47:21
    Author     : EDWIN
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Productos"%>
<%@page import="Model.Tipos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="head.jsp"%>
    <body>
        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>

        <div class="container">
            <% ArrayList<Productos> Listar = (ArrayList<Productos>) session.getAttribute("Listar"); %>
            <%DecimalFormat formateador = new DecimalFormat("$###,###.##");%>
            <div class="container">
                <h2>Información de Productos</h2>
                <h2 class="h2registro">Registrar Productos</h2>
                <button id="botregproducto" class="btn btn-warning navbar-left botonregistro" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
                <br>
            </div>
            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Tipo</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    <%for (Productos p : Listar) {%>
                    <tr>
                        <%String Valor= formateador.format(p.getValor());%>
                        <td><%=p.getNombre()%></td>
                        <td><%=Valor%></td>
                        <td><%=p.getTipoId()%></td>
                        <td>
                            <a class="btn btn-warning" onclick="modal2('<%=p.getNombre()%>', '<%=Valor%>', '<%=p.getTipoId()%>')" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></a>
                            <a class="btn btn-warning" onclick="modal('<%=p.getId()%>', '<%=p.getNombre()%>', '<%=p.getValor()%>', '<%=p.getTipoId()%>')"  data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=p.getId()%> "><span class="glyphicon glyphicon-remove"></span></a>
                        </td>         
                    </tr>   
                <div class="modal fade" id="myModaleliminar<%=p.getId()%>" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Eliminar Producto?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres eliminar este Producto?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                <a class="btn btn-warning" href="EliminarProducto?Id=<%= p.getId()%>" >Aceptar</a>
                            </div>
                        </div>
                    </div>
                </div>
                <% }%>
                </tbody>
            </table>


        </div>
        <!--EDITAR PRODUCTO-->
        <div class="modal fade" id="myModaleditar" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2>Editar Producto</h2>
                    </div>
                    <div class="modal-body">
                        <form action="EditarProducto" method="POST"  class="form-horizontal validaciones" > 
                            <fieldset>
                                <!-- Text input-->
                                <div class="form-group">
                                    <div class="col-md-5">
                                        <input id="mId" name="Id" type="hidden" class="form-control input-md" required="">
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Nombre Producto</label>  
                                    <div class="col-md-4">
                                        <input name="nombre" id="mNombre" type="text" placeholder="Nombre Producto" class="form-control input-md">

                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Precio</label>  
                                    <div class="col-md-4">
                                        <input  name="precio" id="mPrecio" type="text" placeholder="Precio" class="form-control input-md" >
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">Tipo</label> 
                                    <div class="col-md-4">    
                                        <select  name="tipo" id="mTipo_id"class="form-control">
                                            <option value="1">Panaderia</option>
                                            <option value="2">Tortas</option>
                                            <option value="3">Reposteria</option>
                                        </select>
                                    </div>
                                </div>
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
        <!-- FORMULARIO REGISTRO PRODUCTO VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Registrar Productos</h2>
                        </div>
                        <div class="modal-body">
                            <form action="RegistroProducto" method="POST" class="form-horizontal validaciones">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Nombre Producto</label>  
                                        <div class="col-md-4">
                                            <input name="nombre" type="text" placeholder="Nombre Producto" class="form-control input-md">

                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Precio</label>  
                                        <div class="col-md-4">
                                            <input  name="precio" type="text" placeholder="Precio" class="form-control input-md" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Tipo</label> 
                                        <div class="col-md-4">    
                                            <select name="tipo" class="form-control"  >
                                                <option value="1">Panaderia</option>
                                                <option value="2">Tortas</option>
                                                <option value="3">Reposteria</option>
                                            </select>
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
        </div>
        <!--DETALLES PRODUCTO VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModallist" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información del Producto</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Nombre Producto</label>  
                                        <div class="col-md-5">
                                            <input id="mNombre1" name="nombrep" type="text" readonly class="form-control input-md" required="">

                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Precio</label>  
                                        <div class="col-md-4">
                                            <input id="mPrecio1" name="Preciop" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Tipo</label>  
                                        <div class="col-md-4">
                                            <input id="mTipo1" name="Tipop" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN DETALLES PRODUCTO-->

        <%@include file="footer.jsp" %>
        <!-- Carga de Datatables -->

        <script>
            function modal(id, nombre, precio, tipo) {

                $('#mId').val(id);
                $('#mNombre').val(nombre);
                $('#mPrecio').val(precio);
                $('#mTipo_id').val(tipo);
            }
            function modal2(nombre, precio, tipo) {
                $('#mNombre1').val(nombre);
                $('#mPrecio1').val(precio);
                $('#mTipo1').val(tipo);
            }
        </script>
    </body>
</html>
