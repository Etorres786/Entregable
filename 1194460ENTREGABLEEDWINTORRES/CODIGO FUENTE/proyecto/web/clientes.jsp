<%@page import="Model.Personas"%>
<%@page import="java.util.ArrayList"%>

<%@page import="Model.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>
    <body>


        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp" %>
        <div class="container">
            <% ArrayList<Personas> Listar = (ArrayList<Personas>) session.getAttribute("Listar");%>
            <div class="container">
                <h2>Información de Clientes</h2>
                <h2 class="h2registro">Registrar Cliente</h2>
                <a id="botregcliente" class="btn btn-warning navbar-left botonregistro" href="RegistroClienteADMIN.jsp" ><span class="glyphicon glyphicon-plus"></span></a>
                <br>
            </div>

            <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">
                <thead>
                    <tr> 
                        <th>Nombre</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Personas P : Listar) {%>
                    <tr>
                        <td><%=P.getNombre()%></td>
                        <td><%=P.getTelefono()%></td>
                        <td><%=P.getDireccion()%></td>
                        <td>
                            <a class="btn btn-warning" onclick="modal('<%=P.getNombre()%>', '<%=P.getApellidos()%>', '<%=P.getTelefono()%>', '<%=P.getCedula()%>', '<%=P.getDireccion()%>', '<%=P.getEmail()%>')" data-toggle="modal" data-target="#myModallist"><span class="glyphicon glyphicon-eye-open"></span></a>
                            <a class="btn btn-warning" onclick="modal1('<%=P.getNombre()%>', '<%=P.getApellidos()%>', '<%=P.getTelefono()%>', '<%=P.getCedula()%>', '<%=P.getDireccion()%>', '<%=P.getEmail()%>')"  data-toggle="modal" data-target="#myModaleditar"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a class="btn btn-warning" data-toggle="modal" data-target="#myModaleliminar<%=P.getCedula()%> "><span class="glyphicon glyphicon-remove"></span></a>
                        </td>         
                    </tr>  
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
                                <a class="btn btn-warning" href="EliminarCliente?cedula=<%= P.getCedula()%>" >Aceptar</a>
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
        <!--EDITAR CLIENTES-->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModaleditar" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Editar Clientes</h2>
                        </div>
                        <div class="modal-body">
                            <form  action="EditarCliente " method="POST" class="form-horizontal validaciones">
                                <fieldset>
                                    <!-- Text input1-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="Nombre">Nombre</label>  
                                        <div class="col-md-4">
                                            <input id="mNombre1" name="nombre" type="text" class="form-control input-md" required="">
                                        </div>
                                    </div>
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


        <!--DETALLES CLIENTES VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModallist" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Información del cliente</h2>
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
            $(document).ready(function () {
                $('#contactForm').bootstrapValidator({
                    container: '#messages',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        nombre: {
                            validators: {
                                notEmpty: {

                                    message: 'The full name is required and cannot be empty'
                                },
                                stringLength: {
                                    max: 20,
                                    message: 'The content must be less than 500 characters long'
                                }
                            }
                        },
                        apellido: {
                            validators: {
                                notEmpty: {

                                    message: 'The full name is required and cannot be empty'
                                },
                                stringLength: {
                                    max: 20,
                                    message: 'The content must be less than 500 characters long'
                                }
                            }
                        },
                        direccion: {
                            validators: {
                                notEmpty: {

                                    message: 'The full name is required and cannot be empty'
                                },
                                stringLength: {
                                    max: 35,
                                    message: 'The content must be less than 500 characters long'
                                }
                            }
                        },
                        email: {
                            validators: {
                                notEmpty: {
                                    message: 'The email address is required and cannot be empty'
                                },
                                emailAddress: {
                                    message: 'The email address is not valid'
                                }
                            }
                        },
                        cedula: {
                            validators: {
                                notEmpty: {
                                    message: 'The title is required and cannot be empty'
                                },
                                regexp: {

                                    regexp: /^[0-9]+$/,

                                    message: 'solo puede contener números'

                                }
                            }
                        },
                        telefono: {
                            validators: {
                                notEmpty: {
                                    message: 'The content is required and cannot be empty'
                                },
                                stringLength: {
                                    max: 11,
                                    message: 'The content must be less than 500 characters long'
                                }
                            }
                        }
                    }
                });
            });


        </script>
    </body>

</html>
