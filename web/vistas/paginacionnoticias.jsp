<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.NoticiaDAO" %>
<%@page import="DAO.Conexion" %>
<%@page import="DAO.DiarioDAO" %>
<%@page language="java" %>

<% Conexion cn = new Conexion(); %>
<% NoticiaDAO noti = new NoticiaDAO(); %>
<% DiarioDAO diario = new DiarioDAO(); %>
<% DefaultTableModel dia = new DefaultTableModel(); %>
<% DefaultTableModel lnot = new DefaultTableModel();
    String cod = request.getParameter("tipo");

    lnot = noti.ListaNews(cn.conectar(), cod);
    dia = diario.nombreDiario(cn.conectar(), cod);

%>
<% int cantnot = NoticiaDAO.CantNoticias(cod);%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>
        <link rel="stylesheet" href="../Plugins/paginacion/css/styles.css">
        <link rel="stylesheet" href="../Plugins/paginacion/css/font-awesome.min.css">

        <link href="../Plugins/noticia/css/maquetacion.css" rel="stylesheet" type="text/css">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.pagination li a').on('click', function () {

                    var page = $(this).attr('data');
                    var cod = document.getElementById("coddiario").value;


                    $.ajax({

                        url: "../PaginacionServlet",
                        data: {'page': page,
                            'codigo': cod},
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

    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <i class="fa fa-soccer-ball-o"></i>  <%= dia.getValueAt(0, 1)%>
                        <input type="tex" id="coddiario" value="<%= dia.getValueAt(0, 0)%>" hidden="">

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Deportes</a></li>
                        <li><a href="#">Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">                  


                    <section class="row">
                        <div id="contenidogeneral" class="col-lg-12">


                            <%
                                if (cantnot > 0) {
                                    int nropaginas = (int) Math.ceil(cantnot / 6.0);

                                    if (lnot.getRowCount() > 0) {

                                        out.print("<ul class='row items' id='figure'>");
                                        for (int i = 0; i < lnot.getRowCount(); i++) {
                                            out.print("<li class='col-lg-4'>");
                                            out.print("<div class='item'>");
                                            out.print("<img id='img' src='" + lnot.getValueAt(i, 8) + "' width='100'height='100' />");
                                            out.print("<h3> " + lnot.getValueAt(i, 2) + "</h3>");
                                            out.print("<p class='description_short'>" + lnot.getValueAt(i, 3) + "</p>");
                                            out.print("<p><a class='btn btn-info  ' id='figcaption' href='../vistas/noticia.jsp?codno=" + lnot.getValueAt(i, 0) + "' ><i class='fa fa-eye '></i> Ver Noticia</a></p>");
                                            out.print("</div>");
                                            out.print("</li>");

                                        }
                                        out.print("</ul>");

                                    }

                                    if (nropaginas > 1) {
                                        out.print("<div class='row'>");
                                        out.print("<div class='col-lg-12'>");
                                        out.print("<nav aria-label='Page navigation example' bgcolor='info'>");
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
                    </section>



                </section>  

            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />       

    </body>
</html>

