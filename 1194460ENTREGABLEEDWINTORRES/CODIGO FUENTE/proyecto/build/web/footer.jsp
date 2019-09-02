
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer1">
    <footer id="pie" >
        <div class="col-md-4">
            <ul class=listafooter><br>
                <li><span class= "glyphicon glyphicon-earphone"></span>   Teléfono (Medellín): 3103775566</li>
                <li><span class= "glyphicon glyphicon-envelope"></span>   Email: panaderiarey@hotmail.com </li>
                <li><span class="glyphicon glyphicon-phone"></span>   Redes Sociales:</li><br>
                <li>
                    <div class="logos">
                        <a href="#"><img class="logosfooter" src="Assets/images/twitter.png"></img></a>
                        <a href="#"><img class="logosfooter" src="Assets/images/facebook.png"></img></a>
                        <a href="#"><img class="logosfooter"  src="Assets/images/instagram.png"></img></a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="col-md-8 footerderechos">
            &copy; New System | Todos los Derechos Reservados  2017.<br>
        </div>
        <!-- Jquery -->
        <script src="media/DataTable/js/jquery-3.2.1.min.js"></script>
        <!-- DataTables -->
        <script src="media/DataTable/js/jquery.dataTables.js"></script>
        <script src="media/DataTable/js/dataTables.bootstrap.min.js"></script>
        <!-- Bootstrap -->
        <script type="text/javascript" src="media/bootstrap/js/bootstrap.min.js"></script>
        <!-- Bootstrap Validator -->
        <script type="text/javascript" src="media/BootstrapValidator/js/bootstrapValidator.min.js"></script>
        <!--LLamado DataTables-->
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>
        <!-- Custom Javascript -->
        <script type="text/javascript" src="media/Custom/js/pedidos.js"></script>
        <script type="text/javascript" src="media/Custom/js/validacion.js"></script>
        <!--LLamado MD5-->
        <script type="text/javascript" src="media/Custom/js/md5.js"></script>
        <!--LLamado BUSCADOR-->
        <script type="text/javascript" src="media/Custom/js/Buscador.js"></script>
    </footer>
</div>


