
<%@page import="MODEL.Redactor"%>
<%@page import="DAO.RedactoresDAO"%>

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
                        REDACTORES
                        <small>Lista Redactores</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
                        <li><a href="#">Redactores</a></li>
                        <li class="active">Lista Redactores</li>
                    </ol>
                </section>


                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">


                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Vista General de los Redactores </h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">
                                        <table  id="example3" class="table table-bordered table-striped">
                                            <thead>
                                                <tr class="bg-primary" border="1">

                                                    <th>CODIGO</th>
                                                    <th>NOMBRE</th>                                            
                                                    <th>APELLIDO</th>
                                                    <th>DIRECCION</th>
                                                    <th>USUARIO</th>
                                                    <th>PASSWORD</th>
                                                    <th>EMAIL</th>
                                                    <th>TELEFONO</th>
                                                    <th width="70">ACCIONES</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (Redactor emp : RedactoresDAO.ListaRedactores()) {%> 
                                                <tr>
                                                    <td width='5'><%= emp.getIdRedactor()%></td>
                                                    <td width='5'><%= emp.getNombres()%></td>                                                  
                                                    <td width='5'><%= emp.getApellidos()%></td>
                                                    <td width='5'><%= emp.getDireccion()%></td>
                                                    <td width='5'><%= emp.getUser()%></td> 
                                                    <td width='5'><%= emp.getPass()%></td>
                                                    <td width='5'><%= emp.getEmail()%></td>                                             
                                                    <td width='5'><%= emp.getFono() %></td>                                             
                                                    <td> 

                                                        <button type="button" onclick="showModalEdit('<%= emp.getIdRedactor() %>', '<%= emp.getNombres()%>','<%= emp.getApellidos()%>', '<%= emp.getDireccion() %>', '<%= emp.getUser() %>', '<%= emp.getPass() %>',  '<%= emp.getEmail()%>', '<%= emp.getFono()%>')" class="btn btn-success btn-sm">
                                                            <span Class="glyphicon glyphicon-edit"></span>
                                                        </button>

                                                        <a href="../ServEliminaEmpleado?cod=<%= emp.getIdRedactor() %>">
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
                                    <button type="button" class="btn btn-block btn-primary btn-lg" data-toggle="modal" data-target="#modal-info">Nuevo Redactor</button>
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
                                    <h4 class="modal-title text-center">REGISTRAR REDACTORES</h4>
                                </div>
                                <form action="#" method="POST">
                                    <div class="modal-body">

                                        <div class="input-group">

                                            <span class="input-group-addon">Nombres</span>
                                            <input type="text" class="form-control" name="nom" placeholder="Nombres de Redactor" required onKeyUp="this.value = this.value.toUpperCase();" > 

                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Apellidos</span>
                                            <input type="text" class="form-control" name="ape" placeholder="Apellidos de Redactor" onKeyUp="this.value = this.value.toUpperCase();"  required> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Direcciion</span>
                                            <input type="text" class="form-control" name="dir"  placeholder="Direccion del Redactor" required> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Usuario</span>
                                            <input type="text" class="form-control textedit" name="usu"  placeholder="Uusuario de Redactor" required> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Password</span>
                                            <input type="password" class="form-control textedit" name="pas" placeholder="Password de Redactor" required> 
                                        </div>
                                        <br>
                                         <div class="input-group">
                                            <span class="input-group-addon">Email</span>
                                            <input type="text" class="form-control mail" name="ema"  placeholder="Email de Redactor" onKeyUp="this.value = this.value.toLowerCase();" > 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Telefono</span>
                                            <input type="text" class="form-control" name="tel" placeholder="Telefono de Redactor"> 
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

                                            <span class="input-group-addon">Codigo :</span>
                                            <input type="text" class="form-control" name="cod" id="codigoEdit" placeholder="Codigo de Empleado" readonly> 

                                        </div>
                                     
                                        <br>
                                        <div class="input-group">

                                            <span class="input-group-addon">Nombres :</span>
                                            <input type="text" class="form-control textedit" name="nom" id="nombreEdit" placeholder="Nombres de Empleado"> 

                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Apellidos</span>
                                            <input type="text" class="form-control textedit" name="ape"  id="apellidoEdit" placeholder="Apellidos de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Direccion</span>
                                            <input type="text" class="form-control textedit" name="dir" id="dniEdit" placeholder="Dni de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Usuario</span>
                                            <input type="text" class="form-control textedit" name="usu" id="usuarioEdit" placeholder="Uusuario de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Password</span>
                                            <input type="password" class="form-control textedit" name="pas" id="passEdit" placeholder="Password de Empleado"> 
                                        </div>
                                        <br>
                                        
                                        <div class="input-group">
                                            <span class="input-group-addon">Email</span>
                                            <input type="text" class="form-control textedit" name="ema" id="emailEdit" placeholder="Email de Empleado"> 
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">Telefono</span>
                                            <input type="text" class="form-control textedit" name="tel" id="fonoEdit" placeholder="Telefono de Empleado"> 
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
            function showModalEdit(codigo, nombre, apellido, direccion, usuario, pass,email, fono) {
                document.getElementById("codigoEdit").value = codigo;               
                document.getElementById("nombreEdit").value = nombre;
                document.getElementById("apellidoEdit").value = apellido;
                document.getElementById("dniEdit").value = direccion ;
                document.getElementById("usuarioEdit").value = usuario;
                document.getElementById("passEdit").value = pass;
                document.getElementById("emailEdit").value = email;
                document.getElementById("fonoEdit").value = fono;              
                document.getElementById("tituloEdit").innerHTML = "EDITAR REGISTRO DE REDACTOR " + codigo;
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
