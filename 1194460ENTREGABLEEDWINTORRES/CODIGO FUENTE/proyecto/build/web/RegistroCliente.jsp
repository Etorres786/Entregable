<%-- 
    Document   : Registro_Empleado
    Created on : 10-ago-2017, 12:59:57
    Author     : EDWIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <%@include file="head.jsp" %>
    <title>JSP Page</title>
    <%@include file="banner.jsp" %>
    <body>
        <%@include file="nav.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                        <form id="" class="form-horizontal validaciones"  method="POST" action="RegistroCliente">
                            <fieldset>
                                <legend class="text-center header">Registro Usuario</legend>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Nombre</label>
                                    <div class="col-md-8">
                                        <input name="nombre" id="nombre" type="text" placeholder="Nombre" class="form-control">
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
                                        <input id="phone" name="phone" type="text" placeholder="Télefono" class="form-control">
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
                                        <a type="button" href="index.jsp"  class="btn btn-default btn-lg">Cancelar</a>
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
