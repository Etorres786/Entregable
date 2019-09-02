<%-- 
    Document   : informes
    Created on : 19/08/2017, 08:34:03 AM
    Author     : Edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body>
        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>




        <div class="container">
            <div class="col-md-1 navproductos">
                <h2 class="titulomenu">Informes</h2>
                <ul class="nav nav-tabs nav-stacked navproductoscliente">
                    <li><a data-toggle="tab" href="#productos">Productos</a></li>
                    <li><a data-toggle="tab" href="#ventas">Ventas</a></li>
                    <li><a data-toggle="tab" href="#inventario">Inventario</a></li>
                    <li><a data-toggle="tab" href="#compras">Compras</a></li>
                    <li><a data-toggle="tab" href="#proveedores">Proveedores</a></li>
                </ul>
            </div>

            <div class="col-md-10">
                <div class="tab-content">
                    <!--PRODUCTOS-->
                    <div id="productos"  class="tab-pane fade in active">
                        <h2 class="tituloProductos informes">Informe Productos</h2>
                        <form class="navbar-form " role="search">
                            <label for="">Nombre Producto:</label>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <a href="ReporteProductos.jsp" target="black_" class="btn btn-lg btn-info"> Report</a>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <button class="btn btn-info btn-lg navbar-right" data-toggle="modal" data-target="#myModalinformeproductos" ><span class="glyphicon glyphicon-file"></span></button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Precio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>$35.000</td>
                                </tr>      
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>$35.000</td>
                                </tr>
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>$35.000</td>
                                </tr>
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>$35.000</td>
                                </tr>
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>$35.000</td>
                                </tr>
                                <tr>
                                    <td>Torta Chocolate</td>
                                    <td>$35.000</td>
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

                    <!--VENTAS-->
                    <div id="ventas"  class="tab-pane fade">
                        <h2 class="tituloProductos informes">Informe Ventas</h2>
                        <form class="navbar-form " role="search">
                            <label for="">Nombre Cliente:</label>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <br><label for="">Buscar Por Fecha:</label>
                            Desde:&nbsp<input type="date">&nbspHasta:&nbsp<input type="date">
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <button class="btn btn-info btn-lg navbar-right" data-toggle="modal" data-target="#myModal" ><span class="glyphicon glyphicon-file"></span></button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Empleado</th>
                                    <th>Producto</th>
                                    <th>Cliente</th>
                                    <th>Valor Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Tomas Caro</td>
                                    <td>Torta Matrimonio</td>
                                    <td>Edwin Torres</td>
                                    <td>$80.000</td>
                                </tr>      
                                <tr>
                                    <td>Tomas Caro</td>
                                    <td>Torta Matrimonio</td>
                                    <td>Edwin Torres</td>
                                    <td>$80.000</td>
                                </tr>
                                <tr>
                                    <td>Tomas Caro</td>
                                    <td>Torta Matrimonio</td>
                                    <td>Edwin Torres</td>
                                    <td>$80.000</td>
                                </tr>
                                <tr>
                                    <td>Tomas Caro</td>
                                    <td>Torta Matrimonio</td>
                                    <td>Edwin Torres</td>
                                    <td>$80.000</td>
                                </tr>
                                <tr>
                                    <td>Tomas Caro</td>
                                    <td>Torta Matrimonio</td>
                                    <td>Edwin Torres</td>
                                    <td>$80.000</td>
                                </tr>
                                <tr>
                                    <td>Tomas Caro</td>
                                    <td>Torta Matrimonio</td>
                                    <td>Edwin Torres</td>
                                    <td>$80.000</td> 
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
                    <!--inventario-->
                    <div id="inventario"  class="tab-pane fade">
                        <h2 class="tituloProductos informes">Informe Inventario</h2>
                        <form class="navbar-form " role="search">
                            <label for="">Nombre Producto:</label>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <button class="btn btn-info btn-lg navbar-right" data-toggle="modal" data-target="#myModal" ><span class="glyphicon glyphicon-file"></span></button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Producto</th>
                                    <th>Cantidad</th>
                                    <th>Valor Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Torta de chocolate</td><!---->
                                    <td>001</td>
                                    <td>$50.000</td>
                                </tr>      
                                <tr>
                                    <td>Torta de chocolate</td><!---->
                                    <td>001</td>
                                    <td>$50.000</td>
                                </tr>
                                <tr>
                                    <td>Torta de chocolate</td><!---->
                                    <td>001</td>
                                    <td>$50.000</td>
                                </tr>
                                <tr>
                                    <td>Torta de chocolate</td><!---->
                                    <td>001</td>
                                    <td>$50.000</td>
                                </tr>
                                <tr>
                                    <td>Torta de chocolate</td><!---->
                                    <td>001</td>
                                    <td>$50.000</td>
                                </tr>
                                <tr>
                                    <td>Torta de chocolate</td><!---->
                                    <td>001</td>
                                    <td>$50.000</td>
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
                    <!--COMPRAS-->
                    <div id="compras"  class="tab-pane fade">
                        <h2 class="tituloProductos informes">Informe Compras</h2>
                        <form class="navbar-form " role="search">
                            <label for="">Nombre Producto:</label>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <br><label for="">Buscar Por Fecha:</label>
                            Desde:&nbsp<input type="date">&nbspHasta:&nbsp<input type="date">
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <button class="btn btn-info btn-lg navbar-right" data-toggle="modal" data-target="#myModal" ><span class="glyphicon glyphicon-file"></span></button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Empleado</th>
                                    <th>Fecha</th>
                                    <th>Valor Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Tomas</td>
                                    <td>01/02/2017</td>
                                    <td>3200000</td>
                                </tr>      
                                <tr>
                                    <td>Tomas</td>
                                    <td>01/03/2017</td>
                                    <td>3200000</td>
                                </tr>
                                <tr>
                                    <td>Tomas</td>
                                    <td>01/04/2017</td>
                                    <td>3200000</td>
                                </tr>
                                <tr>
                                    <td>Santiago</td>
                                    <td>01/05/2017</td>
                                    <td>3200000</td>
                                </tr>
                                <tr>
                                    <td>Santiago</td>
                                    <td>01/06/2017</td>
                                    <td>3200000</td>
                                </tr>
                                <tr>
                                    <td>Tomas</td>
                                    <td>01/07/2017</td>
                                    <td>3200000</td>
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
                    <!--PROVEEDORES-->
                    <div id="proveedores"  class="tab-pane fade">
                        <h2 class="tituloProductos informes">Informe Proveedores</h2>
                        <form class="navbar-form " role="search">
                            <label for="">Razón Social:</label>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <button class="btn btn-info btn-lg navbar-right" data-toggle="modal" data-target="#myModal" ><span class="glyphicon glyphicon-file"></span></button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Razón Social</th>
                                    <th>Teléfono</th>
                                    <th>Dirección</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Laura Cardona</td>
                                    <td>3328989</td>
                                    <td>calle 34 05</td>
                                </tr>      
                                <tr>
                                    <td>Laura Cardona</td>
                                    <td>3328989</td>
                                    <td>calle 34 05</td>
                                </tr> 
                                <tr>
                                    <td>Laura Cardona</td>
                                    <td>3328989</td>
                                    <td>calle 34 05</td>
                                </tr> 
                                <tr>
                                    <td>Laura Cardona</td>
                                    <td>3328989</td>
                                    <td>calle 34 05</td>
                                </tr> 
                                <tr>
                                    <td>Laura Cardona</td>
                                    <td>3328989</td>
                                    <td>calle 34 05</td>
                                </tr> 
                                <tr>
                                    <td>Laura Cardona</td>
                                    <td>3328989</td>
                                    <td>calle 34 05</td>
                                </tr> 
                            </tbody>
                        </table>
                        <div class="paginacion">
                            <ul class = "pagination">
                                <li><a href = "#">&laquo;</a></li>
                                <li><a href = "#">1</a></li>
                                <li><a href = "#">2</a></li>
                                <li><a href = "#">3</a></li>
                                <i><a href = "#">4</a></li>
                                    <li><a href = "#">5</a></li>
                                    <li><a href = "#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--Cierro container-->

    <!-- Modal para el informe de los productos-->
    <div class="modal fade" id="myModalinformeproductos" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h2>Informe de Productos</h2>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <fieldset>
                            <div><img id="informepro" src="Assets/images/informeproductos.png" width=570></img></div>
                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success">Imprimir</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

</div>
<%@include file="footer.jsp" %>
</body>
</html>
