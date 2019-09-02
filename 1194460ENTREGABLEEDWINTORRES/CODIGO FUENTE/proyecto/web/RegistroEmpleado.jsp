<%-- 
    Document   : RegistroEmpleado
    Created on : 14-ago-2017, 15:14:26
    Author     : EDWIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <%@include file="head.jsp" %>
        <%@include file="banner.jsp" %>
    <body>
        <%@include file="nav.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                        <form  class="form-horizontal validaciones"  method="POST" action="RegistroEmpleados">
                            <fieldset>
                                <legend class="text-center header">Registro Empleados</legend>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Nombre</label>
                                    <div class="col-md-8">
                                        <input name="nombre" id="nombre" type="text" placeholder="Nombre" class="form-control ">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Apellidos</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input  name="apellido" type="text" placeholder="Apellidos" class="form-control">
                                        <span class="help-block"></span>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-3 control-label">Télefono</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input id="phone" name="phone" type="text" placeholder="Ejemplo 333-3333333" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">N° Documento</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input  name="cedula" type="text" placeholder="Documento" class="form-control">
                                    </div>
                                </div>
                               
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Tipo</label> 
                                        <div class="col-md-8">    
                                            <select name="Tipo" class="form-control"  >
                                                <option value="3">Empleado</option>
                                                <option value="1">Admin</option>
                                            </select>
                                        </div>
                                    </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Email</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-3 control-label">Dirección</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input id="phone" name="direccion" type="text" placeholder="Dirección" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Usuario</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input name="usuario" type="text" placeholder="Usuario" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Contraseña</label>
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                                    <div class="col-md-8">
                                       <input id="pass" name="pass" type="password" placeholder="Contraseña" class="form-control" onkeyup="this.form.password.value=md5(this.form.pass.value)" required="">
                                       <input name="password" type="hidden">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-9 col-md-offset-3">
                                        <div id="messages"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12 text-center">
                                        <a type="button" href="ListarEmpleado"  class="btn btn-default btn-lg">Cancelar</a>
                                        <button type="submit"  class="btn btn-warning btn-lg">Guardar</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
