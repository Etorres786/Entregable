<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>login</title>

        <link rel="stylesheet" href="media/Custom/css/reset.min.css">

        <link rel="stylesheet" href="media/Custom/css/login.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

    </head>

    <body>

        <div class="login">
            <header class="login-header"><span class="text">Acceso</span><span class="loader"></span></header>
            <form action="login" method="POST" class="form-horizontal">
                <input name="usuario" class="login-input" type="text" placeholder="Usuario"/>
                <input  id="pass" name="pass" class="login-input" type="password" placeholder="Contraseña" onkeyup="this.form.password.value = md5(this.form.pass.value)" required=""/>
                <input name="password" type="hidden">
                <button class="login-btn" type="submit">login</button>
            </form>
        </div>
        <script src="media/DataTable/js/jquery-3.2.1.min.js"></script>

        <script  src="js/index.js"></script>
        <!--LLamado MD5-->
        <script type="text/javascript" src="media/Custom/js/md5.js"></script>
    </body>
</html>
