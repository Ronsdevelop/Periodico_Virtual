<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.Conexion"%>
<%@page import="DAO.DeportesDao"%>
<%@page import="DAO.DiarioDAO"%>
<% DeportesDao de = new DeportesDao(); %>
<% DiarioDAO di = new DiarioDAO(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>

        <script>
            function enviarcodigo(val) {
                alert(val);
                location.href = "../vistas/paginacionnoticias.jsp?tipo=" + val;

            }
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
                        <i class="fa fa-home"></i>  DEPORTES

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Deportes</a></li>
                        <li><a href="#" >Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">                  
                    <%

                        Conexion cn = new Conexion();

                        DefaultTableModel ldepo = new DefaultTableModel();
                        ldepo = de.ListaGeneros(cn.conectar());

                        DefaultTableModel ldia = new DefaultTableModel();
                        ldia = di.ListadoDiarios(cn.conectar());

                        out.print("<h2 class='bg-blue-active text-white text-center'> DEPORTES </h2>");
                        out.print("<div class='row panel_modulos'>");

                        for (int canes = 0; canes < ldepo.getRowCount(); canes++) {
                            for (int h = 0; h < di.CantidadDiarios(); h++) {
                                if (ldia.getValueAt(h, 3).equals(ldepo.getValueAt(canes, 0)) && (ldepo.getValueAt(canes, 0).equals("01"))) {
                                    out.print("<div class='col-lg-3 col-x6'>");
                                    out.print("<div class='small-box bg-gray-active' style='background-image: url(" + ldia.getValueAt(h, 4) + ");background-repeat:no-repeat;background-size:100% 100%;background-position:center center;'>");
                                    out.print("<div class='inner'>");
                                    out.print("<h3 style='color: transparent'> 33 </h3>");
                                    out.print("<p  style='margin: 0 ;color: transparent'>" + ldia.getValueAt(h, 1) + "</p>");
                                    out.print("<p style='margin: 0 ;color: transparent '  > S/. 120</p>");
                                    out.print("</div>");
                                    out.print("<div class='icon'  >");

                                    out.print("</div>");

                                    out.print("<a href='../vistas/paginacionnoticias.jsp?tipo="+ldia.getValueAt(h, 0)+"'  class='small-box-footer' > Noticias <i class='fa fa-arrow-circle-right'></i></a>");

                                    out.print("</div>");
                                    out.print("</div>");
                                }
                            }
                        }
                        out.print("</div>");


                    %>   






                </section >  

            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />  





    </body>
</html>

