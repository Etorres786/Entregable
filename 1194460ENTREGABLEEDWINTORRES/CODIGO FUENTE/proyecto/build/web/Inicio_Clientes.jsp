<%-- 
    Document   : inicioclientes
    Created on : 17/07/2017, 08:27:46 PM
    Author     : ficha1194460
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file= "head.jsp"%>

    <body>
        <%@include file="banner.jsp"%>
        <%@include file="nav.jsp"%>
        <h1 class="titulomenu tituloproductos">Nuevos Productos</h1>
        <!--CAROUSEL-->
        <div class="carouselproductos container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Assets/images/carousel1.jpg" alt="Chania">
                        <div class="carousel-caption">
                            <h3>Chania</h3>
                            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                        </div>
                    </div>   
                    <div class="item">
                        <img src="Assets/images/carousel2.jpg" alt="Chania">
                        <div class="carousel-caption">
                            <h3>Chania</h3>
                            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="Assets/images/carousel3.jpg" alt="Flower">
                        <div class="carousel-caption">
                            <h3>Flowers</h3>
                            <p>Beatiful flowers in Kolymbari, Crete.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="Assets/images/carousel3.png" alt="Flower">
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
        </div>
        <!--CAROUSEL-->
    </div>
    
    <!--div class="aside2">
        <div class="well well-sm">
            <h3 class="titulomenu">Sugerencias!</h3>
            <div class="container-fluid">
                <form class="form-vertical">
                    <fieldset>
                        <h3 class="titulomenu">Nombre:</h3>
                        <input type="text" name="nombrecliente" size="20"><br>
                        <h3 class="titulomenu">Email :</h3>
                        <input type="text" name="cedula" size="20"><br>
                        <h3 class="titulomenu">Sugerencia:</h3>	
                        <textarea name="comment" rows="5" cols="30" placeholder="Escribe Aqui Tu Sugerencia">	
                        </textarea><br>
                        <button id="Registrarse" name="registrarse" class="btn btn-warning">Enviar</button>
                    </fieldset>
                </form>
            </div>
        </div>
    </div-->
    <%@include file="footer.jsp" %>
</body>
</html>
