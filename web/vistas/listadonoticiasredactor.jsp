<%@page import="MODEL.Noticia"%>
<%@page import="DAO.NoticiaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../base/head.jsp" />

    </head>
    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />



            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        NOTICIAS
                        <small>Lista Noticias</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
                        <li><a href="#">Noticias</a></li>
                        <li class="active">Lista Noticias</li>
                    </ol>
                </section>


                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">


                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Vista General de las Noticias </h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">
                                        <table  id="example3" class="table table-bordered table-striped">
                                            <thead>
                                                <tr class="bg-primary" border="1">

                                                    <th>CODIGO</th>
                                                    <th>ANTE TITULO</th>                                            
                                                    <th>TITULAR</th>

                                                    <th>FECHA</th>


                                                    <th>REDACTOR</th>
                                                    <th>DIARIO</th>
                                                    <th>FUENTE</th>
                                                    <th width="70">ACCIONES</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (Noticia emp : NoticiaDAO.ListaNoticias()) {%> 
                                                <tr>
                                                    <td width='5'><%= emp.getIdNoticia()%></td>
                                                    <td width='5'><%= emp.getAnteTitulo()%></td>                                                  
                                                    <td width='5'><%= emp.getTitular()%></td>

                                                    <td width='5'><%= emp.getFecha()%></td>                                             


                                                    <td width='5'><%= emp.getIdRedactor()%></td>                                             
                                                    <td width='5'><%= emp.getIdDiario()%></td>  
                                                    <td width='5'><%= emp.getFuente()%></td>  
                                                    <td> 

                                                        <button type="button" onclick="showModalEdit('<%= emp.getIdNoticia()%>', '<%= emp.getAnteTitulo()%>', '<%= emp.getTitular()%>', '<%= emp.getEntradilla()%>', '<%= emp.getCuerpoNoticia()%>', '<%= emp.getSubtitulo()%>', '<%= emp.getFecha()%>', '<%= emp.getFuente()%>', '<%= emp.getFotografia()%>', '<%= emp.getEpigrafi()%>', '<%= emp.getVideo()%>', '<%= emp.getIdRedactor()%>', '<%= emp.getIdDiario()%>')" class="btn btn-success btn-sm">
                                                            <span Class="glyphicon glyphicon-edit"></span>
                                                        </button>

                                                        <a href="../ServEliminaEmpleado?cod=<%= emp.getIdNoticia()%>">
                                                            <button type="button" class="btn btn-danger btn-sm">
                                                                <span Class="glyphicon glyphicon-trash"></span>
                                                            </button>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%}%> 


                                            </tbody>                                       
                                        </table>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>
                            <!-- /.col -->
                        </div>

                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-2">
                                <td>
                                    <a type="button" class="btn btn-block btn-primary btn-lg" href="../vistas/redaccionnoticia.jsp">Nueva Noticia</a>
                                </td>
                            </div>
                        </div>  
                    </div>


                </section>
                <!-- /.content -->

            </div>

            <jsp:include page="../base/footer.jsp" />
        </div>
        <jsp:include page="../base/scripts.html"  />

        <script>
            $(document).ready(function () {
                var table = $('#example3').DataTable({
                    responsive: true,
                    language: {
                        url: "//cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json"
                    },
                    lengthMenu: [
                        [10, 25, 50, -1],
                        ['10 Filas', '25 Filas', '50 Filas', 'Todos']
                    ],
                });

                new $.fn.dataTable.FixedHeader(table);
            });
        </script>

    </body>
</html>
