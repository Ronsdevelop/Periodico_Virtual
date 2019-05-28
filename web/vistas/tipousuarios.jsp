<%@page import="MODEL.TipoUsuarios"%>
<%@page import="MODEL.Usuario"%>

<%@page import="DAO.TipouserDAO"%>

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
                        TIPO USUARIOS
                        <small>Lista Tipo User</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#breadcrumb"><i class="fa fa-dashboard"></i> Inicio</a></li>
                        <li><a href="#">Tipo Usuarios</a></li>
                        <li class="active">Lista Tipo Empleados</li>
                    </ol>
                </section>


                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">


                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Vista General de Tipo Usuarios</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">
                                        <table id="example3" class="table table-bordered table-striped">
                                            <thead>
                                                <tr class="bg-primary" border="1">
                                                    <th>CODIGO</th>
                                                    <th>TIPO USUARIOS</th>
                                                    <th>DESCRIPCION</th>
                                                    <th>OPERACIONES</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (TipoUsuarios temp : TipouserDAO.ListaTiposUser()) {%> 
                                                <tr>
                                                    <td width='5'><%= temp.getIdtipUser()%></td>
                                                    <td width='5'><%= temp.getTipoUser()%></td>
                                                    <td width='5'><%= temp.getDescripcion()%></td>

                                                    <td> 

                                                        <button type="button"  onclick="showModalEdit('<%= temp.getIdtipUser()%>', '<%= temp.getTipoUser()%>', '<%= temp.getDescripcion()%>')" class="btn btn-success btn-sm">
                                                            <span Class="glyphicon glyphicon-edit"></span>
                                                        </button>

                                                        <a href="../ServEliminaTipo?cod=<%= temp.getIdtipUser()%>">
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
                                    <button type="button" class="btn btn-block btn-primary btn-lg" data-toggle="modal" data-target="#modal-info">NUEVO</button>
                                </td>
                            </div>
                        </div>  
                    </div>

                    <!-- MODAL REGISTRAR -->

                    <div class="modal fade" id="modal-info">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-primary">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title text-center">Registrar Tipo Redactor</h4>
                                </div>
                                <form action="#" method="POST">
                                    <div class="modal-body">

                                        <div class="input-group">
                                            <span class="input-group-addon">Tipo Redactor :</span>
                                            <input type="text" class="form-control" name="tip" placeholder="Tipo Redactor" required> 

                                        </div>
                                        <br>

                                        <div class="input-group">
                                            <span class="input-group-addon">Descripcion:</span>
                                            <input type="text" class="form-control" name="tip" placeholder="Descripcion" required> 

                                        </div>



                                    </div>
                                    <div class="modal-footer bg-primary" >
                                        <button type="submit" name="action" id="#" class="btn btn-success pull-left" value="Add"><i class="fa fa-floppy-o" aria-hidden="true"></i> Guardar </button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i> Cerrar</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!-- MODAL EDITAR -->
                    <div class="modal fade" id="modalEdit">
                        <div class="modal-dialog">
                            <form action="#" method="POST">
                                <div class="modal-content">

                                    <div class="modal-header bg-green ">
                                        <h4 class="modal-title text-center" id="tituloEdit"></h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="input-group">
                                            <span class="input-group-addon">Codigo</span>
                                            <input type="text" class="form-control" name="cod" id="codigoEdit" readonly="readonly" placeholder="Codigo">
                                        </div>
                                        <br>                                        
                                        <div class="input-group">
                                            <span class="input-group-addon">Tipo Empleado</span>
                                            <input type="text" class="form-control" name="tipo" id="nombreEdit" placeholder="Tipo Redactor">
                                        </div>
                                        <br>                                        
                                        <div class="input-group">
                                            <span class="input-group-addon">Descripcion</span>
                                            <input type="text" class="form-control" name="des" id="descEdit" placeholder="Descripcion">
                                        </div>
                                    </div>

                                    <div class="modal-footer bg-green" >
                                        <button type="submit" name="action" id="#" class="btn btn-primary pull-left" value="Add"><i class="fa fa-floppy-o" aria-hidden="true"></i> Guardar </button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i> Cerrar</button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>


                    <!-- /.row -->
                </section>
                <!-- /.content -->

            </div>
            <jsp:include page="../base/footer.jsp" />
        </div>
        <jsp:include page="../base/scripts.html"  />

        <script>
            function showModalEdit(clave, nombre, desc) {
                document.getElementById("codigoEdit").value = clave;
                document.getElementById("nombreEdit").value = nombre;
                document.getElementById("descEdit").value = desc;
                
                document.getElementById("tituloEdit").innerHTML = "EDITAR REGISTRO " + clave;
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
