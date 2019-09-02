<%-- 
    Document   : RegistroPedidos
    Created on : 22/08/2017, 01:45:08 PM
    Author     : Edwin
--%>

<%@page import="Model.Personas"%>
<%@page import="Model.Empleados"%>
<%@page import="Model.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <link rel="stylesheet" href="media/Custom/css/RegistroPedido.css" type="text/css" />
    <body>
        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <% ArrayList<Productos> Listar = (ArrayList<Productos>) session.getAttribute("Listar");%>
                    <% ArrayList<Personas> ListarCedula = (ArrayList<Personas>) session.getAttribute("ListarCedula");%>
                    <form  class="form-inline validaciones"  action="RegistroPedido" method="POST">
                        <fieldset>
                            <legend class="text-center header"><h1>Registro Pedido</h1></legend>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Nombre Empleado</label> 
                                <div class="col-md-4">    
                                    <select  name="CedulaEmpleado" id="mTipo_id"class="form-control">
                                        <%for (Personas em:ListarCedula) {%>
                                                <option value="<%=em.getCedula()%>"><%=em.getNombre()%></option>
                                            <%}%>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Cedula Cliente</label>
                                <div class="col-md-6">
                                    <input name="CedulaCliente" id="nombre" type="text" placeholder="Cedula Cliente" class="form-control">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-9 col-md-offset-3">
                                    <div id="messages"></div>
                                </div>
                            </div><br><br>
                        </fieldset>
                        <div class="col-md-6">
                            <h1>Productos</h1>
                            <input id="searchTerm" class="form-control BuscadorCarrito" type="text" placeholder="Buscar" onkeyup="doSearch()" /><br><br>
                            <div id="TablaProductos">
                                <table id="datos" class="table table-striped table-bordered dt-responsive nowrap">
                                    <thead>
                                        <tr>
                                            <th>Productos</th>
                                            <th>Valor</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%for (Productos p : Listar) {%>
                                        <tr>
                                            <td class="pro"><%=p.getNombre()%></td>
                                            <td class="pre"><%=p.getValor()%></td>
                                            <td><a class="btn btn-warning minus"><span class="glyphicon glyphicon-minus"></span></a>
                                                <input class="cantidad carro" value="1" type="text" name=""/>
                                                <a class="btn btn-warning plus"><span class="glyphicon glyphicon-plus"></span></a>
                                                <a class="btn btn-warning btnC"><span class="glyphicon glyphicon-shopping-cart" ></span></a>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table> 
                            </div>
                        </div>

                        <div id="" class="col-md-4">
                            <h1><center>Pedido</center></h1><br>
                            <table  class="table total table-striped">
                                <thead>
                                    <tr>
                                        <th>Producto</th>
                                        <th>Valor</th>
                                        <th>Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>

                            </table>
                            <label class="totalv ">Valor Total</label>
                            <input class="valorT form-control" readonly="" type="text"  value="0" name="total"/><br><br>
                            <div class="form-group">
                                <div class="text-center">
                                    <a href="javascript:window.history.go(-1);" class="btn btn-lg btn-default"> Cancelar</a>
                                    <button type="submit"  class="btn btn-warning btn-lg">Guardar</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>

    </body>
</html>
