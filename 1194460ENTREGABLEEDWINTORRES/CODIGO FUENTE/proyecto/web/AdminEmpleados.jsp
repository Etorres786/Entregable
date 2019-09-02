<%@page import="java.util.ArrayList"%>
<%@page import="Model.Personas"%>
<%@page import="Model.Personas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>

    <body>
        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp"%>

        <div class="container">
            <% ArrayList<Personas> Listar = (ArrayList<Personas>) session.getAttribute("Listar");%>
            <div class="container">
                <h2>Información de Empleados</h2>
                <h2 class="h2registro">Registrar Empleado</h2>
                <a id="botregempleado" href="RegistroEmpleado.jsp" class="btn btn-warning navbar-left botonregistro" ><span class="glyphicon glyphicon-plus"></span></a>
                <br>
            </div> 
            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr> 
                        <th>Nombre</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Estado</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Personas P : Listar) {%>
                    <tr>
                        <td><%=P.getNombre()%></td>
                        <td><%=P.getTelefono()%></td>
                        <td><%=P.getDireccion()%></td>
                        <td><%=P.getHabilitado()%></td>

                        <td>
                            <button class="btn btn-warning" onclick="modal('<%=P.getNombre()%>', '<%=P.getApellidos()%>', '<%=P.getTelefono()%>', '<%=P.getCedula()%>', '<%=P.getDireccion()%>', '<%=P.getEmail()%>')" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></button>
                            <button class="btn btn-warning" onclick="modal1('<%=P.getNombre()%>', '<%=P.getApellidos()%>', '<%=P.getTelefono()%>', '<%=P.getCedula()%>', '<%=P.getDireccion()%>', '<%=P.getEmail()%>')"  data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></button>
                            <button class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=P.getCedula()%> "><span class="glyphicon glyphicon-remove"></span></button>
                            <a class="btn btn-warning" data-toggle="modal" data-target="#myModalHabilitar<%=P.getCedula()%> "><span class="glyphicon glyphicon-ok"></span></a>
                        </td>         
                    </tr>  

                    <!--MODAL PARA HABILITAR EMPLEADO-->
                <div class="modal fade" id="myModalHabilitar<%=P.getCedula()%>" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content ventanaeliminar">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>¿Habilitar Cliente?</h4>
                            </div>
                            <div class="modal-body">
                                <p>¿Seguro que quieres Habilitar este Cliente?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                <a class="btn btn-warning" href="EliminarEmpleado?cedula=<%=P.getCedula()%>&Tarea=Habilitar" >Aceptar</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--MODAL ELIMINAR ! -->
                <div class="modal fade" id="myModaleliminar<%=P.getCedula()%>" role="dialog">
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
                                <a class="btn btn-warning" href="EliminarEmpleado?cedula=<%= P.getCedula()%>&Eliminar=deshabilitar" >Aceptar</a>
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


        <!--DETALLES CLIENTES VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModallist" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información del Empleado</h2>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Nombre">Nombre</label>  
                                        <div class="col-md-4">
                                            <input id="mNombre" name="nombre" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Apellidos">Apellidos</label>  
                                        <div class="col-md-4">
                                            <input id="mApellidos" name="apellidos" type="text" readonly class="form-control input-md" required="">
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
                                        <label class="col-md-4 control-label" for="Cédula">Cédula</label>  
                                        <div class="col-md-4">
                                            <input id="mCedula" name="cedula" type="text" readonly class="form-control input-md" required="">

                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Dirección">Dirección</label>  
                                        <div class="col-md-5">
                                            <input id="mDireccion" name="direccion" type="text" readonly class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Email">Email</label>  
                                        <div class="col-md-5">
                                            <input id="mEmail" name="Emai" type="text" readonly class="form-control input-md" required="">
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
        <!--FIN DETALLES CLIENTES-->
        <!--EDITAR CLIENTES-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleditar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Editar Empleado</h2>
                        </div>
                        <div class="modal-body">
                            <form  action="EditarEmpleado" method="GET" class="form-horizontal validaciones">
                                <fieldset>
                                    <!-- Text input1-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Nombre">Nombre</label>  
                                        <div class="col-md-4">
                                            <input id="mNombre1" name="nombre" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <input name="Tarea"  type="hidden" class="form-control input-md">
                                    <!-- Text input2-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Apellidos">Apellidos</label>  
                                        <div class="col-md-4">
                                            <input id="mApellido1" name="apellido" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input3-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Télefono">Télefono</label>  
                                        <div class="col-md-4">
                                            <input id="mTelefono1" name="telefono" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input4-->

                                    <input id="mCedula1" name="cedula" type="hidden" class="form-control input-md" required="">

                                    <!-- Text input5-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Dirección">Dirección</label>  
                                        <div class="col-md-5">
                                            <input id="mDireccion1" name="direccion" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input6-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="email">Email</label>  
                                        <div class="col-md-5">
                                            <input id="mEmail1" name="email" type="text" class="form-control input-md" required="">
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

        <!--ELIMINAR EMPLEADO-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleliminar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content ventanaeliminar">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>¿Eliminar este Empleado?</h4>
                        </div>
                        <div class="modal-body">
                            <p>¿Seguro que quieres eliminar este Empleado?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN ELIMINAR EMPLEADO--> 
        <%@include file="footer.jsp" %>
        <script>

            function modal(nombre, apellidos, telefono, cedula, direccion, email) {

                $('#mNombre').val(nombre);
                $('#mApellidos').val(apellidos);
                $('#mTelefono').val(telefono);
                $('#mCedula').val(cedula);
                $('#mDireccion').val(direccion);
                $('#mEmail').val(email);

            }
            function modal1(nombre, apellidos, telefono, cedula, direccion, email) {
                $('#mNombre1').val(nombre);
                $('#mApellido1').val(apellidos);
                $('#mTelefono1').val(telefono);
                $('#mCedula1').val(cedula);
                $('#mDireccion1').val(direccion);
                $('#mEmail1').val(email);

            }
        </script>


    </body>
</html>
