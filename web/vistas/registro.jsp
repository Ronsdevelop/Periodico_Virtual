<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>PERIODICO VIRTUAL </title>

    <!-- Bootstrap core CSS -->
    <link href="../Plugins/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="Plugins/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="../Plugins/assets/css/style.css" rel="stylesheet">
    <link href="../Plugins/assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	 <div class="container">

                <form class="form-login" action="../servletRegistroUsuario" method="POST">
                    <h2 class="form-login-heading">Regrista Nueva Cuenta</h2>
                    <center bgcolor="red"><font color="red"><h5 class="form-login-heading" >${param.register_err}</h5></font></center>
                    <div class="login-wrap">
                        <input type="text" class="form-control" name="nom" placeholder="Nombre Completo" autofocus required="">
                        <br>
                        <input type="text" class="form-control" name="ape" placeholder="Apellido Completo" autofocus required="">
                        <br>
                        <input type="email" class="form-control" name="cor" placeholder="Correo Electronico" autofocus required="">
                        <br>
                        <input type="text" class="form-control" name="usu" placeholder="Usuario" autofocus required="">
                        <br>
                        <input type="password" class="form-control" name="con" placeholder="Contraseña" required="">
                        <br>
                        <button class="btn btn-theme btn-block" href="servlet" type="submit"><i class="fa fa-lock"></i> REGISTRAR</button>
                        <br>
                        <center><input class="btn btn-warning" onclick="self.location.href = '../index.jsp'" type="button" value="INICIAR SESI&Oacute;N"></center>
                    </div>		
                </form>	  	
            </div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../Plugins/assets/js/jquery.js"></script>
    <script src="../Plugins/assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="../Plugins/assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("../Plugins/assets/img/fondo.png", {speed: 500});
    </script>


  </body>
</html>
