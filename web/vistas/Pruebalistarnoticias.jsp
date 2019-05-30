<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.Conexion"%>
<%@page import="DAO.DeportesDao"%>
<%@page import="DAO.DiarioDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>
        <link href="../Plugins/noticia/css/index.css" rel="stylesheet" type="text/css">
        <!-- InstanceEndEditable -->
        <meta name="viewport" content="width=device-width">
        <link href="../Plugins/noticia/css/maquetacion.css" rel="stylesheet" type="text/css">
        <link href="../Plugins/noticia/css/moviles.css" rel="stylesheet" type="text/css" media="screen and (max-width:480px) and (orientation:portrait)">
        <!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
        <script>var __adobewebfontsappname__ = "dreamweaver"</script>
        <script src="http://use.edgefonts.net/annie-use-your-telescope:n4:default;advent-pro:n4,n5,n1:default;amatic-sc:n4:default.js" type="text/javascript"></script>

    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <i class="fa fa-home"></i>  NOTICIAS

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Deportes</a></li>
                        <li><a href="#">Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->
                <section class="content"> 

                    <section id="cuerpo">
                        <div id="contenidogeneral"><!-- InstanceBeginEditable name="contenido" -->

                            <figure><img src="../Plugins/noticia/images/planes/gareca.jpg" alt=""/>
                                <figcaption>Ricardo Gareca sorprendido con desempeño de este jugador en los entrenamientos de la Selección </figcaption><p><a href="noticia.jsp">MAS INFORMACION</a></p></figure>
                            <figure><img src="../Plugins/noticia/images/planes/advincula.jpg" alt=""/>
                                <figcaption>Ricardo Gareca y Nolberto Solano exigen a Luis Advíncula para que mejore sus centros [VIDEO] </figcaption><p>MAS INFORMACION</p></figure>

                            <figure><img src="../Plugins/noticia/images/planes/pizarro.jpg" alt=""/>
                                <figcaption>Claudio Pizarro incrementó los ingresos del Werder Bremen en la temporada </figcaption><p>MAS INFORMACION</p></figure>
                            <figure><img src="../Plugins/noticia/images/planes/catedral de sal de zipaquira.jpg" alt=""/>
                                <figcaption>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at mi a odio cursus vehicula. Suspendisse eu eros dignissim</figcaption><p>MAS INFORMACION</p></figure>

                            <figure><img src="../Plugins/noticia/images/planes/cartagena.jpg" alt=""/>
                                <figcaption>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</figcaption><p>MAS INFORMACION</p></figure>
                            <figure><img src="../Plugins/noticia/images/planes/caño cristales.JPG" alt=""/>
                                <figcaption>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at mi a odio cursus vehicula. Suspendisse eu eros dignissim</figcaption><p>MAS INFORMACION</p></figure>
                            <figure><img src="../Plugins/noticia/images/planes/la candelaria.jpg" alt=""/>
                                <figcaption>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at mi a odio cursus vehicula. Suspendisse eu eros dignissim</figcaption><p>MAS INFORMACION</p></figure>
                            <figure><img src="../Plugins/noticia/images/planes/la candelaria.jpg" alt=""/>
                                <figcaption>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at mi a odio cursus vehicula. Suspendisse eu eros dignissim</figcaption><p>MAS INFORMACION</p></figure>
                            <figure><img src="../Plugins/noticia/images/planes/la candelaria.jpg" alt=""/>
                                <figcaption>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at mi a odio cursus vehicula. Suspendisse eu eros dignissim</figcaption><p>MAS INFORMACION</p></figure>
                            <!-- InstanceEndEditable -->

                        </div>
                    </section>



                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="listarnoticias.jsp">1</a></li>
                            <li><a href="listarnoticias.jsp">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>



                </section>  

            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />       

    </body>
</html>

