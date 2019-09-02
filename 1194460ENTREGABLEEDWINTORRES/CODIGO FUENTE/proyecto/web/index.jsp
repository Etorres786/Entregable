<%-- 
    Document   : index
    Created on : 03-jul-2017, 11:38:03
    Author     : EDWIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body>
        <%@include file="banner.jsp" %>
        <nav class="navbar navbar-default margennav">
            <div class="container-fluid">
                <div class="navbar-header"></div>
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">Inicio</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="RegistroCliente.jsp"><span class="glyphicon glyphicon-user"></span> Registrarse</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span>Ingresar</a></li>
                </ul>
            </div>
        </nav>
        <!--contenido principal de la pagina principal Carrucel-->

        <!--CAROUSEL-->
        <div class="col-md-12 carousel-top">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img class="img-carousel" src="Assets/images/fondo-panaderia3.jpg" alt="Chania">
                        <div class="carousel-caption">
                            <h3>Chania</h3>
                            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img  class="img-carousel" src="Assets/images/panaderia-y-pasteleria.jpg" alt="Flower">
                        <div class="carousel-caption">
                            <h3>Flowers</h3>
                            <p>Beatiful flowers in Kolymbari, Crete.</p>
                        </div>
                    </div>

                    <div class="item ">
                        <img class="img-carousel" src="Assets/images/carousel3.png" alt="Flower">
                        <div class="carousel-caption">
                            <h3>Flowers</h3>
                            <p>Beatiful flowers in Kolymbari, Crete.</p>
                        </div>
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>	
        </div><br>

        <!-- Misión Visión Ubicación -->
        <div class="empresa">
        <div class="col-sm-4 col-lg-4 col-md-4 empresa">
            <div class="thumbnail">
                <img  class="" src="Assets/images/iconoMision-150x150.png" alt="Flower">
                <h1 id="mvu">Misión</h1>
                <div class="caption">
                    <p class="mision"><br>Nuestro proposito es ofrecer una gran variedad de productos de la mejor calidad y al mejor precio, utilizando materia prima de la más alta calidad para satisfacer las necesidades y exigencias de 
                        nuestros clientes, para asi brindarles siempre el mejor sabor del trigo.

                    </p>
                </div>
            </div>
        </div>

        <div class="col-sm-4 col-lg-4 col-md-4 empresa">
            <div class="thumbnail">
                <img  class="" src="Assets/images/iconoVISION-150x150.png" alt="Flower">
                <h1 id="mvu">Visión</h1>
                <div class="caption">
                    <p class="mision"><br>
                        En el año 2020 seremos la empresa vendedora de productos de panaderia mas reconocida del pais, innovadora y sobresaliente en el mercado nacional de panaderías alcanzando un alto nivel de desarrollo humano y tecnológico, con la ayuda de nuestros clientes .
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4 empresa">
            <div class="thumbnail">
                <img  class="" src="Assets/images/icono-ubicacion150x150.png" alt="Flower">
                <h1 id="mvu">Ubicación</h1>
                <div class="caption">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d63455.398097892146!2d-75.596392!3d6.268678!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4428ef4e52dddb%3A0x722fd6c39270ac72!2sMedell%C3%ADn%2C+Antioquia%2C+Colombia!5e0!3m2!1ses-419!2ses!4v1492216164694" width="550" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>      </div>
            </div>
        </div>
            </div>
        <br>

        <!-- FORMULARIO VENTANA MODAL! -->
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h2>Iniciar Sesión</h2>
                        </div>
                        <div class="modal-body">
                            <form action="login" method="GET" class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Usuario</label>  
                                        <div class="col-md-4">
                                            <input id="user" name="usuario" type="text" placeholder="Usuario" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Contraseña</label>  
                                        <div class="col-md-4">
                                        <input id="pass" name="pass" type="password" placeholder="Contraseña" class="form-control" onkeyup="this.form.password.value=md5(this.form.pass.value)" required="">
                                        <input name="password" type="hidden">
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default login" data-dismiss="modal">Cerrar</button>

                                    <button type="submit" class="btn btn-warning login">Iniciar</button>
                                </div>
                                <center><p>No estas registrado?</p> <a href="RegistroCliente.jsp"><p> Registrate Aqui!</p></a></center>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
        </div>
       

        <%@include file="footer.jsp" %>
    </body>
</html>


