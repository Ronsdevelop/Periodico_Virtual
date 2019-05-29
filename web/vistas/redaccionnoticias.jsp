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
                                                    <th>ENTRADILLA</th>
                                                    <th>CUERPO DE NOTICIA</th>
                                                    <th>SUBTITULO</th>
                                                    <th>FECHA</th>
                                                    <th>FUENTE</th>
                                                    <th>FOTOGRAFIA</th>
                                                    <th>EPIGRAFI</th>
                                                    <th>VIDEO</th>
                                                    <th>REDACTOR</th>
                                                    <th>DIARIO</th>
                                                    <th width="70">ACCIONES</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (Noticia emp : NoticiaDAO.ListaNoticias()) {%> 
                                                <tr>
                                                    <td width='5'><%= emp.getIdNoticia()%></td>
                                                    <td width='5'><%= emp.getAnteTitulo()%></td>                                                  
                                                    <td width='5'><%= emp.getTitular()%></td>
                                                    <td width='5'><%= emp.getEntradilla()%></td>
                                                    <td width='5'><%= emp.getCuerpoNoticia()%></td> 
                                                    <td width='5'><%= emp.getSubtitulo()%></td>
                                                    <td width='5'><%= emp.getFecha()%></td>                                             
                                                    <td width='5'><%= emp.getFuente()%></td>                                             
                                                    <td width='5'><%= emp.getFotografia()%></td>                                             
                                                    <td width='5'><%= emp.getEpigrafi()%></td>                                             
                                                    <td width='5'><%= emp.getVideo()%></td>                                             
                                                    <td width='5'><%= emp.getIdRedactor()%></td>                                             
                                                    <td width='5'><%= emp.getIdDiario()%></td>                                             
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
                                    <button type="button" class="btn btn-block btn-primary btn-lg" data-toggle="modal" data-target="#modal-info">Nueva Noticia</button>
                                </td>
                            </div>
                        </div>  
                    </div>
                    <!-- MODAL REGISTRAR -->
                    <div class="modal  fade" id="modal-info">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-primary">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title text-center">REGISTRAR NOTICIA</h4>
                                </div>
                                <form action="#" method="POST">
                                    <div class="modal-body">
                                        <br>
                                        <div class="input-group">

                                            <span class="input-group-addon">ANTE TITULO :</span>
                                            <input type="text" class="form-control textedit" name="anteti" id="nombreEdit" placeholder="Nombres de Empleado"> 

                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">TITULAR</span>
                                            <input type="text" class="form-control textedit" name="titu"  id="apellidoEdit" placeholder="Apellidos de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">ENTRADILLA</span>
                                            <input type="text" class="form-control textedit" name="dir" id="dniEdit" placeholder="Dni de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">CUERPO DE NOTICIA</span>                                         
                                            <textarea name="cuer" class="form-control textedit"  id="usuarioEdit" ></textarea>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">SUBTITULO</span>
                                            <input type="text" class="form-control textedit" name="subt" id="passEdit" placeholder="Password de Empleado"> 
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <span class="input-group-addon">FECHA</span>
                                            <input type="date" class="form-control textedit" name="date" id="emailEdit" placeholder="Email de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">FUENTE</span>
                                            <input type="text" class="form-control textedit" name="fuen" id="fonoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <span class="input-group-addon">FOTOGRAFIA</span>
                                            <input type="file" class="form-control textedit" name="foto" id="fonoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">EPIGRAFI</span>
                                            <input type="text" class="form-control textedit" name="epi" id="fonoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">VIDEO</span>
                                            <input type="url" class="form-control textedit" name="vid" id="fonoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">REDACTOR</span>
                                            <input type="text" class="form-control textedit" name="red" id="fonoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">DIARIO</span>
                                            <input type="text" class="form-control textedit" name="diar" id="fonoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>

                                    </div>
                                    <div class="modal-footer bg-primary">
                                        <button type="submit" name="action"  class="btn btn-success pull-left" value="Add"><i class="fa fa-floppy-o" aria-hidden="true"></i> Guardar </button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i> Cerrar</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!-- FIN MODAL REGISTRAR -->

                    <!-- MODAL EDITAR -->
                    <div class="modal  fade" id="modalEdit">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-green">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title text-center" id="tituloEdit"> </h4>
                                </div>
                                <form action="../ServModificaEmpleado" method="POST">
                                    <div class="modal-body">

                                        <div class="input-group">

                                            <span class="input-group-addon">CODIGO :</span>
                                            <input type="text" class="form-control" name="cod" id="codigoEdit" placeholder="Codigo de Empleado" readonly> 

                                        </div>

                                        <br>
                                        <div class="input-group">

                                            <span class="input-group-addon">ANTE TITULO :</span>
                                            <input type="text" class="form-control textedit" name="anteti" id="antEdit" placeholder="Nombres de Empleado"> 

                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">TITULAR</span>
                                            <input type="text" class="form-control textedit" name="titu"  id="titularEdit" placeholder="Apellidos de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">ENTRADILLA</span>
                                            <input type="text" class="form-control textedit" name="dir" id="entradiEdit" placeholder="Dni de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">CUERPO DE NOTICIA</span>                                         
                                            <textarea name="cuer" class="form-control textedit"  id="cuerpoEdit" ></textarea>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">SUBTITULO</span>
                                            <input type="text" class="form-control textedit" name="subt" id="subEdit" placeholder="Password de Empleado"> 
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <span class="input-group-addon">FECHA</span>
                                            <input type="date" class="form-control textedit" name="date" id="fechaEdit" placeholder="Email de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">FUENTE</span>
                                            <input type="text" class="form-control textedit" name="fuen" id="fuenEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <span class="input-group-addon">FOTOGRAFIA</span>
                                            <input type="image" class="form-control textedit" name="foto" id="fotoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">EPIGRAFI</span>
                                            <input type="text" class="form-control textedit" name="epi" id="epigrEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">VIDEO</span>
                                            <input type="url" class="form-control textedit" name="vid" id="videoEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">REDACTOR</span>
                                            <input type="text" class="form-control textedit" name="red" id="redactEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">DIARIO</span>
                                            <input type="text" class="form-control textedit" name="diar" id="diarioEdit" placeholder="Telefono de Empleado"> 
                                        </div>
                                        <br>

                                    </div>
                                    <div class="modal-footer bg-green">
                                        <button type="submit" name="action"  class="btn btn-primary pull-left" value="Add"><i class="fa fa-floppy-o" aria-hidden="true"></i> Guardar </button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i> Cerrar</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!-- FIN MODAL EDITAR -->

                </section>
                <!-- /.content -->

            </div>

            <jsp:include page="../base/footer.jsp" />
        </div>
        <jsp:include page="../base/scripts.html"  />

        <script>
            function showModalEdit(codigo, antetitulo, titular, entradilla, cuerpo, subtitulo, fecha, fuente, fotografia, epigrafi, video, idreda, iddiario) {
                document.getElementById("codigoEdit").value = codigo;
                document.getElementById("antEdit").value = antetitulo;
                document.getElementById("titularEdit").value = titular;
                document.getElementById("entradiEdit").value = entradilla;
                document.getElementById("cuerpoEdit").value = cuerpo;
                document.getElementById("subEdit").value = subtitulo;
                document.getElementById("fechaEdit").value = fecha;
                document.getElementById("fuenEdit").value = fuente;
                document.getElementById("fotoEdit").value = fotografia;
                document.getElementById("epigrEdit").value = epigrafi;
                document.getElementById("videoEdit").value = video;
                document.getElementById("redactEdit").value = idreda;
                document.getElementById("diarioEdit").value = iddiario;
                document.getElementById("tituloEdit").innerHTML = "EDITAR EL REGITRO DE LA NOTICIA " + codigo;
                $('#modalEdit').modal('show');

            }
        </script>
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
        <!-- <script>
             $(function () {
                 $('#example3').DataTable();
                 $('#example2').DataTable({
                     'paging': true,
                     'lengthChange': false,
                     'searching': false,
                     'ordering': true,
                     'info': true,
                     'autoWidth': false
                 });
             });</script>  -->
    </body>
</html>
