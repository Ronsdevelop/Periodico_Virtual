<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.Conexion"%>
<%@page import="DAO.DeportesDao"%>
<%@page import="DAO.DiarioDAO"%>
<% DeportesDao de = new DeportesDao(); %>
<% DiarioDAO di = new DiarioDAO();%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>

        <style>
            .contenedor{
                position: relative;
    
                text-align: center;
            }
            .imgcenter{
                margin:10px auto;
                display:block;  
            }
            .texto{
                font-family: sans-serif;
            }

            .centrado{
                color:#FFFFFF;
                position: absolute;
                top: 80%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

        </style>


    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <i class="fa fa-home"></i>  DEPORTES

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Deportes</a></li>
                        <li><a href="#">Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">     
                    <div class="page-header"><!-- InstanceBeginEditable name="noticias" -->
                        <div class="contenedor">
                            <img src="../Plugins/noticia/images/planes/garecanoti.jpg" style="margin:10px auto;
                                 display:block;  " />

                            <div class="centrado"><h2>Ricardo Gareca sorprendido con desempeño de este jugador en los entrenamientos de la Selección</h2></div>
                        </div>
                        <div class="container texto">


                            <small style="font-size: medium; text-align: center">Ricardo Gareca va disipando sus dudas respecto a la lista final de 23 para la Copa América. Beto Da Silva la rompe en las prácticas de la bicolor.</small>
                            <p style="font-size: smaller">28 May 2019 | 13:56 h </p>
                            <p> Ricardo Gareca no quiere llevar a nadie a la Copa América de Brasil de paseo. Por ello viene observando en los entrenamientos al jugador diferente. Varios se esfuerzan pero, por ahora solo hay uno que lo tiene apuntado por su gran nivel; Beto Da Silva </p>
                            <p>El atacante del Lobos BUAP viene aprovechando al milímetro sus opciones de meterse a la lista final que llevará el “Tigre” a la Copa América</p>
                            <p>Su polifuncionalidad, cambio de ritmo y olfato goleador son cualidades que destacan en los entrenamientos. “Será difícil quedarse por la calidad del plantel. Hay muchos delanteros en un universo grande de jugadores. No me siento confiado de quedar en la lista de 23 jugadores. Estoy trabajando al máximo para demostrar que puedo ser útil”, manifestó el atacante.</p>
                            <p>Yordy Reyna y Andy Polo también luchan -junto a Da Silva- la posibilidad de alcanzar un cupo en la nómina de Gareca. Paolo, “Jeffry”, Carrillo y Ruidíaz son recontra fijos.    .</p>
                        </div>
                        <!-- InstanceEndEditable --></div>




                </section>  

            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />       

    </body>
</html>

