<%-- 
    Document   : Productos_Clientes
    Created on : 18/07/2017, 08:48:20 PM
    Author     : ficha1194460
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
  <h2 class="titulomenu">Productos</h2>
  <ul class="nav nav-tabs nav-stacked navproductoscliente">
    <li><a data-toggle="tab" href="#panaderia">Panaderia</a></li>
    <li><a data-toggle="tab" href="#tortas">Tortas</a></li>
    <li><a data-toggle="tab" href="#postres">Postres</a></li>
  </ul>
  </div>
<div class="col-md-10">
  <div class="tab-content">
     <div id="panaderia"  class="tab-pane fade in active">
    <form class="navbar-form navbar-right" role="search">
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Buscar">
   </div>
   <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
   </form> 
         <h2 class="tituloProductos">Productos Panaderia.</h2>
 
  <div class="col-md-3  hero-feature">
<div class="thumbnail">
        <img  class="imagenesProductos" src="Assets/images/Panes.png" alt="img">
        <div class="caption">
            <h3>Pan de Leche</h3>
            <p>Precio $2.500</p>
                 <div class="row">
        </div>
        </div>
    </div>
</div>

<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img class="imagenesProductos" src="Assets/images/pastel.jpg" alt="img">
        <div class="caption">
                <h3>Pastel Arequipe</h3>
                <p>Precio $3.000</p>
                <p>
                 <div class="row">
    
        </div>
            </p>
        </div>
    </div>
</div>

<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img  src="Assets/images/pan1.jpg" alt="img">
        <div class="caption">
            <h3>Pan Crema</h3>
            <p>Precio $4.000</p>
            <p>
               <div class="row">
        <!--button type="button" class="btn btn-success espacio">-</button>
        <input type="text" style="width:25px;" value="1"/>
        <button type="button" class="btn btn-success espacio">+</button>
        <button type="button" class="btn btn-warning espacio">Añadir al carro</button-->
        </div>
            </p>
        </div>
    </div>
</div>
<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img class="imagenesProductos" src="Assets/images/pan3.jpg" alt="img">
        <div class="caption">
            <h3>Pan Hawaiano</h3>
            <p>Precio $6.000.</p>
             <div class="row">
        </div>
        </div>
    </div>
</div>

    
     </div>
<!--TORTAS-->
     <div id="tortas"  class="tab-pane fade">
    <form class="navbar-form navbar-right" role="search">
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Buscar">
   </div>
   <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
   </form>          
         <h2 class="tituloProductos">Productos Tortas.</h2>
  <div class="col-md-3  hero-feature">
 <div class="thumbnail">
        <img  class="imagenesProductos" src="Assets/images/tortacumpleanos.jpg" alt="img">
        <div class="caption">
            <h3>Torta Cumpleaños</h3>
            <p>Precio $60.000</p>
                 <div class="row">
        </div>
        </div>
    </div>
</div>

<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img class="imagenesProductos" src="Assets/images/tortamatrimonio.jpg" alt="img">
        <div class="caption">
                <h3>Torta Matrimonio</h3>
                <p>Precio $90.000</p>
               <div class="row">
        </div>
        </div>
    </div>
</div>

<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img  src="Assets/images/tortacomunion.jpg" alt="img">
        <div class="caption">
            <h3>Torta Comunion</h3>
            <p>Precio $77.000</p>
            <div class="row">

        </div>
        </div>
    </div>
</div>
<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img class="imagenesProductos" src="Assets/images/tortacasera.jpg" alt="img">
        <div class="caption">
            <h3>Torta Cacera Negra</h3>
            <p>Precio $40.000.</p>
            <div class="row">
        </div>
        </div>
    </div>
</div>
</div>
<!--POSTRES-->
     <div id="postres"  class="tab-pane fade">
    <form class="navbar-form navbar-right" role="search">
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Buscar">
   </div>
   <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
   </form>          
         <h2 class="tituloProductos">Productos Postres.</h2>
  <div class="col-md-3  hero-feature">
<div class="thumbnail">
        <img  class="imagenesProductos" src="Assets/images/postreleche.jpg" alt="img">
        <div class="caption">
            <h3>Postre Tres Leches</h3>
            <p>Precio $8.500</p>
                <div class="row">
        </div>
        </div>
    </div>
</div>

<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img class="imagenesProductos" src="Assets/images/postrechocolate.jpg" alt="img">
        <div class="caption">
                <h3>Postre De Chocolate</h3>
                <p>Precio $9.000</p>
                <div class="row">
        </div>
        </div>
    </div>
</div>

<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img  src="Assets/images/postregelatina.jpg" alt="img">
        <div class="caption">
            <h3>Postre De Gelatina</h3>
            <p>Precio $6.000</p>
             <div class="row">
        </div>
        </div>
    </div>
</div>
<div class="col-md-3  hero-feature">
    <div class="thumbnail">
        <img class="imagenesProductos" src="Assets/images/postremilo.png" alt="img">
        <div class="caption">
            <h3>Postre Sabor A Milo</h3>
            <p>Precio $6.000.</p>
             <div class="row">
        </div>
        </div>
    </div>
</div>
     </div>
     
  </div>
</div>



   
</div><!--Cierro container-->
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
        <%@include file="footer.jsp"%>
    </body>
</html>
