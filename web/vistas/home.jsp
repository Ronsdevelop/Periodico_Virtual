<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>

    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <i class="fa fa-home"></i>  PRINCIPAL

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
                        <li><a href="#">Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">

                    <!-- CONTENIDO DE LA PAGINA -->

                    <div class="row panel_modulos">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-light-blue" style="background-image: url(../Plugins/dist/img/indice.jpg);background-repeat:no-repeat;background-size:100% 100%;background-position:center center;">
                                <div class="inner">
                                    <h3 style="color: transparent">5</h3>../Plugins/dist/img/correo.jpg

                                    <p style="color: transparent">Habitaciones</p>
                                </div>
                                <div class="icon">
                                   
                                </div>
                                <a href="habitaciones.jsp" class="small-box-footer">
                                    Mas info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                    <h3>4</h3>

                                    <p>Reservadas</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-hotel"></i>
                                </div>
                                    <a href="reservas.jsp" class="small-box-footer">
                                    Mas info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow-active">
                                <div class="inner">
                                    <h3>5</h3>

                                    <p>Ocupadas</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-hotel"></i>
                                </div>
                                <a href="checkout.jsp" class="small-box-footer">
                                    Mas info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
                                <div class="inner">
                                    <h3>6</h3>

                                    <p>Disponibles</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-hotel"></i>
                                </div>
                                <a href="#" class="small-box-footer">
                                    Mas info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>



                    </div>



                    <div class="row">
                        <div class="col-md-12">
                            <div class="box">
                                <h2 class="container-fluid bg-blue-active text-white text-center mh-50">

                                    LISTA DE HABITACIONES OCUPADAS
                                </h2>

                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example3" class="table table-bordered table-striped" >
                                        <thead>
                                            <tr class="bg-yellow-active" border="1">
                                                <th width="20">#</th>
                                                <th>Cliente </th>
                                                <th width="170">Nro Documento</th>
                                                <th width="70">Habitacion</th>
                                                <th width="120">Tipo</th>
                                                <th width="80">F. Ingreso</th>
                                                <th width="80">H. Ingreso</th>                                              

                                            </tr>
                                        </thead>
                                        <tbody>
                                      
                                            <tr>
                                                <td>JFJHFG</td>
                                                <td>JDFHGKJHSFD</td>
                                                <td>SJFDHGKSFD</td>
                                                <td>SJHJK</td>
                                                <td>JSDFHJK</td>
                                                <td>JSFHK</td>
                                                <td>IHJFHJKSDF</td>
                                            </tr>
                                        

                                        </tbody>                                       
                                    </table>
                                </div>
                                <!-- ./box-body -->

                                <!-- /.box-footer -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>

                    <!--GRAFICA COMPRAS-->
                    <div class="row">

                        <div class="col-lg-12 col-xs-12">

                            <div class="box">

                                <div class="box-body">
                               

                                    <h2 class="bg-primary text-white col-lg-12 text-center">RESUMEN DE VENTAS DEL AÑO 2019</h2>
                                    <!--GRAFICA                           

                                    <div id="container" style="min-width: 310px; height: 500px; max-width: 600px; margin: 0 auto"></div> -->
                                    <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>


                                </div><!--fin box-body-->
                            </div><!--fin box-->
                        </div><!--col-sm-->




                    </div><!--fin row-->


                </section>
            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />

        <script>


            Highcharts.chart('container', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'RESUMEN DE VENTAS POR MESES '
                },
                tooltip: {
                    pointFormat: '{series.name}: {point.y} (<b>{point.percentage:.1f}%</b>)'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true
                    }
                },
                series: [{
                        name: 'Ventas',
                        colorByPoint: true,
                        data: [
            

                        ]
                    }],
                exporting: {
                    enabled: false
                }


            });
        </script>




        <script>
            $(document).ready(function () {
                var table = $('#example3').DataTable({
                    responsive: true,
                    searching: false,
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


        <!--
        <script>        
          
            $(function () {
                $('#example1').DataTable()
                $('#example2').DataTable({
                    'paging': true,
                    'lengthChange': false,
                    'searching': false,
                    'ordering': true,
                    'info': true,
                    'autoWidth': false
                })
            })</script>-->

    </body>
</html>

