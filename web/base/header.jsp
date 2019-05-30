

<header class="main-header">
    <!-- Logo -->
    <a href="../vistas/home.jsp" class="logo">

        <span class="logo-lg"><b>EL INFORMATIVO</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">

        </a>


        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="../Plugins/dist/img/user1-128x128.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs">REDACTOR</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="../Plugins/dist/img/user1-128x128.jpg" class="img-circle" alt="User Image">

                            <p>
                                RONY AGUILERA RIVERA
                                <small> Mayo 2019</small>
                            </p>
                        </li>

                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a  data-toggle="modal" data-target="#modal-info" class="btn btn-default btn-flat">Perfil</a>
                            </div>
                            <div class="pull-right">
                                <a href="../index.jsp" class="btn btn-default btn-flat">Salir</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->

            </ul>
        </div>
    </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->


        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">

            <!-- Optionally, you can add icons to the links -->
            <li class="header">MENU DE NAVEGACION</li>
            <li>
                <a href="../vistas/home.jsp">
                    <i class="fa fa-home"></i> <span>INICIO</span>
                </a>
            </li>


          
            <li><a href="deportes.jsp"><i class="fa fa-futbol-o"></i> <span>DEPORTES</span></a></li>
            <li><a href="politica.jsp"><i class="fa fa-group"></i> <span>POLITICA</span></a></li>          
            <li><a href="#"><i class="fa fa-video-camera"></i> <span>FARANDULA</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>COCINA</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>ACTUALIDAD</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>SEPTIMO ARTE</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>CULTURA</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>LOCALES</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>ECONOMICAS</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>CIENCIAS</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>ENTRETENIMIENTO</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>INTERNACIONALES</span></a></li>
          
 
            <li class="treeview">
                <a href="#"><i class="fa fa-bank"></i> <span>REDACCION</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="listadonoticiasredactor.jsp" >Crear Noticia</a></li>
                    <li><a href="#">Mensajes</a></li>                 
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-cog"></i> <span>ADMINISTRACION</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="redactores.jsp">Redactores</a></li>
                    <li><a href="tipousuarios.jsp">Tipo Usuarios</a></li>
                    <li><a href="#">Generos</a></li>
                    <li><a href="#">Diarios</a></li>
                    <li><a href="#">Usuarios</a></li>

                </ul>
            </li>
         
            
        </ul>

    </section>
    <!-- /.sidebar -->
</aside>