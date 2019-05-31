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
    <link href="Plugins/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="Plugins/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="Plugins/assets/css/style.css" rel="stylesheet">
    <link href="Plugins/assets/css/style-responsive.css" rel="stylesheet">

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

                <form class="form-login" action="IniciarSesionServlet" method="POST">
                    <h2 class="form-login-heading">Iniciar Sesi&oacute;n</h2>
                    <center bgcolor="red"><font color="red"><h5 class="form-login-heading" >${param.session_err}</h5></font></center>
                    <div class="login-wrap">
                        <input type="text" name="user" class="form-control" placeholder="Usuario" autofocus>
                        <br>
                        <input type="password" name="password" class="form-control" placeholder="Contrase&ntilde;a">
                        <label class="checkbox">
                            <span class="pull-right">
                                <a data-toggle="modal" href="login.html#myModal"> Olvidaste tu Contrase&ntilde;a?</a>

                            </span>
                        </label>
                        <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> INGRESAR</button>
                        <hr>

                        <div class="registration">
                            Aun no Estas Registrado?<br/>
                            <a class="" href="vistas/registro.jsp">
                                Crea tu Cuenta
                            </a>
                        </div>

                    </div>
                    </form>
                    <!-- Modal -->
                    <form action="recuperar">
                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Olvidaste t&uacute; contrase&ntilde;a ?</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Ingresa tu correo electronico para reestablecer tu contrase&ntilde;a</p>
                                    <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                                </div>
                                <div class="modal-footer">
                                    <button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
                                    <button class="btn btn-theme" type="button">Enviar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- modal -->

                </form>	  	

            </div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="Plugins/assets/js/jquery.js"></script>
    <script src="Plugins/assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="Plugins/assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("Plugins/assets/img/fondo.png", {speed: 500});
    </script>


  </body>
</html>
