<%-- 
    Document   : proveedores
    Created on : 18/07/2017, 06:18:14 PM
    Author     : ficha1194460
--%>

<%@page import="Model.Proveedores"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>
    <body>
        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp"%>
        <div class="container">
            <div class="container">
                <h2>Información de Proveedores</h2>
                <h2 class="h2registro">Registrar Proveedor</h2>
                <button id="botregproveedor" class="btn btn-warning navbar-left botonregistro" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
                <br>
            </div>
            <% ArrayList<Proveedores> Listar = (ArrayList<Proveedores>) session.getAttribute("ListarProveedor"); %>
            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr>
                        <th>Nombre contacto</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Proveedores p : Listar) {%>
                    <tr>
                        <td><%=p.getNombreContacto()%></td>
                        <td><%=p.getTelefono()%></td>
                        <td><%=p.getDireccion()%></td>
                        <td>
                            <a class="btn btn-warning" onclick="modal_Listar('<%=p.getNit()%>', '<%=p.getRazonSocial()%>', '<%=p.getNombreContacto()%>', '<%=p.getTelefono()%>', '<%=p.getEmail()%>', '<%=p.getDireccion()%>')" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></a>
                            <a class="btn btn-warning" onclick="modal_Editar('<%=p.getId()%>', '<%=p.getNit()%>', '<%=p.getRazonSocial()%>', '<%=p.getNombreContacto()%>', '<%=p.getTelefono()%>', '<%=p.getEmail()%>', '<%=p.getDireccion()%>')" data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=p.getNit()%>"><span class="glyphicon glyphicon-remove"></span></a>
                        </td>         
                    </tr> 
                    <!--ELIMINAR PROVEEDOR-->
                <div class="modal fade" id="myModaleliminar<%=p.getNit()%>" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Eliminar Producto?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres eliminar este Proveedor?</p>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-warning" href="EliminarProveedor?Nit=<%=p.getNit()%>">Guardar</a>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--FIN ELIMINAR PROVEEDOR-->
                <%}%>
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
                            <h2>Registrar Proveedores</h2>
                        </div>
                        <div class="modal-body">
                            <form action="RegistroProveedor" method="POST" class="form-horizontal validaciones">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Id">NIT</label>  
                                        <div class="col-md-5">
                                            <input id="NIT" name="Nit" type="text" placeholder="NIT" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="razonsocial">Razón Social</label>  
                                        <div class="col-md-5">
                                            <input id="razonsocial" name="RazonSocial" type="text" placeholder="Razón Social" class="form-control input-md" required="">
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="nombrecontacto">Nombre Contacto</label>  
                                        <div class="col-md-4">
                                            <input id="nombrecontacto" name="Contacto" type="text" placeholder="Nombre contacto" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Télefono">Télefono</label>  
                                        <div class="col-md-4">
                                            <input id="Proveedor" name="Telefono" type="text" placeholder="Télefono" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="email">Email</label>  
                                        <div class="col-md-4">
                                            <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Dirección">Dirección</label>  
                                        <div class="col-md-4">
                                            <input id="Proveedor" name="Direccion" type="text" placeholder="Dirección" class="form-control input-md" required="">
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
        <!--DETALLES PROVEEDORES VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModallist" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información de Proveedores</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Id">NIT</label>  
                                        <div class="col-md-4">
                                            <input id="mNit" name="nit" type="text" readonly  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="razonsocial">Razón Social</label>  
                                        <div class="col-md-4">
                                            <input id="mRazonSocial" name="razonsocial" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="nombrecontacto">Nombre Contacto</label>  
                                        <div class="col-md-4">
                                            <input id="mContacto" name="nombrecontacto" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Télefono">Télefono</label>  
                                        <div class="col-md-4">
                                            <input id="mTelefono" name="telefono" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="email">Email</label>  
                                        <div class="col-md-4">
                                            <input id="mEmail" name="email" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Dirección">Dirección</label>  
                                        <div class="col-md-4">
                                            <input id="mDireccion" name="proveedor" type="text" readonly class="form-control input-md" required="">
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

        <!--EDITAR PROVEEDOR-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleditar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Editar Proveedor</h2>
                        </div>
                        <div class="modal-body">
                            <form action="EditarProveedor" method="POST" class="form-horizontal validaciones" >
                                <fieldset>
                                    <input id="mId1" type="hidden" name="Id"  type="text" class="form-control input-md" required="">
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Id">NIT</label>  
                                        <div class="col-md-4">

                                            <input id="mNit1" name="Nit" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="razonsocial">Razón Social</label>  
                                        <div class="col-md-4">
                                            <input id="mRazonSocial1" name="RazonSocial" type="text"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="nombrecontacto">Nombre Contacto</label>  
                                        <div class="col-md-4">
                                            <input id="mContacto1" name="Contacto" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Télefono">Télefono</label>  
                                        <div class="col-md-4">
                                            <input id="mTelefono1" name="Telefono" type="text"  class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="email">Email</label>  
                                        <div class="col-md-4">
                                            <input id="mEmail1" name="Email" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Dirección">Dirección</label>  
                                        <div class="col-md-4">
                                            <input id="mDireccion1" name="Direccion" type="text" class="form-control input-md" required="">
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

        <!--FIN ETIDAR PRODUCTO-->


        <script>
            function modal_Listar(Nit, RazonSocial, Contacto, Telefono, Email, Direccion) {
                $('#mNit').val(Nit);
                $('#mRazonSocial').val(RazonSocial);
                $('#mContacto').val(Contacto);
                $('#mTelefono').val(Telefono);
                $('#mEmail').val(Email);
                $('#mDireccion').val(Direccion);


            }
            function modal_Editar(Id, Nit, RazonSocial, Contacto, Telefono, Email, Direccion) {
                $('#mId1').val(Id);
                $('#mNit1').val(Nit);
                $('#mRazonSocial1').val(RazonSocial);
                $('#mContacto1').val(Contacto);
                $('#mTelefono1').val(Telefono);
                $('#mEmail1').val(Email);
                $('#mDireccion1').val(Direccion);
            }
            ;
        </script>
        <%@include file="footer.jsp" %>
    </body>
</html>
