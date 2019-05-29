<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.NoticiaDAO" %>
<%@page import="DAO.Conexion" %>
<%@page language="java" %>
<% int cantnot = NoticiaDAO.CantNoticias(); %>
<% Conexion cn = new Conexion(); %>
<% NoticiaDAO noti = new NoticiaDAO(); %>
<% DefaultTableModel lnot = new DefaultTableModel();
    lnot = noti.ListaNews(cn.conectar());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Paginación de resultados con jQuery, Ajax y PHP Demo</title>
        <meta name="description" content="Paginación de resultados con jQuery, Ajax y PHP..."/>
        <meta name="author" content="Jose Aguilar">
        <link rel="shortcut icon" href="https://www.jose-aguilar.com/blog/wp-content/themes/jaconsulting/favicon.ico" />
        <link rel="stylesheet" href="../Plugins/paginacion/css/font-awesome.min.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Plugins/paginacion/css/styles.css">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.pagination li a').on('click', function () {
                  
                    var page = $(this).attr('data');
                    var dataString = 'page=' + page;

                    $.ajax({
                        type: "POTS",
                        url: "../PaginacionServlet",
                        data: dataString,
                        success: function (data) {
                            $('.items').fadeIn(2000).html(data);
                            $('.pagination li').removeClass('active');
                            $('.pagination li a[data="' + page + '"]').parent().addClass('active');
                        }
                    });
                    return false;
                });
            });
        </script>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
            <a class="navbar-brand" href="https://www.jose-aguilar.com/">
                <img src="https://www.jose-aguilar.com/blog/wp-content/themes/jaconsulting/images/jose-aguilar.png" width="30" height="30" alt="Jose Aguilar">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="https://www.jose-aguilar.com/scripts/jquery/pagination-me/">Demo <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="https://www.jose-aguilar.com/scripts/jquery/pagination-me/pagination-me.zip">Descargar</a>
                    <a class="nav-item nav-link" href="https://www.jose-aguilar.com/blog/paginacion-jquery-ajax-php/">Tutorial</a>
                    <a class="nav-item nav-link" href="https://www.jose-aguilar.com/">&copy; Jose Aguilar</a>
                </div>
            </div>
        </nav>
        <div class="container">
            <h1>Paginación de resultados con jQuery, Ajax y JSP</h1>
            <h2 class="lead"><%= cantnot%> elementos listados de 6 en 6</h2>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="https://www.jose-aguilar.com/blog/">Blog</a></li>
                    <li class="breadcrumb-item"><a href="https://www.jose-aguilar.com/blog/paginacion-jquery-ajax-php/">Paginación de resultados con jQuery, Ajax y PHP</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Demo</li>
                </ol>
            </nav>



            <div class="row">
                <div id="content" class="col-lg-12">

                    <%
                        if (cantnot > 0) {
                            int nropaginas = (int)Math.ceil(cantnot/6.0);
                            
                            out.print("<h1>" + nropaginas+" </h1>");
                            if (lnot.getRowCount() > 0) {

                                out.print("<ul class='row items'>");
                                for (int i = 0; i < lnot.getRowCount(); i++) {

                                    out.print("<li class='col-lg-4'>");
                                    out.print("<div class='item'>");
                                    out.print("<img class='img-fluid mx-auto d-block' src='../Plugins/noticia/images/planes/garecanoti.jpg' width='100'height='100' />");
                                    out.print("<h3> ALGO </h3>");
                                    out.print("<p class='description_short'>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, hic! </p>");
                                    out.print("<p class='price'> 15 EUR</p>");
                                    out.print("<p><a class='btn btn-primary link_rewrite mx-auto d-block' href='../vistas/listarnoticias.jsp' target='_blank'><i class='fa fa-eye'></i> Ver</a></p>");
                                    out.print("</div>");
                                    out.print("</li>");

                                }
                                out.print("</ul>");

                            }

                            if (nropaginas > 1 ) {
                                out.print("<div class='row'>");
                                out.print("<div class='col-lg-12'>");
                                out.print("<nav aria-label='Page navigation example'>");
                                out.print("<ul class='pagination justify-content-end'>");

                                for (int j = 1; j <= nropaginas; j++) {
                                    String claseActive = "";

                                    if (j == 1) {
                                        claseActive = "active";
                                        ;
                                    }
                                    out.print("<li class='page-item " + claseActive + "'><a class='page-link' href='#' data='" + j + "'>" + j + "</a></li>");
                                }

                                out.print("</ul>");
                                out.print("</nav>");
                                out.print("</div>");
                                out.print("</div>");
                            }

                        }


                    %>

                </div>
            </div>

   


            <div class="footer-content row">
                <div class="col-lg-12">
                    <div class="pull-right">
                        <a href="https://www.jose-aguilar.com/blog/paginacion-jquery-ajax-php/" class="btn btn-secondary">
                            <i class="fa fa-reply"></i> volver al tutorial
                        </a>
                        <a href="https://www.jose-aguilar.com/scripts/jquery/pagination-me/pagination-me.zip" class="btn btn-primary">
                            <i class="fa fa-download"></i> Descargar
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <footer class="footer bg-dark">
            <div class="container">
                <span class="text-muted"><a href="https://www.jose-aguilar.com/">&copy; Jose Aguilar</a></span>
            </div>
        </footer>
    </body>
</html>
